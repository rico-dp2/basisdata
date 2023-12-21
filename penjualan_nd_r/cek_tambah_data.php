<?php 
// session_start();

include 'connection.php';

if(isset($_POST["tambah"])){
    $tanggal_transaksi = htmlspecialchars($_POST["tanggal_transaksi"]);
    $nama_item = htmlspecialchars($_POST["nama_item"]);
    $tipe_item = htmlspecialchars($_POST["tipe_item"]);
    $banyak_item = htmlspecialchars($_POST["banyak_item"]);
    $harga = htmlspecialchars($_POST["harga"]);

    $query = "INSERT INTO pegawai VALUES('','$tanggal_transaksi','$nama_item','$tipe_item','$banyak_item','$harga')";
    mysqli_query($conn, $query);

    if(mysqli_affected_rows($conn)){
        echo "
        <script>
            alert('data berhasil ditambah');
            document.location.href='dashboard.php';
        </script>
        ";
    } else {
        echo "
        <script>
            alert('data gagal ditambah');
            document.location.href='dashboard.php';
        </script>
        ";
    }
    
}

?>