<?php 
    include 'config.php'; 
    $hero_id = $_REQUEST[hero_id];
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Heros of the Storm Database | Heroes</title>
        <link href="style.css" rel="stylesheet" type="text/css">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    </head>
    <body>
        <?php include 'navigation.php';
            $query1 = "SELECT *
                    FROM hots_hero
                    WHERE hero_id = '$hero_id'";
            $result1 = mysql_query($query1)
                or die("SQL Error: <b>".mysql_error()."</b><br>");
        ?>
        <main>
            <h1>Heroes of the Storm Database</h1>
            <?php while ($row1 = mysql_fetch_array($result1)){ ?>
            <h2><?php echo $row1["hero_name"]; ?></h2>
            <table>
                <tr>
                    <td>HP</td>
                    <td><?php echo $row1["hero_hp"];?></td>
                </tr>
                <tr>
                    <td>HP Regen</td>
                    <td><?php echo $row1["hero_hp_regen"];?></td>
                </tr>
                <tr>
                    <td>Mana</td>
                    <td><?php echo $row1["hero_mana"];?></td>
                </tr>
                <tr>
                    <td>Mana Regen</td>
                    <td><?php echo $row1["hero_mana_regen"];?></td>
                </tr>
                <tr>
                    <td>Speed</td>
                    <td><?php echo $row1["hero_speed"];?></td>
                </tr>
                <tr>
                    <td>Attack Speed</td>
                    <td><?php echo $row1["hero_attack_speed"];?></td>
                </tr>
                <tr>
                    <td>Attack Range</td>
                    <td><?php echo $row1["hero_attack_range"];?></td>
                </tr>
                <tr>
                    <td>Attack Damage</td>
                    <td><?php echo $row1["hero_attack_damage"];?></td>
                </tr>
                <tr>
                    <td>HP per Level</td>
                    <td><?php echo $row1["hero_hp_per_level"];?></td>
                </tr>
                <tr>
                    <td>HP Regen per Level</td>
                    <td><?php echo $row1["hero_hp_regen_per_level"];?></td>
                </tr>
                <tr>
                    <td>Ranged Damage</td>
                    <td><?php echo $row1["hero_ranged_damage"];?></td>
                </tr>
                <tr>
                    <td>Splash Damage</td>
                    <td><?php echo $row1["hero_splash_damage"];?></td>
                </tr>
                <tr>
                    <td>Mana per Level</td>
                    <td><?php echo $row1["hero_mana_per_level"];?></td>
                </tr>
                <tr>
                    <td>Mana Regen per Level</td>
                    <td><?php echo $row1["hero_mana_regen_per_level"];?></td>
                </tr>
            </table>
            <?php } ?>
        </main>
        <?php include 'footer.php'; ?>
    </body>
</html>