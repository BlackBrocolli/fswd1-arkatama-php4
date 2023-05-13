<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detail User</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css" />
</head>

<body>

    <?php
    // cek session, apakah sudah login
    session_start();

    // Cek apakah session sudah ada
    if (!isset($_SESSION['email'])) {
        // jika Session belum ada
        header("Location: login.php");
        exit;
    }

    ?>

    <div class="container mt-4 px-5">

        <h3>Detail Pengguna</h3>

        <?php
        include 'koneksi.php';

        $sql = "SELECT name, role, password, email, phone, address, avatar FROM users WHERE id=" . $_GET['id'];
        $result = $conn->query($sql);
        $data = $result->fetch_assoc();
        ?>

        <input type="hidden" name="id" value="<?= $_GET['id']; ?>">

        <label for="name">Nama</label>
        <div class="input-group mb-3">
            <input type="text" class="form-control" placeholder="Nama Lengkap" aria-label="Username" aria-describedby="basic-addon1" name="name" id="name" value="<?= $data['name']; ?>" readonly>
        </div>

        <div class="row">
            <div class="col">
                <label for="role">Role</label>
                <input type="text" class="form-control" placeholder="Nama Lengkap" aria-label="Username" aria-describedby="basic-addon1" name="role" id="role" value="<?= $data['role']; ?>" readonly>
            </div>
            <div class="col">
                <label for="password">Password</label>
                <div class="input-group mb-3">
                    <input type="password" class="form-control" aria-label="Recipient's username" aria-describedby="button-addon2" name="password" id="password" value="<?= $data['password']; ?>" readonly>
                    <button class="btn btn-outline-secondary" type="button" id="button-addon2" onclick="showPassword()">Lihat</button>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <label for="email">Email</label>
                <div class="input-group mb-3">
                    <input type="email" class="form-control" aria-label="Recipient's username" name="email" id="email" placeholder="name@example.com" value="<?= $data['email']; ?>" readonly>
                </div>
            </div>
            <div class="col">
                <label for="phone">Telp</label>
                <div class="input-group mb-3">
                    <input type="tel" class="form-control" aria-label="Recipient's username" name="phone" id="phone" value="<?= $data['phone']; ?>" readonly>
                </div>
            </div>
        </div>

        <div class="row">
            <label for="alamat">Alamat Lengkap</label>
            <div class="input-group mb-3">
                <textarea class="form-control" aria-label="With textarea" name="alamat" id="alamat" readonly><?= $data['address']; ?></textarea>
            </div>
        </div>

        <div class="row">
            <label for="avatar" class="form-label">Foto</label>
            <img class='rounded' style='width: 100px;' src="../<?= $data["avatar"] ?>">
            <label for=""><?= $data['avatar']; ?></label>
        </div>

        <div class=" row justify-content-center">
            <div class="col-4 text-center">
                <a href="../index.php" class="btn btn-primary">Back to index</a>
            </div>
        </div>

    </div>

    <!-- Javascript -->
    <script src="../js/bootstrap.min.js"></script>

    <script>
        function showPassword() {
            var passwordField = document.getElementById("password");
            if (passwordField.type === "password") {
                passwordField.type = "text";
            } else {
                passwordField.type = "password";
            }
        }
    </script>
</body>

</html>