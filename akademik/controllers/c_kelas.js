var mnu       = 'kelas';
var mnu2      = 'departemen';
var mnu3      = 'tahunajaran';
var mnu4      = 'tingkat';

var dir       = 'models/m_'+mnu+'.php';
var dir2      = 'models/m_'+mnu2+'.php';
var dir3      = 'models/m_'+mnu3+'.php';
var dir4      = 'models/m_'+mnu4+'.php';
var contentFR = '';

// main function ---
    $(document).ready(function(){
        contentFR += '<div style="overflow:scroll;height:500px;"  class="">'
                         + '<form autocomplete="off" onsubmit="simpan();return false;" id="'+mnu+'FR">' 
                        +'<input id="idformH" type="hidden">' 
                        
                        +'<label>Departemen</label>'
                        +'<div class="input-control text">'
                            +'<input type="hidden" name="departemenH" id="departemenH">'
                            +'<input disabled type="text" name="departemenTB" id="departemenTB">'
                            +'<button class="btn-clear"></button>'
                        +'</div>'
                        
                        +'<label>Tahun Ajaran</label>'
                        +'<div class="input-control text">'
                            +'<input type="hidden" name="tahunajaranH" id="tahunajaranH">'
                            +'<input disabled type="text" name="tahunajaranTB" id="tahunajaranTB">'
                            +'<button class="btn-clear"></button>'
                        +'</div>'
                        
                        +'<label>Tingkat</label>'
                        +'<div class="input-control text">'
                            +'<input type="hidden" name="tingkatH" id="tingkatH">'
                            +'<input disabled placeholder="tingkat" required type="text" name="tingkatTB" id="tingkatTB">'
                            +'<button class="btn-clear"></button>'
                        +'</div>'
                        +'<div class="input-control text">'
                            // +'<input enabled="enabled" name="lokasiTB" id="lokasiTB" '
                            +'<input placeholder="kode/nama pegawai" id="guruTB">'
                            +'<input  type="hidden" name="guruH" id="guruH" >'
                            +'<button class="btn-clear"></button>'
                        +'</div>'
                        +'<legend>nip</legend>'
                        +'<div class="input-control text">'
                            +'<input disabled="disabled" placeholder="kode" id="nipTB">'
                            +'<button class="btn-clear"></button>'
                        +'</div>'
                        +'<legend>nama</legend>'
                        +'<div class="input-control text">'
                            +'<input disabled="disabled" placeholder="nama wali" id="waliTB">'
                            +'<button class="btn-clear"></button>'
                        +'</div>'
                        
                        +'<label>Kapasitas</label>'
                        +'<div class="input-control text">'
                            +'<input class="span1" placeholder="kapasitas" required type="text" name="kapasitasTB" id="kapasitasTB">'
                            +'<button class="btn-clear"></button> siswa'
                        +'</div>'

                        +'<label>Kelas</label>'
                        +'<div class="input-control text">'
                            +'<input class="span2" placeholder="kelas" required type="text" name="kelasTB" id="kelasTB">'
                            +'<button class="btn-clear"></button>'
                        +'</div>'

                       
                        // oninvalid="this.setCustomValidity(\'isi dulu gan\');"
                        +'<label>Keterangan</label>'
                        +'<div class="input-control textarea">'
                            +'<textarea placeholder="keterangan" name="keteranganTB" id="keteranganTB"></textarea>'
                        +'</div>'
                        
                        +'<div class="form-actions">' 
                            +'<button class="button primary">simpan</button>&nbsp;'
                            +'<button class="button" type="button" onclick="$.Dialog.close()">Batal</button> '
                        +'</div>'
                    +'</form>';
                    +'</div>'

        // combo departemen
        cmbdepartemen('');
        // cmbdepartemen(false,'');

        //add form
        $("#tambahBC").on('click', function(){
            viewFR('');
        });

        //search action
        $('#departemenS').on('change',function(){
            cmbtahunajaran($(this).val());
        });$('#tahunajaranS').on('change',function (){
            viewTB('');
        });$('#tingkatS').on('change',function (){
            viewTB(''); 
        })

        // search button
        // $('#cariBC').on('click',function(){
        //     $('#cariTR').toggle('slow');
        //     $('#kelasS').val('');
        //     $('#waliS').val('');
        // });

        // combogrid
        // $("#txtJasa").on('keyup', function(e){
        //     var key = e.charCode ? e.charCode : e.keyCode ? e.keyCode : 0;
        //     var keyCode = $.ui.keyCode;
        //     if(key != keyCode.ENTER && key != keyCode.LEFT && key != keyCode.RIGHT && key != keyCode.DOWN) {
        //         $('#txtKodeJasa').val('');
        //         $('#txtKodeBBaku').val('');
        //         $('#txtNamaBBaku').val('');
        //     }
        // });

        // $( "#txtJasa" ).combogrid({

    }); 
