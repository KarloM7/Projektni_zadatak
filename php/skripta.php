<!DOCTYPE html>
<html lang="en">
<head>
    <?php include '../html/head.html'?>
</head>
<body>
    <?php 
        include '../html/header.html';
        include '../html/navigation.html';
        include 'connect.php';
        if (!empty($_FILES["slika"]["name"])) {
            $target_file = "../images/" . basename($_FILES["slika"]["name"]);
            $ispravnaSlika = 1;
            $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));
            if ($imageFileType != "jpg" && $imageFileType != "jpeg" && $imageFileType != "png" && $imageFileType != "gif" ) {
                $ispravnaSlika = 0;
            } 
            if($ispravnaSlika == 0){
                $poruka="Došlo je do pogreške! Dopušteni formati slike su: .jpg, .jpeg, .png, .gif.<br>Promjene nisu spremljene u bazu!<br>";
            }
            else {
                move_uploaded_file($_FILES["slika"]["tmp_name"], $target_file);
            }
        }
        if (isset($_POST['submit']) && $ispravnaSlika == 1){
            $datum=date("d.m.Y.", strtotime($_POST['datum']));
            $naslov = $_POST['naslov'];
            $sazetak = $_POST['sazetak'];
            $tekst = $_POST['tekst'];
            $slika = $_FILES["slika"]["name"];
            $kategorija = $_POST['kategorija'];
            if (isset($_POST['arhiva'])){
                $arhiva = 1;
            }
            else {
                $arhiva = 0;
            }
            $query = "INSERT INTO vijesti (datum, naslov, sazetak, tekst, slika, kategorija, arhiva) VALUES (?, ?, ?, ?, ?, ?, ?);";
            $stmt = mysqli_stmt_init($dbc);
            if (mysqli_stmt_prepare($stmt, $query)) {
                mysqli_stmt_bind_param($stmt, 'ssssssi', $datum, $naslov, $sazetak, $tekst, $slika, $kategorija, $arhiva);
                mysqli_stmt_execute($stmt);
            }
        }
        mysqli_close($dbc);
    ?>
    <section>
        <?php
            if($ispravnaSlika == 0){
                echo '<div class="container mt-3 text-center">
                    <div class="row">
                        <div class="col mb-1 mt-1">
                            <div class="uvuceno">
                                <p>' . $poruka . '</p>
                            </div>
                        </div>
                    </div>
                </div>';
            }
            else {
                echo '<div class="container mt-3 text-center">
                    <div class="row">
                        <div class="col fs-5 mb-1 mt-1">
                            <div class="uvuceno">
                                <h5>' . strtoupper($kategorija) . '</h5>
                                <h1 class="fw-bold">' . $naslov . '</h1>
                                <p>' . $sazetak . '</p>
                                <p>' . date("d.m.Y.", strtotime($datum)) . '</p>
                            </div>
                            <img src="../images/' . $slika . '" alt="' . $slika . '">
                        </div>
                    </div>
                </div>
                <div class="container text-left">
                    <div class="row">
                        <div class="col uvuceno">
                            <p class="mt-3">' . $tekst . '</p>
                        </div>
                    </div>
                </div>'; 
            }?>
    </section>
    <?php include 'footer.php'?>
</body>
</html>