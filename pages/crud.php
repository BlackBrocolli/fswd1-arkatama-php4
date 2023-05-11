<?php
include "koneksi.php";

// HAPUS
if (isset($_POST["buttonHapus"])) {

    $sql = "DELETE from users where id=" . $_POST["idUser"];

    if ($conn->query($sql) === TRUE) {
        echo "  <script>
                    alert('Data berhasil dihapus!');
                    document.location='../index.php';
                </script>";

        // header("Location: ../index.php");
        exit;
    }
}

// TAMBAH
if (isset($_POST["buttonTambah"])) {

    // mengolah foto yang diupload
    $namaFile = $_FILES['avatar']['name'];
    $x = explode('.', $namaFile);
    $ekstensi = strtolower(end($x));
    $namaAvatar = uniqid() . '.' . $ekstensi;
    $pathAvatar = "images/" . $namaAvatar;
    $file_tmp = $_FILES['avatar']['tmp_name'];
    move_uploaded_file($file_tmp, 'C:\laragon\www\Arkatama\19_PHP 4\fswd1-arkatama-php4\images/' . $namaAvatar);

    $sql = "INSERT INTO users (email, name, role, avatar, phone, address, password) VALUES (
        '" . $_POST["email"] . "', '"
        . $_POST["name"] . "', '"
        . $_POST["role"] . "', '"
        . $pathAvatar . "', '"
        . $_POST["phone"] . "', '"
        . $_POST["alamat"] . "', '"
        . $_POST["password"] . "'
            )";

    if ($conn->query($sql) === TRUE) {
        echo "  <script>
                    alert('Data berhasil ditambah!');
                    document.location='../index.php';
                </script>";

        // header("Location: ../index.php");
        exit;
    } else {
        echo $conn->error;
    }

    $conn->close();
}
