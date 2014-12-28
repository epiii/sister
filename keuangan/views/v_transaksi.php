<!-- <script src="js/metro/metro-button-set.js"></script> -->
<script src="controllers/c_transaksi.js"></script>
<script src="js/metro/metro-hint.js"></script>
<script src="../js/base64.js"></script>

<h4 style="color:white;">Transaksi </h4>
<div id="loadarea"></div>
<input type="hidden" id="id_loginS" value="<?php echo $_SESSION['id_loginS'];?>">
<button class="bg-blue fg-white" style="font-weight:bold;"><i class="icon-plus-2"></i>  Jurnal Umum</button>
<button class="bg-green fg-white" style="font-weight:bold;"><i class="icon-download-2"></i> Pemasukkan</button>
<button class="bg-red fg-white" style="font-weight:bold;"><i class="icon-upload-3"></i> Pengeluaran</button>
<button class="bg-amber orange fg-white" style="font-weight:bold;"><i class="icon-printer"></i> Cetak</button>
<button class="bg-gray orange fg-white" style="font-weight:bold;"><i class="icon-new-tab"></i></button>
    
    <legend class="span7" style="color:white;">
        Tampilkan catatan Transaksi
        <div class="span3 input-control checkbox" >
            <label>
                <input type="checkbox" />
                <span class="check"></span>
                Semua 
            </label>
        </div>
    </legend>
    <div class="row">
        <div class="span7" style="color:white;"> 
            <!-- row 1 -->
            <div class="row">
                <div class="span3 input-control checkbox" >
                    <label>
                        <input type="checkbox" />
                        <span class="check"></span>
                        Jurnal Umum 
                    </label>
                </div>
                <div class="span4 input-control checkbox" >
                    <label>
                        <input type="checkbox" />
                        <span class="check"></span>
                        Transaksi Pemasukkan dari Siswa
                    </label>
                </div>
            </div>
            <!--end of row 1 -->
            <!-- row 1 -->
            <div class="row">
                <div class="span3 input-control checkbox" >
                    <label>
                        <input type="checkbox" />
                        <span class="check"></span>
                        Transaksi Pemasukkan 
                    </label>
                </div>
                <div class="span4 input-control checkbox" >
                    <label>
                        <input type="checkbox" />
                        <span class="check"></span>
                        Transaksi Pemasukkan dari calon Siswa
                    </label>
                </div>
            </div>
            <!--end of row 1 -->
            <!-- row 1 -->
            <div class="row">
                <div class="span3 input-control checkbox" >
                    <label>
                        <input type="checkbox" />
                        <span class="check"></span>
                        Transaksi Pengeluaran 
                    </label>
                </div>
                <div class="span4 input-control checkbox" >
                    <label>
                        <input type="checkbox" />
                        <span class="check"></span>
                        Transaksi Penerimaan Barang
                    </label>
                </div>
            </div>
            <!--end of row 1 -->
        </div>
    </div>
    <div class="input-control text span2" data-role="datepicker" data-date="2013-01-01" data-format="yyyy-mm-dd" data-position="top" data-effect="slide">
        <input type="text">
        <button class="btn-date"></button>
    </div> s/d
    <div class="input-control text span2" data-role="datepicker" data-date="2013-01-01" data-format="yyyy-mm-dd" data-position="top" data-effect="slide">
        <input type="text">
        <button class="btn-date"></button>
    </div> 

<!-- tab -->
    <!-- keterangan :
        - juTAB : jurnal umum
        - bbTAB : buku besar
        - nsTAB : neraca saldo
        - nlTAB : neraca lajur
        - lrTAB : laporan laba/rugi
        - lnTAB : laporan neraca
        - pkbTAB : posisi kas dan bank
        - btTAB : buku tambahan-->
    <div  data-effect="fade" class="tab-control" data-role="tab-control">
        <ul class="tabs">
            <li class="active"><a href="#juTAB">Jurnal Umum </a></li>
            <li><a href="#bbTAB">Buku Besar</a></li>
            <li><a href="#nsTAB">Neraca Saldo</a></li>
            <li><a href="#nlTAB">Neraca Lajur</a></li>
            <li><a href="#lrTAB">Laporan Laba/Rugi</a></li>
            <li><a href="#lnTAB">Laporan Neraca</a></li>
            <li><a href="#pkbTAB">Posisi Kas dan Bank</a></li>
            <li><a href="#btTAB">Buku Tambahan</a></li>
        </ul>
        <div class="frames">
            <div class="frame" id="juTAB">1</div>
            <div class="frame" id="bbTAB">
                Tampilkan Akun : 
                <div class="input-control select span3">
                    <select id="bbS"></select>
                </div>
            </div>
            <div class="frame" id="nsTAB">3</div>
            <div class="frame" id="nlTAB">4</div>
            <div class="frame" id="lrTAB">5</div>
            <div class="frame" id="lnTAB">6</div>
            <div class="frame" id="pkbTAB">7</div>
            <div class="frame" id="btTAB">8</div>
        </div>
    </div>
