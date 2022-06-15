<?php
session_start();

function clearAllSessions(){
  $_SESSION["randomNumber"] = "";
}

if(!isset($_SESSION["randomNumber"]) || $_SESSION["randomNumber"] == ""){
  $random = rand(1, 100);
  $_SESSION["randomNumber"] = (string)$random;
}

if(isset($_POST["submit"])){
  $guess = (int)$_POST["Random"];
  if($guess == (int)$_SESSION["randomNumber"]){
    $_SESSION["randomGuess"] = $guess;
    $_SESSION["hintRandomGuess"] = "Die Zufallszahl wurde erraten. Sie lautete: ".$_SESSION["randomNumber"].". ";
    header("Location: numberguesser.php?id=randomGuessed");
    exit();
  }else if($guess >= (int)$_SESSION["randomNumber"]){
    $_SESSION["randomGuess"] = $guess;
    $_SESSION["hintRandomGuess"] = "Die Geratene Zahl ist grösser als die Zufallszahl";
    header("Location: numberguesser.php?guessToBig");
    exit();
  }else if($guess <= (int)$_SESSION["randomNumber"]){
    $_SESSION["randomGuess"] = $guess;
    $_SESSION["hintRandomGuess"] = "Die Geratene Zahl ist kleiner als die Zufallszahl";
    header("Location: numberguesser.php?guessToLittle");
    exit();
  }
  else {
    $_SESSION["randomGuess"] = $guess;
    header("Location: numberguesser.php");
    exit();
  }

}
