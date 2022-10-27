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

    <!-- HEREDOC sert a faciliter la concaténation des chaine de caractère ainsi que des variables  -->
    <h1>HEREDOC sert a faciliter la concaténation des chaine de caractère ainsi que des variables (voir code syntax)</h1>
    <?php
    $date = "Jeudi";
     
    echo <<<html
    coucou il est {$date}
    html; 
    ?>

    <!-- FIN HEREDOC -->

    </body>

</html>