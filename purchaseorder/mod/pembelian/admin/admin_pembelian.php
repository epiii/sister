<?php
if (!defined('AURACMS_admin')) {
    Header("Location: ../index.php");
    exit;
}

if (!cek_login()){
    header("location: index.php");
    exit;
} else{

$JS_SCRIPT.= <<<js
<script language="JavaScript" type="text/javascript">
$(document).ready(function() {
    $('#example').dataTable({
    "iDisplayLength":50});
} );
</script>
js;
$JS_SCRIPT.= <<<js
<script type="text/javascript">
  $(function() {
$( "#tgl" ).datepicker({ dateFormat: "yy-mm-dd" } );
  });
  </script>
js;
$script_include[] = $JS_SCRIPT;
	
//$index_hal=1;	
	$admin  .='<legend>TRANSAKSI PEMBELIAN</legend>';
	$admin  .= '<div class="border2">
<table  width="25%"><tr align="center">
<td>
<a href="admin.php?pilih=pembelian&mod=yes">PEMBELIAN</a>&nbsp;&nbsp;
</td>
<td>
<a href="admin.php?pilih=pembelian&mod=yes&aksi=cetak">CETAK PEMBELIAN</a>&nbsp;&nbsp;
</td>
</tr></table>
</div>';
$admin .='<div class="panel panel-info">';
$admin .= '<script type="text/javascript" language="javascript">
   function GP_popupConfirmMsg(msg) { //v1.0
  document.MM_returnValue = confirm(msg);
}
</script>';
if ($_GET['aksi'] == ''){

if(isset($_POST['submitpembelian'])){
$noinvoice 		= $_POST['noinvoice'];
$nopo 		= $_POST['kodepo'];
$tgl 		= $_POST['tgl'];
$kodesupplier 		= $_SESSION["kodesupplier"];
$notasupplier 		= $_POST["notasupplier"];
$carabayar 		= $_POST['carabayar'];
$total 		= $_POST['total'];
$discount ='0';
$netto = $_POST['total'];
$bayar 		= $_POST['bayar'];
$termin 		= $_POST['termin'];
$user 		= $_POST['user'];
if ($bayar>'0' and $carabayar=='Hutang')  	$error .= "Error:  Pembayaran Harus 0, apabila cara Pembayaran Hutang<br />";
if ($bayar>'0' and $bayar<$netto)  	$error .= "Error:  Pembayaran Harus 0 atau Lebih dari Total Netto <br />";
if ($bayar=='0' and $termin=='0')  	$error .= "Error:  Termin harus diisi karena termasuk Hutang <br />";
if (!$_SESSION["kodesupplier"])  	$error .= "Error:  Kode Supplier harus ada <br />";
if (!$_SESSION["product_id"])  	$error .= "Error:  Kode Barang harus ada <br />";
if ($koneksi_db->sql_numrows($koneksi_db->sql_query("SELECT noinvoice FROM po_pembelian WHERE noinvoice='$noinvoice'")) > 0) $error .= "Error: Nomor Invoice ".$noinvoice." sudah terdaftar<br />";

if ($error){
$admin .= '<div class="error">'.$error.'</div>';
}else{
if($bayar=='0'){
$carabayar ='Hutang';
$tgltermin = tgltermin($tgl,$termin);
$hasil  = mysql_query( "INSERT INTO `po_pembelian` VALUES ('','$noinvoice','$nopo','$tgl','$kodesupplier','$notasupplier','$carabayar','$total','$discount','$netto','0','$netto','$termin','$tgltermin','$user')" );	
}
else{
$hasil  = mysql_query( "INSERT INTO `po_pembelian` VALUES ('','$noinvoice','$nopo','$tgl','$kodesupplier','$notasupplier','$carabayar','$total','$discount','$netto','$bayar','0','0','','$user')" );
}
$idpembelian = mysql_insert_id();
foreach ($_SESSION["product_id"] as $cart_itm)
{
$kode = $cart_itm["kode"];
$jenis = $cart_itm["jenis"];
$jumlah = $cart_itm["jumlah"];
$harga = $cart_itm["harga"];
$subdiscount = $cart_itm["subdiscount"];
$subtotal = $cart_itm["subtotal"];
$hasil  = mysql_query( "INSERT INTO `po_pembeliandetail` VALUES ('','$noinvoice','$nopo','$kode','$jenis','$jumlah','$harga','$subdiscount','$subtotal')" );
updatestokbeli($kode,$jumlah);
alurstok($tgl,'Pembelian',$noinvoice,$kode,$jumlah);
}
if($hasil){
$admin .= '<div class="sukses"><b>Berhasil Menambah Pembelian.</b></div>';
pembeliancetak($noinvoice);
pembelianrefresh();
$notasupplier ='';
}else{
$admin .= '<div class="error"><b>Gagal Menambah Pembelian.</b></div>';
		}		
}	
}

if(isset($_POST['tambahsupplier'])){
$kodesupplier = $_POST['kodesupplier'];
$hasil =  $koneksi_db->sql_query( "SELECT * FROM pos_supplier WHERE kode='$kodesupplier'" );
$data = $koneksi_db->sql_fetchrow($hasil);
$kode=$data['kode'];
if (!$kode)  	$error .= "Error:  Kode Supplier Tidak di Temukan<br />";
if ($error){
$admin .= '<div class="error">'.$error.'</div>';
}else{
$_SESSION['kodesupplier'] = $_POST['kodesupplier'];	
}
}

if(isset($_POST['tambahpo'])){
$_SESSION['kodepo'] = $_POST['kodepo'];
$hasil3 =  $koneksi_db->sql_query("SELECT * FROM po_po WHERE nopo = '$_SESSION[kodepo]'");
$data3 = $koneksi_db->sql_fetchrow($hasil3);
  $kodesupplier = $data3['kodesupplier'];
    $discount = $data3['discount'];
$_SESSION['kodesupplier']=$kodesupplier;	  
$hasil =  $koneksi_db->sql_query( "SELECT * FROM po_podetail WHERE nopo='$_SESSION[kodepo]'" );
while ($data = $koneksi_db->sql_fetchrow($hasil)) { 
$nopo=$data['nopo'];
$kode=$data['kodebarang'];
$jenis=$data['jenis'];
$jumlah=$data['jumlah'];
$harga=$data['harga'];
$subdiscount=$data['subdiscount'];
$subtotal=$data['subtotal'];
$hasil2 =  $koneksi_db->sql_query( "SELECT * FROM sar_katalog WHERE replid='$kode'" );
$data2 = $koneksi_db->sql_fetchrow($hasil2);
$id=$data2['id'];
$ceksisajumbeli=$jumlah-ceksisajumbeli($nopo,$kode);
$subtotal=$ceksisajumbeli*$harga;
$PRODUCTID = array ();
foreach ($_SESSION['product_id'] as $k=>$v){
$PRODUCTID[] = $_SESSION['product_id'][$k]['kode'];
}
if (!in_array ($kode, $PRODUCTID)){
$_SESSION['product_id'][] = array ('id' => $id,'kode' => $kode,'jenis' => $jenis, 'jumlah' => $ceksisajumbeli, 'harga' => $harga, 'subdiscount' => $subdiscount, 'subtotal' => $subtotal);
}else{
foreach ($_SESSION['product_id'] as $k=>$v){
    if($kode == $_SESSION['product_id'][$k]['kode'])
	{
$_SESSION['product_id'][$k]['jumlah'] = $_SESSION['product_id'][$k]['jumlah'];

    }
}
		
}
}

}

if(isset($_POST['deletesupplier'])){
pembelianrefresh();
}

if(isset($_POST['hapusbarang'])){
$kode 		= $_POST['kode'];
foreach ($_SESSION['product_id'] as $k=>$v){
    if($kode == $_SESSION['product_id'][$k]['kode'])
	{
unset($_SESSION['product_id'][$k]);
    }
}
}

/*
if(isset($_POST['editjumlah'])){
$kode 		= $_POST['kode'];
$harga = $_POST['harga'];
$jumlahbeliasli = $_POST['jumlahbeliasli'];
$jumlahbeli = $_POST['jumlahbeli'];
$subdiscount = $_POST['subdiscount'];
if (($jumlahbeliasli<$jumlahbeli)or($jumlahbeli<'0')) $error .= "Error: Jumlah tidak sesuai , silahkan ulangi.<br />";
if ($error){
$admin .= '<div class="error">'.$error.'</div>';
}else{
foreach ($_SESSION['product_id'] as $k=>$v){
    if($kode == $_SESSION['product_id'][$k]['kode'])
	{
$_SESSION['product_id'][$k]['subdiscount']=$subdiscount;
$_SESSION['product_id'][$k]['jumlah']=$jumlahbeli;
$_SESSION['product_id'][$k]['harga']=$harga;
$nilaidiscount=cekdiscount($subdiscount,$harga);
$_SESSION['product_id'][$k]['subtotal'] = $jumlahbeli*($harga-$nilaidiscount);
		}
}
}
}

if(isset($_POST['tambahbarang'])){
$_SESSION['kodesupplier'] = $_POST['kodesupplier'];	
$kodebarang 		= $_POST['kodebarang'];
$jumlah 		= '1';
$hasil =  $koneksi_db->sql_query( "SELECT * FROM sar_katalog WHERE kode='$kodebarang'" );
$data = $koneksi_db->sql_fetchrow($hasil);
$id=$data['id'];
$kode=$data['kode'];
$error 	= '';
if (!$_SESSION['kodesupplier'])  	$error .= "Error:  Kode Supplier Tidak di Temukan<br />";
if (!$kode)  	$error .= "Error:  Kode Barang Tidak di Temukan<br />";
if ($error){
$admin .= '<div class="error">'.$error.'</div>';
}else{

$PRODUCTID = array ();
foreach ($_SESSION['product_id'] as $k=>$v){
$PRODUCTID[] = $_SESSION['product_id'][$k]['kode'];
}
if (!in_array ($kode, $PRODUCTID)){
$subdiscount="0";
$jumlah="1";
$harga="0";
$subdiscount="0";
$subtotal="0";
$_SESSION['product_id'][] = array ('id' => $id,'kode' => $kode,'jumlah' => $jumlah,'harga' => $harga,'subdiscount' => $subdiscount,'subtotal' => $subtotal);
}else{
foreach ($_SESSION['product_id'] as $k=>$v){
    if($kode == $_SESSION['product_id'][$k]['kode'])
	{
	$subdiscount="0";
$_SESSION['product_id'][$k]['jumlah'] = $_SESSION['product_id'][$k]['jumlah']+1;
    }
}
		
}
}
}

*/

if(isset($_POST['simpandetail'])){
foreach ($_SESSION['product_id'] as $k=>$v){
if (($_POST['jumlahbeliasli'][$k]<$_POST['jumlahbeli'][$k])or($_POST['jumlahbeli'][$k]<'0')) $error .= "Error: Jumlah tidak sesuai , silahkan ulangi.<br />";
if ($error){
$admin .= '<div class="error">'.$error.'</div>';
}else{
$_SESSION['product_id'][$k]['subdiscount']=$_POST['subdiscount'][$k];
$_SESSION['product_id'][$k]['jumlah']=$_POST['jumlahbeli'][$k];
$_SESSION['product_id'][$k]['harga']=$_POST['harga'][$k];
$_SESSION['product_id'][$k]['jumlahbeliasli']=$_POST['jumlahbeliasli'][$k];
$nilaidiscount=cekdiscount($_SESSION['product_id'][$k]['subdiscount'],$_SESSION['product_id'][$k]['harga']);
$_SESSION['product_id'][$k]['subtotal'] =$_SESSION['product_id'][$k]['jumlah']*($_SESSION['product_id'][$k]['harga']-$nilaidiscount);
}
}
$style_include[] ='<meta http-equiv="refresh" content="1; url=admin.php?pilih=pembelian&mod=yes" />';
}

if(isset($_POST['batalbeli'])){
pembelianrefresh();
}

if($_SESSION["kodesupplier"]!=''){
$supplier = '
		<td>Nama Supplier</td>
		<td>:</td>
		<td>'.getnamasupplier($_SESSION['kodesupplier']).'</td>';
}else{
$supplier = '
		<td></td>
		<td></td>
		<td></td>';	
	
}


$user = $_SESSION['UserName'];
$tglnow = date("Y-m-d");
$noinvoice = generateinvoice();
$carabayar = $_POST['carabayar'];
$tgl 		= !isset($tgl) ? $tglnow : $tgl;
$kodepo 		= !isset($kodepo) ? $_SESSION['kodepo'] : $kodepo;
$kodesupplier 		= !isset($kodesupplier) ? $_SESSION['kodesupplier'] : $kodesupplier;
$discount 		= !isset($discount) ? '0' : $discount;
$carabayar 		= !isset($carabayar) ? 'Tunai' : $carabayar;
$termin 		= !isset($termin) ? '0' : $termin;
$notasupplier 		= !isset($notasupplier) ? $_POST['notasupplier'] : $notasupplier;
$sel2 = '<select name="carabayar" class="form-control">';
$arr2 = array ('Tunai','Hutang');
foreach ($arr2 as $kk=>$vv){
	if ($carabayar == $vv){
	$sel2 .= '<option value="'.$vv.'" selected="selected">'.$vv.'</option>';
	}else {
	$sel2 .= '<option value="'.$vv.'">'.$vv.'</option>';	
}
}

$sel2 .= '</select>'; 

$admin .= '
<div class="panel-heading"><b>Transaksi Pembelian</b></div>';	
$admin .= '
<form method="post" action="" class="form-inline"id="posts">
<table class="table table-striped table-hover">';
$admin .= '
	<tr>
		<td>Nomor Invoice</td>
		<td>:</td>
		<td><input type="text" name="noinvoice" value="'.$noinvoice.'" class="form-control"></td>
'.$supplier.'
	</tr>';
$admin .= '
	<tr>
		<td>Tanggal</td>
		<td>:</td>
		<td><input type="text" name="tgl" value="'.$tgl.'" class="form-control">&nbsp;'.$wkt.'</td>
		<td>Cara Pembayaran</td>
		<td>:</td>
		<td>'.$sel2.'</td>
	</tr>';
	$admin .= '
	<tr>
		<td>Kode PO</td>
		<td>:</td>
		<td><select class="form-select" name="kodepo"id="combobox2">';
$hasil = $koneksi_db->sql_query( "SELECT * FROM po_po ORDER BY id desc" );
while ($data = $koneksi_db->sql_fetchrow($hasil)) { 
$pilihan = ($data['nopo']==$kodepo)?"selected":'';
	$admin .= '
			<option value="'.$data['nopo'].'"'.$pilihan.'>'.$data['nopo'].' ~ '.getnamasupplier($data['kodesupplier']).'</option>';
}
	$admin .= '</select>&nbsp;<input type="submit" value="Tambah INV" name="tambahpo"class="btn btn-success" >&nbsp;<input type="submit" value="Batal" name="deletesupplier"class="btn btn-danger" >&nbsp;</td>
		<td>Termin</td>
		<td>:</td>
		<td>'.$sel3.'Hari</td>
		</tr>';
$admin .= '
	<tr>
		<td>Nota Supplier</td>
		<td>:</td>
		<td><input type="hidden" id="country_id"  name="kodesupplier" value="'.$kodesupplier.'" ><input type="text" name="notasupplier" value="'.$notasupplier.'"class="form-control" >
				</td>
		<td></td>
		<td></td>
		<td></td>
		</tr>';

$admin .= '	
	<tr><td colspan="5"><div id="Tbayar"></div></td>
		<td>
		</td>
	</tr>
</table>';	
$admin .='</div>';
if(($_SESSION["product_id"])!=""){
$no=1;
$admin .='<div class="panel panel-info">';
$admin .= '
<div class="panel-heading"><b>Detail Pembelian</b></div>';	
$admin .= '
<table class="table table-striped table-hover">';
$admin .= '	
	<tr>
			<th><b>No</b></</th>
		<th><b>Kode</b></</th>
		<th><b>Nama</b></td>
		<th><b>Jumlah</b></</td>
		<th><b>Harga</b></</th>
<th><b>Discount</b></</th>
<th><b>SubDiscount</b></</th>
<th><b>Subtotal</b></</th>
		<th><b>Aksi</b></</th>
	</tr>';
	if ($_GET['editdetail']){
foreach ($_SESSION["product_id"] as $cart_itm)
        {
$array =$no-1;
$nilaidiscount=cekdiscount($cart_itm["subdiscount"],$cart_itm["harga"]);
$admin .= '
<form method="post" action="" class="form-inline"id="posts">';
$admin .= '	
	<tr>
			<td>'.$no.'</td>
			<td>'.$cart_itm["kode"].'</td>
		<td>'.getnamabarang($cart_itm["kode"]).'</td>
		<td><input align="right" type="text" name="jumlahbeli['.$array.']" value="'.$cart_itm["jumlah"].'"class="form-control"></td>
		<td><input align="right" type="text" name="harga['.$array.']" value="'.$cart_itm["harga"].'"class="form-control"></td>
		<td><input align="right" type="text" name="subdiscount['.$array.']" value="'.$cart_itm["subdiscount"].'"class="form-control"></td>
	<td>'.$nilaidiscount.'</td>
		<td>'.$cart_itm["subtotal"].'</td>
		<td>
		<input type="hidden" name="jumlahbeliasli['.$array.']" value="'.$cart_itm["jumlah"].'">
		<input type="hidden" name="kode" value="'.$cart_itm["kode"].'"></td>
	</tr>';
	$total +=$cart_itm["subtotal"];
	$no++;
		}
$admin .= '	
	<tr>
		<td colspan="8" ></td>
		<td ><input type="submit" value="SIMPAN" name="simpandetail"class="btn btn-warning" ></td>
	</tr>';
	$admin .= '
</form>';
	}else{
foreach ($_SESSION["product_id"] as $cart_itm)
        {
$nilaidiscount=cekdiscount($cart_itm["subdiscount"],$cart_itm["harga"]);
$admin .= '	
	<tr>
			<td>'.$no.'</td>
			<td>'.$cart_itm["kode"].'</td>
		<td>'.getnamabarang($cart_itm["kode"]).'</td>
		<td>'.$cart_itm["jumlah"].'</td>
		<td>'.$cart_itm["harga"].'</td>
		<td>'.$cart_itm["subdiscount"].'</td>
	<td>'.$nilaidiscount.'</td>
		<td>'.$cart_itm["subtotal"].'</td>
		<td>
		
		<input type="hidden" name="kode" value="'.$cart_itm["kode"].'"></td>
	</tr>';
	$total +=$cart_itm["subtotal"];
	$no++;
		}
$admin .= '	
	<tr>
		<td colspan="8" ></td>
		<td ><a href="./admin.php?pilih=pembelian&mod=yes&editdetail=ok" class="btn btn-warning">Edit Detail</a></td>
	</tr>';		
		
	}
$_SESSION['totalbeli']=$total;
$admin .= '	
	<tr>
		<td></td>
		<td></td>		
		<td colspan="6" align="right"><b>Total</b></td>
		<td ><input type="text" name="total" id="total"   class="form-control"  value="'.$_SESSION['totalbeli'].'"/></td>
		<td></td>
	</tr>';
$admin .= '	
	<tr>';
$admin .= '<td colspan="7"></td>';
$admin .= '<td align="right"><b>Bayar</b></td>
		<td ><input type="text" id="bayar"  name="bayar" value="'.$_SESSION['totalbeli'].'"class="form-control" ></td>
		<td></td>
	</tr>
	';
	if ($_GET['editdetail']){
$admin .= '
<tr><td colspan="7"></td>
<td></td></tr>';
	}else{
$admin .= '<tr><td colspan="7"></td><td align="right"></td>
		<td><input type="hidden" name="user" value="'.$user.'">
		<input type="submit" value="Batal" name="batalbeli"class="btn btn-danger" >
		<input type="submit" value="Simpan" name="submitpembelian"class="btn btn-success" >
		</td>
		<td></td></tr>';
		}
$admin .= '</table></form>';

	}
$admin .='</div>';	
	}

if ($_GET['aksi'] == 'cetak'){
$kodeinvoice     = $_POST['kodeinvoice'];  
if(isset($_POST['batalcetak'])){
$style_include[] ='<meta http-equiv="refresh" content="1; url=admin.php?pilih=pembelian&mod=yes&aksi=cetak" />';
}
$admin .= '
<div class="panel-heading"><b>Cetak Nota Pembelian</b></div>';	

$admin .= '
<form method="post" action="" class="form-inline"id="posts">
<table class="table table-striped table-hover">';
$admin .= '
	<tr>
		<td>Kode Invoice</td>
		<td>:</td>
		<td><select class="form-select" name="kodeinvoice"id="combobox2">';
$hasil = $koneksi_db->sql_query( "SELECT * FROM po_pembelian ORDER BY id DESC" );
while ($data = $koneksi_db->sql_fetchrow($hasil)) { 
$pilihan = ($data['noinvoice']==$kodeinvoice)?"selected":'';
	$admin .= '
			<option value="'.$data['noinvoice'].'"'.$pilihan.'>'.$data['noinvoice'].' ~ '.getnamasupplier($data['kodesupplier']).' ~ '.$data['total'].'</option>';
}
	$admin .= '</select>&nbsp;<input type="submit" value="Lihat Invoice" name="lihatinvoice"class="btn btn-success" >&nbsp;<input type="submit" value="Batal" name="batalcetak"class="btn btn-danger" >&nbsp;</td>
		<td></td>
		<td></td>
		<td></td>
		</tr>';

$admin .= '</form></table></div>';	
if(isset($_POST['lihatinvoice'])){

$no=1;
$query 		= mysql_query ("SELECT * FROM `po_pembelian` WHERE `noinvoice` like '$kodeinvoice'");
$data 		= mysql_fetch_array($query);
$noinvoice  			= $data['noinvoice'];
$nopo  			= $data['nopo'];
$tgl  			= $data['tgl'];
$kodesupplier  			= $data['kodesupplier'];
$notasupplier  			= $data['notasupplier'];
$carabayar  			= $data['carabayar'];
$total  			= $data['total'];
$discount  			= $data['discount'];
$netto  			= $data['netto'];
$bayar  			= $data['bayar'];
$termin  			= $data['termin'];
	$error 	= '';
		if (!$noinvoice) $error .= "Error: kode Invoice tidak terdaftar , silahkan ulangi.<br />";
	if ($error){
		$admin .= '<div class="error">'.$error.'</div>';}else{
$admin .= '<div class="panel panel-info">
<div class="panel-heading"><b>Transaksi Pembelian</b></div>';
$admin .= '
		<form method="post" action="cetak_notainvoice.php" class="form-inline"id="posts"target="_blank">
<table class="table table-striped table-hover">';
$admin .= '
	<tr>
		<td>Nomor Invoice</td>
		<td>:</td>
		<td>'.$noinvoice.'</td>
		<td><input type="hidden" name="kode" value="'.$noinvoice.'">
		<input type="submit" value="Cetak Nota" name="cetak_notainvoice"class="btn btn-warning" >

		</td>
	</tr>';
$admin .= '
	<tr>
		<td>Nomor PO</td>
		<td>:</td>
		<td>'.($nopo).'</td>
			<td></td>
	</tr>';	
$admin .= '
	<tr>
		<td>Tanggal</td>
		<td>:</td>
		<td>'.tanggalindo($tgl).'</td>
		<td></td>
		</tr>';
$admin .= '
	<tr>
		<td>Supplier</td>
		<td>:</td>
		<td>'.getnamasupplier($kodesupplier).'</td>
			<td></td>
	</tr>';	
if($notasupplier!=''){
	$admin .= '
	<tr>
		<td>Nota Supplier</td>
		<td>:</td>
		<td>'.$notasupplier.'</td>
			<td></td>
	</tr>';	
}
$admin .= '
	<tr>
		<td>Cara Pembayaran</td>
		<td>:</td>
		<td>'.$carabayar.'</td>
			<td></td>
	</tr>';	
if($carabayar=='Hutang'){
$admin .= '
	<tr>
		<td>Termin</td>
		<td>:</td>
		<td>'.$termin.' Hari</td>
			<td></td>
	</tr>';	
	}
$admin .= '</table>		</form></div>';	
$admin .='<div class="panel panel-info">';
$admin .= '
<div class="panel-heading"><b>Detail Pembelian</b></div>';	
$admin .= '
<table class="table table-striped table-hover">';
$admin .= '	
	<tr>
			<th><b>No</b></</th>
		<th><b>Kode</b></</th>
		<th><b>Nama</b></td>
		<th><b>Jumlah</b></</td>
		<th><b>Harga</b></</th>
<th><b>Discount</b></</th>
<th><b>Subtotal</b></</th>
	</tr>';
$hasild = $koneksi_db->sql_query("SELECT * FROM `po_pembeliandetail` WHERE `noinvoice` like '$kodeinvoice'");
while ($datad =  $koneksi_db->sql_fetchrow ($hasild)){
$admin .= '	
	<tr>
			<td>'.$no.'</td>
			<td>'.$datad["kodebarang"].'</td>
		<td>'.getnamabarang($datad["kodebarang"]).'</td>
		<td>'.$datad["jumlah"].'</td>
		<td>'.rupiah_format($datad["harga"]).'</td>
		<td>'.cekdiscountpersen($datad["subdiscount"]).'</td>
		<td>'.rupiah_format($datad["subtotal"]).'</td>
	</tr>';
	$no++;
		}
$admin .= '	
	<tr>		
		<td colspan="6" align="right"><b>Total</b></td>
		<td >'.rupiah_format($total).'</td>
	</tr>';
/*
	$admin .= '	
	<tr>	
		<td colspan="7" align="right"><b>Discount</b></td>
		<td >'.cekdiscountpersen($discount).'</td>
	</tr>';

$admin .= '	<tr>	
		<td colspan="7" align="right"><b>Grand Total</b></td>
		<td >'.rupiah_format($netto).'</td>
	</tr>
	';
*/
	$admin .= '	<tr>	
		<td colspan="6" align="right"><b>Bayar</b></td>
		<td >'.rupiah_format($bayar).'</td>
	</tr>
	';
$admin .= '</table></div>';	
		}
	}
}

}
echo $admin;
?>