<!-- end of tab -->

<!-- panel 1 -->
<div title="Transaksi" class="panelx" id="panel1" style="display:none;">
    <div class="input-control select span3">
        <select class="grup_cari" name="g_lokasiS" id="g_lokasiS" data-hint="lokasi" ></select>
    </div>
    <button data-hint="Tambah Data" id="g_tambahBC"><span class="icon-plus-2"></span> </button>
    <button data-hint="Field Pencarian" id="g_cariBC"><span class="icon-search"></span> </button>
    <button data-hint="Cetak" id="g_cetakBC"><span class="icon-printer"></span> </button>

    <table class="table hovered bordered striped">
        <thead>
            <tr style="color:white;"class="info">
                <th class="text-center">Kode </th>
                <th class="text-center">Grup Barang</th>
                <th class="text-left">Jum Unit</th>
                <th class="text-left">Unit Tersedia</th>
                <th class="text-left">Unit Dipinjam</th>
                <th class="text-left">Total Aset</th>
                <th class="text-left">Keterangan</th>
                <th class="text-left">Aksi</th>
            </tr>
            <tr style="display:none;" id="g_cariTR" class="info">
                <th class="text-left"><input placeholder="kode" id="g_kodeS" class="grup_cari" class="span1"></th>
                <th class="text-left"><input placeholder="nama" id="g_namaS" class="grup_cari"></th>
                <th class="text-left"></th>
                <th class="text-left"></th>
                <th class="text-left"></th>
                <th class="text-left"></th>
                <th class="text-left"><input placeholder="keterangan" id="g_keteranganS" class="grup_cari"></th>
                <th class="text-left"></th>
            </tr>
        </thead>

        <tbody id="grup_tbody">
        </tbody>
        <tfoot>
        </tfoot>
    </table>
</div>
<!-- end of panel 1 -->

<!-- panel 2 -->
<div title="Katalog Barang" class="panelx" id="panel2" style="display:none;">
    <button data-hint="kembali" id="k_grupBC"><span class=" icon-arrow-left-2"></span> </button>
    <button data-hint="Tambah Data" id="k_tambahBC"><span class="icon-plus-2"></span> </button>
    <button data-hint="Field Pencarian" id="k_cariBC"><span class="icon-search"></span> </button>
    <button data-hint="Cetak " id="k_cetakBC"><span class="icon-printer"></span> </button>
    
    <div class="grid" style="color:white;">
        <!-- <input type="hidden" id="k_grupH1" name="k_grupH1" > -->
        <input type="hidden" id="k_grupS" class="katalog_cari" >
        <div class="row">
            <div class="span2">Grup Barang : </div>
            <div id="k_grupDV" class="span2"></div>
        </div>
        <div class="row">
            <div class="span2">Lokasi :</div>
            <div id="k_lokasiDV" class="span2"></div>
        </div>
        <div class="row">
            <div class="span2">Total Aset :</div>
            <div id="k_totasetDV" class="span2"></div>
        </div>
    </div>

    <table class="table hovered bordered striped">
        <thead>
            <tr style="color:white;"class="info">
                <th class="text-center">Kode </th>
                <th class="text-center">Nama Barang</th>
                <th class="text-left">Jenis</th>
                <th class="text-left">Jumlah Unit</th>
                <th class="text-left">Asset</th>
                <th class="text-left">Penyusutan per th</th>
                <th class="text-left">Keterangan</th>
                <th class="text-left">Aksi</th>
            </tr>
            <tr style="display:none;" id="k_cariTR" class="info">
                <th class="text-left"><input placeholder="kode" id="k_kodeS"  class="katalog_cari" class="span1"></th>
                <th class="text-left"><input placeholder="nama" id="k_namaS" class="katalog_cari"></th>
                <th class="text-left"></th>
                <th class="text-left"></th>
                <th class="text-left"></th>
                <th class="text-left"></th>
                <th class="text-left"><input placeholder="keterangan" id="k_keteranganS"class="katalog_cari"></th>
                <th class="text-left"></th>
            </tr>
        </thead>

        <tbody id="katalog_tbody">
        </tbody>
        <tfoot>
        </tfoot>
    </table>
