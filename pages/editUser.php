<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit User</title>
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

        <h3>Edit Pengguna</h3>

        <?php
        include 'koneksi.php';

        $sql = "SELECT name, role, password, email, phone, address, avatar FROM users WHERE id=" . $_GET['id'];
        $result = $conn->query($sql);
        $data = $result->fetch_assoc();
        ?>

        <form action="crud.php" method="POST" enctype="multipart/form-data">
            <input type="hidden" name="id" value="<?= $_GET['id']; ?>">

            <label for="name">Nama</label>
            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Nama Lengkap" aria-label="Username" aria-describedby="basic-addon1" name="name" id="name" value="<?= $data['name']; ?>" required>
            </div>

            <div class="row">
                <div class="col">
                    <label for="role">Role</label>
                    <select class="form-select" aria-label="Default select example" name="role" required>
                        <option value="">Pilih Role Pengguna</option>

                        <?php
                        include "koneksi.php";

                        $sql = "SELECT role FROM users GROUP BY role";
                        $result = $conn->query($sql);

                        if ($result->num_rows > 0) {
                            // output role dari db
                            while ($row = $result->fetch_assoc()) : ?>
                                <option value="<?= $row["role"]; ?>" <?= ($row["role"] == $data['role'] ? "selected" : ""); ?>><?= $row["role"]; ?></option>
                        <?php endwhile;
                        }

                        $conn->close();
                        ?>


                    </select>
                </div>
                <div class="col">
                    <label for="password">Password</label>
                    <div class="input-group mb-3">
                        <input type="password" class="form-control" aria-label="Recipient's username" aria-describedby="button-addon2" name="password" id="password" value="<?= $data['password']; ?>" required>
                        <button class="btn btn-outline-secondary" type="button" id="button-addon2" onclick="showPassword()">Lihat</button>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <label for="email">Email</label>
                    <div class="input-group mb-3">
                        <input type="email" class="form-control" aria-label="Recipient's username" name="email" id="email" placeholder="name@example.com" value="<?= $data['email']; ?>" required>
                    </div>
                </div>
                <div class="col">
                    <label for="phone">Telp</label>
                    <div class="input-group mb-3">
                        <input type="tel" class="form-control" aria-label="Recipient's username" name="phone" id="phone" value="<?= $data['phone']; ?>" required>
                    </div>
                </div>
            </div>

            <div class="row">
                <label for="alamat">Alamat Lengkap</label>
                <div class="input-group mb-3">
                    <textarea class="form-control" aria-label="With textarea" name="alamat" id="alamat" required><?= $data['address']; ?></textarea>
                </div>
            </div>

            <div class="row">
                <label for="avatar" class="form-label">Unggah Foto</label>
                <img class='rounded' style='width: 100px;' src="../<?= $data["avatar"] ?>">
                <label for=""><?= $data['avatar']; ?></label>
                <div class="input-group mb-3">
                    <input type="hidden" name="avatarLama" value="<?= $data['avatar']; ?>">
                    <input class="form-control" type="file" id="avatar" name="avatarBaru" accept="image/jpeg, image/png">
                </div>
            </div>

            <div class=" row justify-content-center">
                <div class="col-4 text-center">
                    <button class="btn btn-primary" type="submit" name="buttonEdit">Submit form</button>
                </div>
            </div>

        </form>
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