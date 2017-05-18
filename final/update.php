<?php include 'config.php'; ?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Heros of the Storm Database | Update</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
            <form action="https://formspree.io/ehlersmj4814@uwec.edu" method="POST">
                <label>Hero Name: <input type="text" name="hero_name" id="hero_name"></label>
                <br>
                <label>Hero HP: <input type="number" name="hero_hp" id="hero_hp"></label>
                <br>
                <label>Hero HP Regen: <input type="number" name="hero_hp_regen" id="hero_hp_regen"></label>
                <br>
                <label>Hero Mana: <input type="number" name="hero_mana" id="hero_mana"></label>
                <br>
                <label>Hero Mana Regen: <input type="number" name="hero_mana_regen" id="hero_mana_regen"></label>
                <br>
                <label>Here Speed: <input type="number" name="hero_speed" id="hero_speed"></label>
                <br>
                <label>Hero Attack Speed: <input type="number" name="hero_attack_speed" id="hero_attack_speed"></label>
                <br>
                <label>Hero Attack Range: <input type="number" name="hero_attack_range" id="hero_attack_range"></label>
                <br>
                <label>Hero Attack Damage: <input type="number" name="hero_attack_damage" id="hero_attack_damage"></label>
                <br>
                <label>Hero HP per Level: <input type="number" name="hero_hp_per_level" id="hero_hp_per_level"></label>
                <br>
                <label>Hero HP Regen per Level: <input type="number" name="hero_hp_regen_per_level" id="hero_hp_regen_per_level"></label>
                <br>
                <label>Hero Ranged Damage: <input type="number" name="hero_ranged_damage" id="hero_ranged_damage"></label>
                <br>
                <label>Hero Splash Damage: <input type="number" name="hero_splash_damage" id="hero_splash_damage"></label>
                <br>
                <label>Hero Mana per Level: <input type="number" name="hero_mana_per_level" id="hero_mana_per_level"></label>
                <br>
                <label>Hero Mana Regen per Level: <input type="number" name="hero_mana_regen_per_level" id="hero_mana_regen_per_level"></label>
                <br>
                <label>Class: 
                    <select name="class_id">
                        <?php 
                        while ($row1 = mysql_fetch_array($result1)){
                    ?>
                        <option value="<?php echo $row1["class_id"]; ?>">
                            <?php echo $row1["class_name"]; ?>
                        </option>
                    <?php } ?>
                    </select></label>
                <br>
                <input type="submit">
            </form>
        </main>
        <?php include 'footer.php'; ?>
    </body>
</html>