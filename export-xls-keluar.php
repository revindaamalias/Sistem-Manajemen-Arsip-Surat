<?php 
        // nama file
 $filename="Laporan Surat Keluar-".date('Ymd').".xls";

 //header info for browser
 header("Content-Type: application/vnd-ms-excel"); 
    header('Content-Disposition: attachment; filename="' . $filename . '";');
     
    // tambahkan table
    include 'ExportSuratKeluar.php';
?>