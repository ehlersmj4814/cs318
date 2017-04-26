<?php include 'config.php'; ?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Heros of the Storm Database | Heroes</title>
        <link href="style.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    </head>
    <body>
        <?php include 'navigation.php';
            $query1 = "SELECT class_id, class_name
                    FROM hots_class
                    ORDER BY class_id";
            $result1 = mysql_query($query1)
                or die("SQL Error: <b>".mysql_error()."</b><br>");
        ?>
        <main>
            <h1>Heroes of the Storm Database</h1>
            <form action="herodata.php" method="get">
                <dl>
                    <?php
                        while ($row1 = mysql_fetch_array($result1)) {
                            $class = $row1["class_id"];
                            $query2 = "SELECT hero_id, hero_name, class_id
                                    FROM hots_hero
                                    WHERE class_id = '$class'
                                    ORDER BY hero_name";
                            $result2 = mysql_query($query2)
                                or die("SQL Error: <b>".mysql_error()."</b><br>");
                    ?>
                            <div class="col">
                            <dt><?php echo $row1["class_name"]; ?></dt>
                                <?php while ($row2 = mysql_fetch_array($result2)){ ?>
                                    <dd>
                                        <button type="submit" name="hero" value="<?php echo $row2["hero_id"]; ?>"><?php echo $row2["hero_name"]; ?>
                                            <img class ="hero-thumb" src="<?php echo "images/".$row2["hero_name"].".png"; ?>">
                                        </button>
                                    </dd>
                                    
                                <?php } ?>
                            </div>
                        <?php } ?>
                </dl>
            </form>
        </main>
        <?php include 'footer.php'; ?>
    </body>
</html>