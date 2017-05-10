<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Heros of the Storm Database | Maps</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    </head>
    <body>
        <?php 
            include 'navigation.php'; 
            include 'config.php';
            $query1 = "SELECT *
                FROM hots_map
                ORDER BY map_name";
            $result1 = mysql_query($query1)
                or die("SQL Error: <b>".mysql_error()."</b><br>");
        ?>
        <main>
            <h1>Heroes of the Storm Database</h1>
                <div id="battlegrounds">
                    <?php 
                        while ($row1 = mysql_fetch_array($result1)) {
                    ?>
                            <img src="<?php echo "images/".$row1["map_name"].".jpg"; ?>">
                    <?php
                        }
                    ?>
                </div>
        </main>
        <?php include 'footer.php'; ?>
    </body>
</html>