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

// EDIT
if (isset($_POST["buttonEdit"])) {

    $id = $_POST['id'];
    $name = $_POST['name'];
    $role = $_POST['role'];
    $password = $_POST['password'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $address = $_POST['alamat'];
    $pathAvatar = $_POST['avatarLama'];
    $namaFileBaru = $_FILES['avatarBaru']['name'];

    // jika ada foto baru yang diupload
    if (!empty($namaFileBaru)) {
        $avatar = $namaFileBaru;

        // mengolah foto yang diupload
        $x = explode('.', $namaFileBaru);
        $ekstensi = strtolower(end($x));
        $namaAvatar = uniqid() . '.' . $ekstensi;
        $pathAvatar = "images/" . $namaAvatar;
        $file_tmp = $_FILES['avatarBaru']['tmp_name'];
        move_uploaded_file($file_tmp, 'C:\laragon\www\Arkatama\19_PHP 4\fswd1-arkatama-php4\images/' . $namaAvatar);
    }

    $sql = "UPDATE users SET name = '" . $name . "', role = '" . $role . "', password = '" . $password . "', email = '" . $email . "', phone = '" . $phone . "', address = '" . $address . "', avatar = '" . $pathAvatar . "' WHERE id =" . $id;

    if ($conn->query($sql) === TRUE) {
        echo "  <script>
                    alert('Data berhasil diedit!');
                    document.location='../index.php';
                </script>";

        // header("Location: ../index.php");
        exit;
    } else {
        echo $conn->error;
    }

    $conn->close();
}
