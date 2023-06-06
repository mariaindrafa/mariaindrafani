

<?php
session_start();
include 'config/app.php';
// Mengkoneksikan ke database
global $db;

$err = "";
$username = "";

if (isset($_SESSION['registration_success'])) {
    $registration_success = $_SESSION['registration_success'];
    unset($_SESSION['registration_success']);
}

if (isset($_POST['txUSER'])) {
    $username = $_POST['txUSER'];
    $passkey = $_POST['txPASS'];

    if ($username == '' or $passkey == '') {
        $err .= "<li>Silahkan masukkan username dan juga password.</li>";
    } else {
        $sql1 = "SELECT passkey FROM tb_user WHERE username='$username'";
        $sql = mysqli_query($db, $sql1);
        $r1 = mysqli_fetch_array($sql);

        if ($r1['passkey'] == md5($passkey)) {
            $_SESSION['username'] = $username;
            header("Location: dashboard.php");
            exit();
        } else {