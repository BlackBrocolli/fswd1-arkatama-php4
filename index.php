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

                $sql = "SELECT avatar, name, email, phone, role FROM users";
                $result = $conn->query($sql);
                $number = 1;

                if ($result->num_rows > 0) {
                    // output data table
                    while ($row = $result->fetch_assoc()) {
                        echo "  <tr>
                                    <th>" . $number++ . "</th>
                                    <td>
                                        <button type='button' class='btn btn-primary'>Detail</button>
                                        <button type='button' class='btn btn-warning'>Edit</button>
                                        <button type='button' class='btn btn-danger'>Hapus</button>
                                    </td>
                                    <td>
                                        <img class='rounded-circle' style='width: 40px; height:40px' src=" . $row["avatar"] . ">
                                    </td>
                                    <td>" . $row["name"] . "</td>
                                    <td>" . $row["email"] . "</td>
                                    <td>" . $row["phone"] . "</td>
                                    <td>" . $row["role"] . "</td>
                                </tr>";
                    }
                }
                ?>
            </tbody>
        </table>
    </div>

    <!-- Javascript -->
    <script src="js/bootstrap.min.js"></script>
</body>

</html>