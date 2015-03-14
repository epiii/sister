<?php
	session_start();
	require_once '../../lib/dbcon.php';
	require_once '../../lib/func.php';
	require_once '../../lib/pagination_class.php';
	require_once '../../lib/tglindo.php';
	$mnu  = 'rekening';
	$tb   = 'keu_'.$mnu;

	if(!isset($_POST['aksi'])){
		$out=json_encode(array('status'=>'invalid_no_post'));		
	}else{
		switch ($_POST['aksi']) {
			// -----------------------------------------------------------------
			case 'tampil':
				$kategorirek = trim($_POST['kategorirekS'])?filter($_POST['kategorirekS']):'';
				$kode        = trim($_POST['kodeS'])?filter($_POST['kodeS']):'';
				$nama        = trim($_POST['namaS'])?filter($_POST['namaS']):'';
				$keterangan  = trim($_POST['keteranganS'])?filter($_POST['keteranganS']):'';
				
				$sql = 'SELECT *
						FROM '.$tb.'
						WHERE 
							kategorirek like "%'.$kategorirek.'%" and
							kode like "%'.$kode.'%" and
							nama like "%'.$nama.'%" and
							keterangan like "%'.$keterangan.'%" 
						ORDER BY 
							kode asc';

				if(isset($_POST['starting'])){ //nilai awal halaman
					$starting=$_POST['starting'];
				}else{
					$starting=0;
				}
				// $menu='tampil';	
				$recpage = 10;//jumlah data per halaman
				$aksi    ='tampil';
				$subaksi ='';
				$obj     = new pagination_class($sql,$starting,$recpage,$aksi, $subaksi);
				$result  =$obj->result;
				#ada data
				$jum	= mysql_num_rows($result);
				$out ='';
				if($jum!=0){	
					$nox 	= $starting+1;
					$curKat = '';
					while($res = mysql_fetch_assoc($result)){	
						// print_r($res);
						if($res['kategorirek']!=$curKat){
							$ss = 'SELECT replid,nama,RPAD(kode,6,0)kode from keu_kategorirek where replid='.$res['kategorirek'];	
							$ee = mysql_query($ss);
							$rr = mysql_fetch_assoc($ee);
							$out.= '<tr>
										<td><b>'.$rr['kode'].'</b></td>
										<td colspan="3"><b>'.$rr['nama'].'</b></td>
									</tr>';
						}else{
							$btn ='<td>
										<button data-hint="ubah"  class="button" onclick="viewFR('.$res['replid'].');">
											<i class="icon-pencil on-left"></i>
										</button>
										<button data-hint="hapus"  class="button" onclick="del('.$res['replid'].');">
											<i class="icon-remove on-left"></i>
									 </td>';
							$out.= '<tr>
										<td class="text-right">'.$res['kode'].'</td>
										<td>'.$res['nama'].'</td>
										<td>'.$res['keterangan'].'</td>
										'.$btn.'
									</tr>';
						}
						$curKat=$res['kategorirek'];
						$nox++;
					}
				}else{ #kosong
					$out.= '<tr align="center">
							<td  colspan=9><span style="color:red;text-align:center;">
							... data tidak ditemukan...</span></td></tr>';
				}
				#link paging
				$out.='<tr class="info"><td colspan="9">'.$obj->anchors.'</td></tr>';
				$out.='<tr class="info"><td colspan="9">'.$obj->total.'</td></tr>';
			break; 
			// view -----------------------------------------------------------------

			// add / edit -----------------------------------------------------------------
			case 'simpan':
				$s 		= $tb.' set kategorirek = "'.filter($_POST['kategorirekTB']).'",
									kode        = "'.filter($_POST['kodeTB']).'",
									nama        = "'.filter($_POST['namaTB']).'",
									keterangan  = "'.filter($_POST['keteranganTB']).'"';
				$s2 	= isset($_POST['replid'])?'UPDATE '.$s.' WHERE replid='.$_POST['replid']:'INSERT INTO '.$s;
				$e 		= mysql_query($s2);
				$stat 	= ($e)?'sukses':'gagal';
				$out 	= json_encode(array('status'=>$stat));
			break;
			// add / edit -----------------------------------------------------------------
			
			// delete -----------------------------------------------------------------
			case 'hapus':
				$d    = mysql_fetch_assoc(mysql_query('SELECT * from '.$tb.' where replid='.$_POST['replid']));
				$s    = 'DELETE from '.$tb.' WHERE replid='.$_POST['replid'];
				$e    = mysql_query($s);
				$stat = ($e)?'sukses':'gagal';
				$out  = json_encode(array('status'=>$stat,'terhapus'=>$d['nama']));
			break;
			// delete -----------------------------------------------------------------

			// ambiledit -----------------------------------------------------------------
			case 'ambiledit':
				$s 	  = ' SELECT 
								kategorirek,
								kode,
								nama,
								keterangan
							from '.$tb.'
							WHERE 
								replid='.$_POST['replid'];
				// print_r($s);exit();
				$e   = mysql_query($s);
				$r   = mysql_fetch_assoc($e);
				$out = json_encode(array(
							'kategorirek' =>$r['kategorirek'],
							'keterangan'  =>$r['keterangan'],
							'kode'        =>$r['kode'],
							'nama'        =>$r['nama']
						));
			break;
			// ambiledit -----------------------------------------------------------------
			
			// cmbkategorirek -----------------------------------------------------------------
			case 'cmbkategorirek':
				$w='';
				if(isset($_POST['replid'])){
					$w='where replid ='.$_POST['replid'];
				}else{
					if(isset($_POST[$mnu])){
						$w='where '.$mnu.'='.$_POST[$mnu];
					}
				}
				
				$s	= ' SELECT *
						from keu_kategorirek
							'.$w.'		
						ORDER  BY 
							kode asc ,
							nama asc';

				$e  = mysql_query($s);
				$n  = mysql_num_rows($e);
				$ar =$dt=array();

				if(!$e){ //error
					$ar = array('status'=>'error'.mysql_error());
				}else{
					if($n=0){ // kosong 
						$ar = array('status'=>'kosong');
					}else{ // ada data
						if(!isset($_POST['replid'])){
							while ($r=mysql_fetch_assoc($e)) {
								$dt[]=$r;
							}
						}else{
							$dt[]=mysql_fetch_assoc($e);
						}$ar = array('status'=>'sukses','kategorirek'=>$dt);
					}
				}$out=json_encode($ar);
			break;
			// cmbdepartemen -----------------------------------------------------------------

		}
	}echo $out;

    // ---------------------- //
    // -- created by rovi  -- //
    // ---------------------- // 
?>