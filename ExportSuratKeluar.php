<?php 
include 'include/config.php';
?>

<table border="1">
    <tr>
        <th>ID Surat</th>
        <th>Nomor Agenda</th>
        <th>Tujuan</th>
        <th>No Surat</th>
        <th>Isi</th>
        <th>Tanggal Surat</th>
        <th>Tanggal Catat</th>
        <th>File</th>
        <th>Keterangan</th>
        <th>ID User</th>
    </tr>
    <?php
    $koneksi = mysqli_connect('localhost', 'root', '', 'arsipsurat');
    $hasil  = mysqli_query($koneksi, "SELECT * FROM tbl_surat_keluar") or die(mysqli_error($koneksi));
    while($d = mysqli_fetch_array($hasil)):
    ?>
    <tr>
        <td><?php echo $d['id_surat']; ?></td>
        <td><?php echo $d['no_agenda']; ?></td>
        <td><?php echo $d['tujuan']; ?></td>
        <td><?php echo $d['no_surat']; ?></td>
        <td><?php echo $d['isi']; ?></td>
        <td><?php echo $d['tgl_surat']; ?></td>
        <td><?php echo $d['tgl_catat']; ?></td>
        <td><?php echo $d['file']; ?></td>
        <td><?php echo $d['keterangan']; ?></td>
        <td><?php echo $d['id_user']; ?></td>
    </tr>
    <?php endwhile; ?>
</table>