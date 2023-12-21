<?php 
session_start();
if(!isset($_SESSION["login"])){
    header("location:login.php");
    exit;
}
include 'connection.php';
$id = $_GET["id"];

$kry = query("SELECT * FROM pegawai WHERE id = $id")[0];

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/simple-icons/6.15.0/simpleicons.svg">
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="myProjects/webProject/icofont/css/icofont.min.css">
    <link rel="stylesheet" href="style.css">
    <title>Home Admin</title>
</head>
<body>
    <header>
       <div class="left_area">
            <h3>PT Jumaku Berjaya Sentosa</h3>  
       </div>

       <div class="right_area">
            <i class="fa-solid fa-bars" id="btn"></i>
       </div>
    </header>

    <div class="sidebar">
        <div class="logo_profile">
            <img src="asset/logo2.png " class="logo" alt="" width="200px" >
        </div>
            
        <div class="menu">
            <p id="admin"><i class="fa-solid fa-user"></i><span>Selamat Datang, Admin</span></p>
            <a href="index_login.php" target="_blank"><i class="fa-solid fa-house"></i><span>Homepage</span></a>
            <a href="dashboard.php"><i class="fa-solid fa-gauge"></i><span>Dashboard</span></a>
            <a href="tambah_data.php"><i class="fa-solid fa-plus"></i><span>Tambah Penjualan</span></a>
            <a href="setting_data.php"><i class="fa-sharp fa-solid fa-gear"></i><span>Atur Data</span></a>
            <a href="logout.php" id="logout"><i class="fa-solid fa-right-from-bracket"></i><span>Logout</span></a>  
        </div> 
    </div>



    <div class="content">

    <form action="cek_ubah_data.php" method="POST" id="tambah">
        <center>
        <h1>Tambah Data </h1>
        <input type="hidden" name="id" id="id" value="<?php echo $kry["id"]; ?>">
        <table width="80%" id="tambah">
            <tr>
                <td><label for="tanggal_transaksi">tanggal transaksi</label></td>
                <td ><input type="date" name="tanggal_transaksi" id="tanggal_transaksi" required value="<?php echo $kry["tanggal_transaksi"]; ?>"></td>
            </tr>
            <tr>
                <td><label for="nama_item">nama item</label></td>
                <td><input type="text" name="nama_item" id="nama_item" required value="<?php echo $kry["nama_item"]; ?>" ></td>
            </tr>
            <tr>
                <td><label for="tipe_item">Tipe Item</label></td>
                <td>
                    <form>
                        <input type="radio" id="jasa" name="tipe_item" required value="<?php echo $kry["tipe_item"]; ?>">
                        <label for="jasa">Jasa</label>
                        <input type="radio" id="item" name="tipe_item" required value="<?php echo $kry["tipe_item"]; ?>">
                        <label for="item">Item</label>
                    </form>
                </td>
            </tr>
            <tr>
                <td><label for="banyak item">banyak item</label></td>
                <td><input type="number" name="banyak_item" id="banyak_item" required value="<?php echo $kry["banyak_item"]; ?>" ></td>
            </tr>
            <tr>
                <td><label for="harga">harga</label></td>
                <td><input type="text" name="harga" id="harga" required value="<?php echo $kry["harga"]; ?>" ></td>
            </tr>
         
    
        </table>

        <button type="submit" name="ubah">Ubah</button>
        </center>
    </form>
    </div>

    <script src="script.js"></script>
</body>
</html>