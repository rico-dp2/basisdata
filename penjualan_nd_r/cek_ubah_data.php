<?php
include 'connection.php';

if (isset($_POST["ubah"])) {
    $id = $_POST["id"];
    $tanggal_transaksi = $_POST["tanggal_transaksi"];
    $nama_item = $_POST["nama_item"];
    $tipe_item = $_POST["tipe_item"];
    $banyak_item = $_POST["banyak_item"];
    $harga = $_POST["harga"];

    $query = "UPDATE pegawai SET
            tanggal_transaksi = '$tanggal_transaksi',
            nama_item = '$nama_item',
            tipe_item = '$tipe_item',
            banyak_item = '$banyak_item',
            harga = '$harga'
            WHERE id=$id";
    mysqli_query($conn, $query);

    if (mysqli_affected_rows($conn) > 0) {
        echo "
        <script>
            alert('Data berhasil diubah');
            document.location.href='dashboard.php';
        </script>
        ";
    } else {
        echo "
        <script>
            alert('Data gagal diubah');
            document.location.href='dashboard.php';
        </script>";
    }
}
?>
