<?php
    session_start();
    include 'connect.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <?php include '../html/head.html'?>
</head>
<body>
    <?php 
        include '../html/header.html';
        include '../html/navigation.html';
    ?>
    <article>
        <div class="container mt-1">
            <div class="row">
                <div class="col mb-4 mt-1 kat ikona">
                    <img src="../images/ikona.jpg" alt="ikona">   
                    Novosti
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row text-left">
                <?php
                    $kategorija = "Novosti";
                    $arhiva = 1;
                    $query = "SELECT * FROM vijesti WHERE kategorija = ? AND arhiva = ? ORDER BY id DESC;";
                    $stmt = mysqli_stmt_init($dbc);
                    if (mysqli_stmt_prepare($stmt, $query)) {
                        mysqli_stmt_bind_param($stmt, "si", $kategorija, $arhiva);
                        mysqli_stmt_execute($stmt);
                        $result = mysqli_stmt_get_result($stmt);
                        while ($row = mysqli_fetch_assoc($result)) {
                            echo "<div class='col-xxl-3 col-xl-3 col-lg-3 col-md-6 col-sm-12 vijest'>
                                <a href='./clanak.php?id=${row['id']}'>
                                    <img src='../images/${row['slika']}' alt='${row['slika']}'>
                                    <p>${row['sazetak']}</p>
                                    <h5>${row['naslov']}</h5>
                                    <p class='datum'>${row['datum']}</p>
                                </a>
                            </div>";
                        }   
                    }
                ?>
            </div>
            <hr>
        </div>
        <div class="container">
            <div class="row">
                <div class="col mb-4 mt-1 kat ikona">
                    <img src="../images/ikona.jpg" alt="ikona">   
                    Sport
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row text-left">
                <?php
                    $kategorija = "Sport";
                    $arhiva = 1;
                    $query = "SELECT * FROM vijesti WHERE kategorija = ? AND arhiva = ? ORDER BY id DESC;";
                    $stmt = mysqli_stmt_init($dbc);
                    if (mysqli_stmt_prepare($stmt, $query)) {
                        mysqli_stmt_bind_param($stmt, "si", $kategorija, $arhiva);
                        mysqli_stmt_execute($stmt);
                        $result = mysqli_stmt_get_result($stmt);
                        while ($row = mysqli_fetch_assoc($result)) {
                            echo "<div class='col-xxl-3 col-xl-3 col-lg-3 col-md-6 col-sm-12 vijest'>
                                <a href='./clanak.php?id=${row['id']}'>
                                    <img src='../images/${row['slika']}' alt='${row['slika']}'>
                                    <p>${row['naslov']}</p>
                                    <h5>${row['sazetak']}</h5>
                                    <p class='datum'>${row['datum']}</p>
                                </a>
                            </div>";
                        }
                    }
                ?>
            </div>
            <hr>
        </div>
    </article>
    <?php 
        include 'footer.php';
        mysqli_close($dbc);
    ?>
</body>
</html>