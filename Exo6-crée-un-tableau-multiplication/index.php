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
function table($nbr, $nbr2)
{
    $table = "<table border='1'>";
    for ($a=1; $a <= $nbr; $a++) {
        $table .= '<tr>';
    for ($b=1; $b <= $nbr2; $b++) {
        $table .= "<td>".$a*$b."</td>";
    }
        $table .= '<tr>';
    }
    $table .= '</table>';
    return $table;
}
echo table(10,10);
?>


                </table>
        </div>
</div>

</body>
</html>