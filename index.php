<?php

  session_start();
  unset($_SESSION["userName"]);
  session_destroy();


 ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Index - All Attempts</title>
</head>
<body>
    <header>
      <nav>
        <div class="topnav" id="myTopnav">
          <a class="linkinattempt" href="../../index.php">Home</a>
          <a class="linkinattempt" href="examples/contact.php">Kontatkformular</a>
          <a class="linkinattempt" href="examples/numberguesser.php">ZahlenRaten</a>
          <a class="linkinattempt" href="examples/shop.php">Webshop</a>
          <a href="javascript:void(0);" class="icon" onclick="myFunction()">
            <i class="fa fa-bars"></i>
          </a>
        </div>
      </nav>
      <h1>All Attempts</h1>
    </header>
    <body>

    </body>


</body>
<script>
function myFunction() {
var x = document.getElementById("myTopnav");
if (x.className === "topnav") {
  x.className += " responsive";
} else {
  x.className = "topnav";
}
}
</script>
</html>
