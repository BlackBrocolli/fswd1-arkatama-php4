<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tambah User</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css" />
</head>

<body>
    <div class="container mt-4 px-5">

        <h3>Tambah Pengguna</h3>

        <form action="crud.php" method="POST" enctype="multipart/form-data">
            <label for="name">Nama</label>
            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Nama Lengkap" aria-label="Username" aria-describedby="basic-addon1" name="name" id="name" required>
            </div>

            <div class="row">
                <div class="col">
                    <label for="role">Role</label>
                    <select class="form-select" aria-label="Default select example" name="role" required>
                        <option selected value="">Pilih Role Pengguna</option>

                        <?php
                        include "koneksi.php";

                        $sql = "SELECT role FROM users GROUP BY role";
                        $result = $conn->query($sql);

                        if ($result->num_rows > 0) {
                            // output role dari db
                            while ($row = $result->fetch_assoc()) : ?>
                                <option value=<?= $row["role"]; ?>><?= $row["role"]; ?></option>
                        <?php endwhile;
                        }

                        $conn->close();
                        ?>


                    </select>
                </div>
                <div class="col">
                    <label for="password">Password</label>
                    <div class="input-group mb-3">
                        <input type="password" class="form-control" aria-label="Recipient's username" aria-describedby="button-addon2" name="password" id="password" required>
                        <button class="btn btn-outline-secondary" type="button" id="button-addon2">Lihat</button>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <label for="email">Email</label>
                    <div class="input-group mb-3">
                        <input type="email" class="form-control" aria-label="Recipient's username" name="email" id="email" placeholder="name@example.com" required>
                    </div>
                </div>
                <div class="col">
                    <label for="phone">Telp</label>
                    <div class="input-group mb-3">
                        <input type="tel" class="form-control" aria-label="Recipient's username" name="phone" id="phone" required>
                    </div>
                </div>
            </div>

            <div class="row">
                <label for="alamat">Alamat Lengkap</label>
                <div class="input-group mb-3">
                    <textarea class="form-control" aria-label="With textarea" name="alamat" id="alamat" required></textarea>
                </div>
            </div>

            <div class="row">
                <label for="avatar" class="form-label">Unggah Foto</label>
                <div class="input-group mb-3">
                    <input class="form-control" type="file" id="avatar" name="avatar" accept="image/jpeg, image/png">
                </div>
            </div>

            <div class=" row justify-content-center">
                <div class="col-4 text-center">
                    <button class="btn btn-primary" type="submit" name="buttonTambah">Submit form</button>
                </div>
            </div>

        </form>
    </div>

    <!-- Javascript -->
    <script src="../js/bootstrap.min.js"></script>
</body>

</html>