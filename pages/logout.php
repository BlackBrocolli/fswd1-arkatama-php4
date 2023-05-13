<?php
session_start();

// Hancurkan sesi
session_destroy();

header('Location: login.php');
exit;
