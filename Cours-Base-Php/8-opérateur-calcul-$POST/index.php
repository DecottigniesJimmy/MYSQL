<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
    <input name="num1" type="text">
    <p> + </p>
    <input name="num2" type="text">
    <br>
    <input name="submit" type="submit">
    <br>
    <p>=</p>
    </form>
<?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $num1 = $_POST["num1"];
        $num2 = $_POST["num2"];
        $totale = $num1 + $num2;

        if (empty($num1) OR empty($num2)) {
            echo "Tout les champs ne sont pas remplies";
        } else {
            echo "Le resultat de $num1 + $num2 = $totale";
        }
    }
?>
    
</body>
</html>