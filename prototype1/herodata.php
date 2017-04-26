<?php 
    include 'config.php'; 
    $hero_id = $_REQUEST[hero];
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Heros of the Storm Database | Heroes</title>
        <link href="style.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    </head>
    <body>
        <?php include 'navigation.php';
            $query1 = "SELECT *
                    FROM hots_hero";
            $result1 = mysql_query($query1)
                or die("SQL Error: <b>".mysql_error()."</b><br>");
        ?>
        <main>
            <h1>Heroes of the Storm Database</h1>
            <h2></h2>
        </main>
        <?php include 'footer.php'; ?>
    </body>
</html>