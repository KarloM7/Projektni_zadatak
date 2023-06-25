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
        $id = $_GET['id'];
        $query = "SELECT * FROM vijesti WHERE id = ?;";
        $stmt = mysqli_stmt_init($dbc);
        if (mysqli_stmt_prepare($stmt, $query)) {
            mysqli_stmt_bind_param($stmt, "i", $id);
            mysqli_stmt_execute($stmt);
            $result = mysqli_stmt_get_result($stmt);
            $row = mysqli_fetch_assoc($result);
        }
    ?>
    <section>
        <div class="container mt-3 text-center">
            <div class="row">
                <div class="col fs-5 mb-1 mt-1">
                    <div class="uvuceno">
                        <h5><?php echo strtoupper("${row['kategorija']}")?></h5>
                        <h1 class="fw-bold"><?php echo "${row['naslov']}"?></h1>
                        <p><?php echo "${row['sazetak']}"?></p>
                        <p><?php echo "${row['datum']}"?></p>
                    </div>
                    <?php echo "<img src='../images/${row['slika']}' alt='${row['slika']}'>"?>
                </div>
            </div>
        </div>
        <div class="container text-left">
            <div class="row">
                <div class="col uvuceno">
                    <p class="mt-3">
                        <?php echo "${row['tekst']}"?>
                    </p>
                </div>
            </div>
        </div>
    </section>
    <?php 
        include 'footer.php';
        mysqli_close($dbc);
    ?>
</body>
</html>