</div>
<!-- end of panel 2 -->

<!-- panel 3 -->
<div title="Unit Barang" class="panelx" id="panel3" style="display:none;">
    <button data-hint="kembali ke Katalog" id="b_katalogBC"><span class=" icon-arrow-left-2"></span> </button>
    <button data-hint="Ubah Data" id="b_ubahBC"><span class="icon-pencil"></span> </button>
    <button data-hint="Tambah Data" id="b_tambahBC"><span class="icon-plus-2"></span> </button>
    <button data-hint="Field Pencarian" id="b_cariBC"><span class="icon-search"></span> </button>
    <button data-hint="Cetak" id="b_cetakBC"><span class="icon-printer"></span> </button>

    <input type="hidden"  class="barang_cari" id="b_katalogS">
    <div class="grid" style="color:white;">
         <div class="row">
            <div class="span5">
                <label>Keterangan </label>
                <div class="row">
                    <div class="span2">Nama Barang :</div>
                    <div id="b_katalogDV" class="span2"></div>
                </div>
                <div class="row">
                    <div class="span2">Grup Barang :</div>
                    <div id="b_grupDV" class="span2"></div>
                </div>
                <div class="row">
                    <div class="span2">Lokasi :</div>
                    <div id="b_lokasiDV" class="span2"></div>
                </div>    
                <div class="row">
                    <div class="span2">Jumlah Unit :</div>
                    <div id="b_totbarangDV" class="span2"></div>
                </div>    
                <div class="row">
                    <div class="span2">Total Aset :</div>
                    <div id="b_totasetDV" class="span2"></div>
                </div>    
                <div class="row">
                    <div class="span2">Penyusutan per th :</div>
                    <div id="b_susutDV" class="span2"></div>
                </div>    
            </div>  
            <div class="span5 xoffset1">
                <div class="span5">
                    <label for="">Gambar :</label>
                    <img id="b_photoIMG" src="../img/no_image.jpg" width="200" class="shadow">
                </div>
            </div>  
            <div class="span5">
                <div class="span5">
                    <label for="">Presentase Kondisi :</label>
                    <img src="../images/5.jpg" width="200" class="shadow">
                </div>
            </div>
        </div>
    </div>

    <table class="table hovered bordered striped">
        <thead>
            <tr style="color:white;"class="info">
                <th class="text-center">Kode </th>
                <th class="text-center">Barcode</th>
                <th class="text-left">Tempat</th>
                <th class="text-left">Sumber</th>
                <th class="text-left">Harga</th>
                <th class="text-left">Kondisi</th>
                <th class="text-left">Status</th>
                <th class="text-left">Keterangan</th>
                <th class="text-left">Aksi</th>
            </tr>
            <tr style="display:none;" id="b_cariTR" class="selected">
                <th class="text-left"><input placeholder="kode" id="b_kodeS"class="barang_cari"></th>
                <th class="text-left"><input placeholder="barkode" id="b_barkodeS" class="barang_cari"></th>
                <th class="text-left"></th>
                <th class="text-left">
                    <select class="barang_cari" id="b_sumberS">
                        <option value="">-Semua-</option>
                        <option value="0">Beli</option>
                        <option value="1">Pemberian</option>
                        <option value="2">Membuat Sendiri</option>
                    </select> 
                </th>
                <th class="text-left"><input  class="barang_cari" placeholder="harga" id="b_hargaS"></th>
                <th class="text-left">
                    <select  class="barang_cari"id="b_kondisiS"></select>
                </th>
                <th class="text-left">
                    <select id="b_statusS" class="barang_cari">
                        <option value="">-Semua-</option>
                        <option value="1">Tersedia</option>
                        <option value="2">Dipinjam</option>
                    </select>
                </th>
                <th class="text-left"><input placeholder="keterangan" id="b_keteranganS" class="barang_cari"></th>
                <th class="text-left"></th>
            </tr>
        </thead>
        <tbody id="barang_tbody">
        </tbody>
        <tfoot>
        </tfoot>
    </table>
</div>
<!-- tes lagi ah  -->
<!-- end of panel 3 -->
<!-- 
    // ---------------------- //
    // -- created by rovi  -- //
    // ---------------------- // 
 -->
