<?php
session_start();
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles.css" type="text/css">
    <link rel="stylesheet" href="../shop.css" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Attempt - <?php echo $title ?></title>
</head>
<body>

  <header>
    <nav>
      <div class="topnav" id="myTopnav">
        <a class="linkinattempt" href="../index.php">Home</a>
        <a class="linkinattempt <?php echo $arrayActive[0] ?>" href="./contact.php">Kontatkformular</a>
        <a class="linkinattempt <?php echo $arrayActive[1] ?>" href="./numberguesser.php">ZahlenRaten</a>
        <a class="linkinattempt <?php echo $arrayActive[2] ?>" href="./shop.php">Webshop</a>
        <a href="javascript:void(0);" class="icon" onclick="myFunction()">
          <i class="fa fa-bars"></i>
        </a>
      </div>
    </nav>
    <h1><?php echo $title ?></h1>
  </header>