// end of save process ---

// combo departemen ---
    function cmbdepartemen(dep){
        $.ajax({
            url:dir2,
            data:'aksi=cmbdepartemen',
            dataType:'json',
            type:'post',
            success:function(dt){
                var out='';
                if(dt.status!='sukses'){
                    out+='<option value="">'+dt.status+'</option>';
                }else{
                    $.each(dt.departemen, function(id,item){
                        out+='<option value="'+item.replid+'">'+item.nama+'</option>';
                    });
                }
                $('#departemenS').html(out);
                cmbtahunajaran(dt.departemen[0].replid);
            }
        });
    }
//end of combo departemen ---

// combo tahunajaran ---
    function cmbtahunajaran(dep){
        $.ajax({
            url:dir3,
            data:'aksi=cmbtahunajaran&departemen='+dep,
            dataType:'json',
            type:'post',
            success:function(dt){
                var out='';
                if(dt.status!='sukses'){
                    out+='<option value="">'+dt.status+'</option>';
                }else{
                    $.each(dt.tahunajaran, function(id,item){
                        if(item.aktif=='1'){
                            out+='<option selected="selected" value="'+item.replid+'">'+item.tahunajaran+' (aktif)</option>';
                        }else{
                            out+='<option value="'+item.replid+'">'+item.tahunajaran+'</option>';
                        }
                    });
                }$('#tahunajaranS').html(out);
                cmbtingkat(dt.tahunajaran[0].replid);
            }
        });
    }
//end of combo tahunajaran ---

// combo tingkat ---
    function cmbtingkat(thn){
        $.ajax({
            url:dir4,
            data:'aksi=cmbtingkat&tahunajaran='+thn,
            dataType:'json',
            type:'post',
            success:function(dt){
                var out='';
                // alert(dt.status);return false;
                if(dt.status!='sukses'){
                    out+='<option value="">'+dt.status+'</option>';
                }else{
                    $.each(dt.tingkat, function(id,item){
                        if(item.aktif=='1'){
                            out+='<option selected="selected" value="'+item.replid+'">'+item.tingkat+' (aktif)</option>';
                        }else{
                            out+='<option value="'+item.replid+'">'+item.tingkat+'</option>';
                        }
                    });
                }$('#tingkatS').html(out);
                viewTB(); 
            }
        });
    }
//end of combo tingkat ---

//save process ---
    function simpan(){
        // var urlx ='&aksi=simpan&departemen='+$('#departemenS').val();
        var urlx ='&aksi=simpan';
        // edit mode
        if($('#idformH').val()!=''){
            urlx += '&replid='+$('#idformH').val();
        }
        $.ajax({
            url:dir,
            cache:false,
            type:'post',
            dataType:'json',
            data:$('form').serialize()+urlx,
            success:function(dt){
                if(dt.status!='sukses'){
                    cont = 'Gagal menyimpan data';
                    clr  = 'red';
                }else{
                    $.Dialog.close();
                    kosongkan();
                    viewTB($('#departemenS').val());
                    cont = 'Berhasil menyimpan data';
                    clr  = 'green';
                }
                notif(cont,clr);
            }
        });
    }
//end of save process ---

