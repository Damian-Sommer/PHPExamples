<?php
  $title = "Congratulation";
  include_once "includes/header";
  $why = "";
  if($_Get["id"]=="randomGuess"){
    $why = "RandomGuess";
  }
 ?>
 <p><<?php echo $why ?></p>
