<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbName = "arkatama_store";

// create connection
// create connection
$conn = new mysqli($servername, $username, $password, $dbName);

// check connection
if ($conn->connect_error) {
    die("Connection failed! " . $conn->connect_error);
}
