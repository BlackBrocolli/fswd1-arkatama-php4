<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tugas Pertemuan 19</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
</head>

<body>

    <!-- MENAMPILKAN TABEL DATA PENGGUNA -->
    <div class="container mt-4">
        <h3>Data pengguna</h3>

        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Aksi</th>
                    <th scope="col">Avatar</th>
                    <th scope="col">Nama</th>
                    <th scope="col">Email</th>
                    <th scope="col">Phone</th>
                    <th scope="col">Role</th>
                </tr>
            </thead>
            <tbody>
                <?php
                include "pages/koneksi.php";

                $sql = "SELECT id, avatar, name, email, phone, role FROM users";
                $result = $conn->query($sql);
                $number = 1;

                if ($result->num_rows > 0) {
                    // output data table
                    while ($row = $result->fetch_assoc()) :
                ?>
                        <tr>
                            <th><?= $number++ ?></th>
                            <td>
                                <button type='button' class='btn btn-primary'>Detail</button>
                                <button type='button' class='btn btn-warning'>Edit</button>
                                <button type='button' class='btn btn-danger' id='hapusButton' data-bs-toggle='modal' data-bs-target='#hapusModal<?= $row["id"] ?>'>Hapus</button>
                            </td>
                            <td>
                                <img class='rounded-circle' style='width: 40px; height:40px' src="<?= $row["avatar"] ?>">
                            </td>
                            <td><?= $row["name"] ?></td>
                            <td><?= $row["email"] ?></td>
                            <td><?= $row["phone"] ?></td>
                            <td><?= $row["role"] ?></td>
                        </tr>

                        <!-- Modal Hapus -->
                        <div class="modal fade" id="hapusModal<?= $row["id"] ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="exampleModalLabel">Hapus data</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>

                                    <form action="pages/crud.php" method="POST">

                                        <input type="hidden" name="idUser" value="<?= $row["id"] ?>">

                                        <div class="modal-body">
                                            Yakin ingin menghapus data user "<?= $row["name"] ?>"?
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                            <button type="submit" class="btn btn-primary" name="buttonHapus">Ya, hapus!</button>
                                        </div>
                                    </form>

                                </div>
                            </div>
                        </div>

                <?php endwhile;
                }
                ?>
            </tbody>
        </table>
    </div>

    <!-- Javascript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>