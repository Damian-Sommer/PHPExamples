<?php
$title = "Zahlen Raten";
$arrayActive = array("", "active");
include_once "includes/header.php";
if(!isset($_SESSION["randomGuess"])){
  $_SESSION["randomGuess"] = "";
  $_SESSION["randomNumber"] = "";
  $_SESSION["hintRandomGuess"] = "";
}
 ?>

<p>Random Number: <?php echo $_SESSION["randomNumber"];?></p>
<h2><?php echo $_SESSION["hintRandomGuess"]; ?></h2>
<p>Alte Zahl: <?php echo $_SESSION["randomGuess"]; ?></p>

<form method="post" action="<?php echo htmlspecialchars("numberguesserController.php");?>">
  <fieldset>
    <label for="Slider"><b>Slider:</b></label><br>
    <input type="range" id="Random" name="Random" value="<?php $_SESSION["randomGuess"] ?>" min="0" max="100" placeholder="Max Mustermann" oninput="outputId.value = this.value">
    <output for="range" id="outputId"><?php $_SESSION["randomGuess"] ?></output><br>
    <input type="submit" name="submit">
  </fieldset>
</form>

<?php
include_once "includes/footer.php"
 ?>
