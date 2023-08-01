<html>
    <head>
        <title>VARIABLES</title>
    </head>
    <body bgcolor="B4EFEC">
        <h1>DATOS PERSONALES</h1>
    <?php
    //USO DE VARIABLES EN PHP
    $nombre="pepito";
    $edad=10;
    $estatura=1.75;
    $estado="NO";
    echo("<font face='Arial Black' size='16' color='#BEFF33'>'USO DE VARIABLES'</font> <br>");
    echo("<font color='#33FF9C' size='14'> Nombre:".$nombre."</font> <br>");
    echo("<font color='#C433FF' size='12' face='tahoma'>Edad actual:</font>".$edad."<font size='12'> años </font> <br>");//variable entera
    echo"Estatura:" .$estatura." en mtrs <br>";//variable flotante
    echo"Esta casado actualmente:".$estado." <br>";//variable booleana

    ?>
    <p>******ULTIMA LINEA DE HTML*****</p>
</body>
</html>