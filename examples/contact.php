<?php
$title = "Kontaktformular";
$arrayActive = array("active", "");
include_once "includes/header.php";
if(!isset($_SESSION["userName"]) and !isset($_SESSION["email"]) and !isset($_SESSION["betreff"]) and !isset($_SESSION["nachricht"])){
    $_SESSION["userName"] = "";
    $_SESSION["email"] = "";
    $_SESSION["betreff"] = "";
    $_SESSION["nachricht"] = "";
    $_SESSION["nameError"] = "";
    $_SESSION["emailError"] = "";
    $_SESSION["betreffError"] = "";
    $_SESSION["nachrichtError"] = "";
}

$usernameError = $_SESSION["nameError"];
$emailError = $_SESSION["emailError"];
$betreffError = $_SESSION["betreffError"];
$nachrichtError = $_SESSION["nachrichtError"];
$userName = $_SESSION["userName"];
$email = $_SESSION["email"];
$betreff = $_SESSION["betreff"];
$nachricht = $_SESSION["nachricht"];

?>

<style>
small{
  color: #eb5534;
}
</style>
    <form method="post" action="<?php echo htmlspecialchars("contactController.php");?>">
    <label for="Name"><b>Name:</b></label><br>
    <input type="text" id="Name" name="Name" value="<?php echo $userName ?>" placeholder="Max Mustermann"><br>
    <small><?php echo $usernameError ?></small><br>

    <label for="Email"><b>E-Mail:</b></label><br>
    <input type="text" id="Email" name="Email" value="<?php echo $email ?>" placeholder="max@mustermann.ch"><br>
    <small><?php echo $emailError ?></small><br>

    <label for="Betreff"><b>Betreff:</b></label><br>
    <input type="text" id="betreff" name="Betreff" value="<?php echo $betreff ?>" placeholder="Betreff"><br>
    <small><?php echo $betreffError ?></small><br>

    <label for="Nachricht"><b>Nachricht:</b></label><br>
    <textarea id="Nachricht" name="Nachricht" rows="10" cols="50"><?php echo $nachricht ?></textarea> <br>
    <small><?php echo $nachrichtError ?></small><br>
    <input type="submit" name="submit">
    </form>
<?php
include_once "includes/footer.php";
 ?>
