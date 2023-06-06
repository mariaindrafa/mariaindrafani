

<?php 
session_start();

// Periksa apakah pengguna sudah login
if (!isset($_SESSION['username'])) {
    echo '<script>alert("Silahkan login terlebih dahulu."); window.location.href = "login.php";</script>';
    exit();
}

$title = 'Daftar Mahasiswa';

include 'layout/header.php';

// menampilkan data mahasiswa
$data_mhs = select("SELECT * FROM tb_mhs ORDER BY id_mhs DESC");
?>
