<?php 
session_start();
if(!isset($_SESSION["login"])){
    header("location:login.php");
    exit;
}
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
            <h3>Penjualan NDgames dan Ricstore</h3>  
        </div>

        <div class="right_area">
            <i class="fas fa-bars" id="btn"></i>
        </div>
    </header>

    <div class="sidebar">
        <div class="logo_profile">
            <img src="asset/logo2.png" class="logo" alt="" width="200px">
        </div>
            
        <div class="menu">
            <p id="admin"><i class="fas fa-user"></i><span>Selamat Datang, Admin</span></p>
            <a href="dashboard.php"><i class="fas fa-gauge"></i><span>Dashboard</span></a>
            <a href="tambah_data.php"><i class="fas fa-plus"></i><span>Tambah Penjualan</span></a>
            <a href="setting_data.php"><i class="fas fa-gear"></i><span>Atur Data</span></a>
            <a href="logout.php" id="logout"><i class="fas fa-sign-out-alt"></i><span>Logout</span></a>  
        </div> 
    </div>

    <div class="content">
        <form action="cek_tambah_data.php" method="POST" id="tambah">
            <center>
                <h1>Tambah Penjualan</h1>
                <table width="80%" id="tambah">
                    <tr>
                        <td><label for="tanggal_transaksi">Tanggal Transaksi</label></td>
                        <td><input type="date" name="tanggal_transaksi" id="tanggal_transaksi" required></td>
                    </tr>
                    <tr>
                        <td><label for="nama_item">Nama Item</label></td>
                        <td><input type="text" name="nama_item" id="nama_item" required></td>
                    </tr>
                    <tr>
                        <td><label for="tipe_item">Tipe Item</label></td>
                        <td>
                            <input type="radio" id="jasa" name="tipe_item" value="jasa" required>
                            <label for="jasa">Jasa</label>
                            <input type="radio" id="item" name="tipe_item" value="item" required>
                            <label for="item">Item</label>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="banyak_item">Banyak Item</label></td>
                        <td><input type="number" name="banyak_item" id="banyak_item" required></td>
                    </tr>
                    <tr>
                        <td><label for="harga">Harga</label></td>
                        <td><input type="text" name="harga" id="harga" required></td>
                    </tr>
                </table>
                <button type="submit" name="tambah">Tambah</button>
            </center>
        </form>
    </div>

    <script src="script.js"></script>
</body>
</html>
