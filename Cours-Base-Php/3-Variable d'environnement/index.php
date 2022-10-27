<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/assets/style.css">
    <title>Document</title>
</head>

<body>

    <!-- QESTION 2 VARIABLES D'ENVIRONNEMENT ET getenv() "$_SERVEUR" -->
    <h1>EXO2</h1>
    <?php
    $date = date("d-F-Y");
    $time = date("H:i");

    echo "<h2>En ce $date, sur le serveur " . $_SERVER["SERVER_NAME"] . ", il est " . $time . "mn</h2>";
    echo "<h2>Variable HTTP serveur (getenv())</h2>";
    ?>

    <div class="tableau">
        <table>
            <tr>
                <th>Variable</th>
                <th>Valeur</th>
            </tr>
            <tr>
                <td>
                    <?php
                    echo "GATEWAY_INTERFACE"
                    ?>
                </td>
                <td>
                    <?php
                    echo $_SERVER["GATEWAY_INTERFACE"];
                    ?>
                </td>
            <tr>
                <td>
                    <?php
                    echo "SERVER_NAME"
                    ?>
                </td>
                <td>
                    <?php
                    echo $_SERVER["SERVER_NAME"];
                    ?>
                </td>
            </tr>
            </tr>
        </table>

        <!-- CORRECTION EXERCICE 2 -->
        <br>
        <h1>CORRIGER</h1>

        <?php $cejour = getdate(); ?>  <!-- On associe la methode getday a une variable, puis on l'appelle dans le echo avec ["mday"] (month year...) -->

        <h2>
            En ce <?php echo $cejour["mday"] . " " . $cejour["month"] . " " . $cejour["year"]; ?>,
            sur le serveur <?php echo $_SERVER["SERVER_NAME"]; ?>
            il est <?php echo $cejour["hours"] ."h". $cejour["minutes"] ."mn"; ?>.<br />
        </h2>

        <table>
            <?php
            foreach ($_SERVER as $variable => $valeur) { ?>
                <tr>
                    <td><?php echo $variable; ?></td>
                    <td><?php echo $valeur; ?></td>
                </tr>
            <?php } ?>
        </table>
    </div>
    <!-- FIN CORRECTION EXERCICE 2 -->
    <!-- FIN QUESTION 2 -->

    
</body>

</html>