// view table ---
    function viewTB(){
        var aksi ='aksi=tampil';
        var cari =  '&departemenS='+$('#departemenS').val()
                    +'&tahunajaranS='+$('#tahunajaranS').val()
                    +'&tingkatS='+$('#tingkatS').val();
        $.ajax({
            url : dir,
            type: 'post',
            data: aksi+cari,
            beforeSend:function(){
                $('#tbody').html('<tr><td align="center" colspan="7"><img src="img/w8loader.gif"></td></tr></center>');
            },success:function(dt){
                setTimeout(function(){
                    $('#tbody').html(dt).fadeIn();
                },1000);
            }
        });
    }
// end of view table ---

// form ---
    function viewFR(id){
  var tkt = $('#tingkatS').val();
        $.Dialog({
            shadow:true,
            overlay:true,
            draggable:true,
            height:'auto',
            width:'35%',
            padding:20,
            onShow: function(){
                var titlex;
                // form :: departemen (disabled field) -----------------------------
                    $.ajax({
                        url:dir2,
                        data:'aksi=cmb'+mnu2+'&replid='+$('#departemenS').val(),
                        type:'post',
                        dataType:'json',
                        success:function(dt){
                            // titlex+='';
                            $('#departemenH').val($('#departemenS').val());
                            $('#tahunajaranH').val($('#tahunajaranS').val());
                            $('#tingkatH').val($('#tingkatS').val());
                            var out;
                            if(dt.status!='sukses'){
                                out=dt.status;
                            }else{
                                out=dt.departemen[0].nama;
                            }$('#departemenTB').val(out);
                  
                        // form :: tahun ajaran (disabled field) --------------
                            $.ajax({
                                url:dir3,
                                // data:'aksi=cmbtahunajaran&departemen='+$('#departemenS').val()+'&replid='+$('#tahunajaranS').val(),
                                data:'aksi=cmbtahunajaran&replid='+$('#tahunajaranS').val(),
                                dataType:'json',
                                type:'post',
                                success:function(dt2){
                                    // alert(titlex+' ok');
                                    var out2;
                                    if(dt.status!='sukses'){
                                        out2=dt2.status;
                                    }else{
                                        out2=dt2.tahunajaran[0].tahunajaran;
                                    }$('#tahunajaranTB').val(out2);
                                    
                                // form :: tingkat (disabled field) --------------
                                    $.ajax({
                                        url:dir4,
                                        data:'aksi=cmbtingkat&replid='+$('#tingkatS').val(),
                                        dataType:'json',
                                        type:'post',
                                        success:function(dt3){
                                            // alert(titlex+' ok');
                                            var out3;
                                            if(dt3.status!='sukses'){
                                                out3=dt3.status;
                                            }else{
                                                out3=dt3.tingkat[0].tingkat;
                                            }$('#tingkatTB').val(out3);
                                            
                                            if (id!='') { // edit mode
                                            // form :: edit :: tampilkan data 
                                                $.ajax({
                                                    url:dir,
                                                    data:'aksi=ambiledit&replid='+id,
                                                    type:'post',
                                                    dataType:'json',
                                                    success:function(dt3){
                                                        $('#idformH').val(id);
                                                        $('#guruH').val(dt3.wali); /*epiii*/
                                                        $('#kelasTB').val(dt3.kelas);
                                                        $('#kapasitasTB').val(dt3.kapasitas);
                                                        $('#waliTB').val(dt3.nama);
                                                        $('#nipTB').val(dt3.nip);
                                                        $('#keteranganTB').val(dt3.keterangan);
                                                    }
                                                });
                                            // end of form :: edit :: tampilkan data 
                                                // titlex='<span class="icon-pencil"></span> Ubah ';
                                                titlex+='<span class="icon-pencil"></span> Ubah ';
                                            }else{ //add mode
                                                // alert('judul ='+titlex);
                                                titlex+='<span class="icon-plus-2"></span> Tambah ';
                                                // titlex='<span class="icon-plus-2"></span> Tambah ';
                                            }
                                        }
                                    });

                                }
                            });
                            // alert(titlex);
                        //end of  form :: tahun ajaran (disabled field) --------------
                        }
                    });
                //end of form :: departemen (disabled field) -----------------------------
                $.Dialog.title(titlex+' '+mnu);
                $.Dialog.content(contentFR);
            }
        });
        $("#guruTB").combogrid({
            debug:true,
            width:'400px',
            colModel: [{
                    'align':'left',
                    'columnName':'nip',
                    'hide':true,
                    'width':'55',
                    // 'width':'8',
                    'label':'kode'
                },{   
                    'columnName':'wali',
                    'width':'40',
                    'label':'Barang'
                }],
            url: dir+'?aksi=autocomp&tingkat='+tkt,
            // url: dir+'?aksi=autocomp&lokasi='+lok+'&barang='+barangArr(),
            // $('#barangTB').combogrid( "option", "url", dir+'?aksi=autocomp&lokasi='+$('#lokasiTB').val() );
            select: function( event, ui ) {
                $('#guruH').val(ui.item.replid);
                $('#nipTB').val(ui.item.nip);
                $('#waliTB').val(ui.item.wali);
                // barangAdd(ui.item.replid,ui.item.kode,ui.item.nama);
                $('#guruTB').combogrid( "option", "url", dir+'?aksi=autocomp&tingkat='+$('#tingkatS').val() );
                return false;
            }
        });
    }
