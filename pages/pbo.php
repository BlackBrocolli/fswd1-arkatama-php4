<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pemrograman Berbasis Objek</title>
</head>

<body>
    <h1 style="margin: 0 auto; text-align: center">Tugas PHP: Pemrograman Berbasis Objek</h1>

    <br>

    <?php
    class Animal
    {
        protected $nama;
        protected $jenis;

        function __construct($nama, $jenis)
        {
            $this->nama = $nama;
            $this->jenis = $jenis;
        }

        function getInfo()
        {
            return "Hewan ini adalah $this->nama jenis $this->jenis.";
        }
    }

    class Cat extends Animal
    {
        protected $jenis = 'Kucing';

        function __construct($nama)
        {
            $this->nama = $nama;
        }

        function getInfo()
        {
            return "Hewan ini adalah $this->nama jenis $this->jenis. Kucing adalah hewan yang suka bermain dan bersih.";
        }
    }

    class Dog extends Animal
    {
        protected $jenis = 'Anjing';

        function __construct($nama)
        {
            $this->nama = $nama;
        }

        function getInfo()
        {
            return "Hewan ini adalah $this->nama jenis $this->jenis. Anjing adalah hewan yang setia dan cerdas.";
        }
    }

    // Object dari class Animal
    $animal = new Animal('Harimau', 'Karnivora');
    echo $animal->getInfo();

    echo '<br>';

    // Object dari class Cat
    $cat = new Cat('Kitty');
    echo $cat->getInfo();

    echo '<br>';

    // Object dari class Dog
    $dog = new Dog('Buddy');
    echo $dog->getInfo();
    ?>
</body>

</html>