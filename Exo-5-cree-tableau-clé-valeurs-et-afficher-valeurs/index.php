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

<div class="container">
        <div class="container-page">
<table>
                <tr>
                    <td class='td-title'>Prenom</td>
                    <td class='td-title'>Note</td>
                </tr>

<?php

$note = array ("Jimmy"=>"10/10", "Antho"=>"10/10", "Greg"=>"10/10");
ksort($note); // (ksort) renvoie la valeur entre " " et non en valeur d'index en chiffre
foreach ($note as $x => $x_value) {
    echo "<tr><td>". $x . "</td><td>" . $x_value . "</td></tr>";
}

?>


                </table>
        </div>
</div>
</body>
</html>