// end of form ---

//paging ---
     function pagination(page,aksix){
        var datax = 'starting='+page+'&aksi='+aksix;
         var cari = '&departemenS='+$('#departemenS').val()
                    +'&tahunajaranS='+$('#tahunajaranS').val()
                    +'&tingkatS='+$('#tingkatS').val();
        $.ajax({
            url:dir,
            type:"post",
            data: datax+cari,
            beforeSend:function(){
                $('#tbody').html('<tr><td align="center" colspan="7"><img src="img/w8loader.gif"></td></tr></center>');
            },success:function(dt){
                setTimeout(function(){
                    $('#tbody').html(dt).fadeIn();
                },1000);
            }
        });
    }   
//end of paging ---
    
//del process ---
    function del(id){
        if(confirm('melanjutkan untuk menghapus data?'))
        $.ajax({
            url:dir,
            type:'post',
            data:'aksi=hapus&replid='+id,
            dataType:'json',
            success:function(dt){
                var cont,clr;
                if(dt.status!='sukses'){
                    cont = '..Gagal Menghapus '+dt.terhapus+' ..';
                    clr  ='red';
                }else{
                    viewTB($('#departemenS').val());
                    cont = '..Berhasil Menghapus '+dt.terhapus+' ..';
                    clr  ='green';
                }
                notif(cont,clr);
            }
        });
    }
//end of del process ---
    
// notifikasi
function notif(cont,clr) {
    var not = $.Notify({
        caption : "<b>Notifikasi</b>",
        content : cont,
        timeout : 3000,
        style :{
            background: clr,
            color:'white'
        },
    });
}
// end of notifikasi

//reset form ---
    function kosongkan(){
        $('#idformTB').val('');
        $('#tingkatTB').val('');
        $('#keteranganTB').val('');
    }
//end of reset form ---

//aktifkan process ---
    // function aktifkan(id){
    // 	var th  = $('#'+mnu+'TD_'+id).html();
    // 	var dep = $('#'+mnu2+'S').val();
    // 	//alert('d '+dep);
    // 	//return false;
    //     if(confirm(' mengaktifkan "'+th+'"" ?'))
    //     $.ajax({
    //         url:dir,
    //         type:'post',
    //         data:'aksi=aktifkan&replid='+id+'&departemen='+dep,
    //         dataType:'json',
    //         success:function(dt){
    //             var cont,clr;
    //             if(dt.status!='sukses'){
    //                 cont = '..Gagal Mengaktifkan '+th+' ..';
    //                 clr  ='red';
    //             }else{
    //                 viewTB($('#departemenS').val());
    //                 cont = '..Berhasil Mengaktifkan '+th+' ..';
    //                 clr  ='green';
    //             }notif(cont,clr);
    //         }
    //     });
    // }
//end of aktifkan process ---

    // ---------------------- //
    // -- created by rovi -- //
    // ---------------------- //