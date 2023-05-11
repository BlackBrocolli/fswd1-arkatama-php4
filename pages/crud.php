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
