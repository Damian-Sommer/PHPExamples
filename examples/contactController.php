<?php
   session_start();

   function clearSessionError(){
     $_SESSION["nameError"] = "";
     $_SESSION["emailError"] = "";
     $_SESSION["betreffError"] = "";
     $_SESSION["nachrichtError"] = "";
   }
   function validate($data) {
      $data = trim($data);
      $data = stripslashes($data);
      $data = htmlspecialchars($data);
      return $data;
   }
   if(isset($_POST["submit"])){


     //Absender falls keiner angegeben wurde
     $sendermail_antwort = true;      //E-Mail Adresse des Besuchers als Absender. false= Nein ; true = Ja
     $name_von_emailfeld = "Email";   //Feld in der die Absenderadresse steht
    // $mail_cc = ""; //CC-Adresse, diese E-Mail-Adresse bekommt einer weitere Kopie
     //Betreff der Email

     //Diese Felder werden nicht in der Mail stehen
     $emailVon = "";
     $empfaenger = "damian@aelgict.ch";
    /* $_SESSION["userName"] = "";
     $_SESSION["email"] = "";
     $_SESSION["betreff"] = "";
     $_SESSION["nachricht"] = "";*/
     $error = false;

     if(empty($_POST["Name"]) == true){
       $_SESSION["nameError"] = "Bitte gebe deinen Namen ein!";
       $_SESSION["userName"] = $_POST["Name"];
     } else{
       $_SESSION["nameError"] = "";
       $_SESSION["userName"] = $_POST["Name"];
     }

     if(empty($_POST["Email"])== true){
      $_SESSION["emailError"] = "Bitte gebe eine Email ein!";
      $_SESSION["email"] = $_POST["Email"];
      } else {
      $_SESSION["emailError"] = "";
      $_SESSION["email"] = $_POST["Email"];
      }

     if(empty($_POST["Betreff"])==true){
      $_SESSION["betreffError"] = "Bitte gebe einen Betreff ein!";
      $_SESSION["betreff"] = $_POST["Betreff"];
    }else {
      $_SESSION["betreffError"] = "";
      $_SESSION["betreff"] = $_POST["Betreff"];
    }

     if(empty($_POST["Nachricht"])==true){
      $_SESSION["nachrichtError"] = "Bitte gebe eine Nachricht ein!";
      $_SESSION["nachricht"] = $_POST["Nachricht"];
    }else {
      $_SESSION["nachrichtError"] = "";
      $_SESSION["nachricht"] = $_POST["Nachricht"];
    }

     if(empty($_POST["Name"]) || empty($_POST["Email"]) || empty($_POST["Betreff"]) || empty($_POST["Nachricht"])){
       header("Location: contact.php?error=emptyFields");
       exit();
     }else{
       if(strlen(validate($_POST["Name"])) <= 3){
         $_SESSION["nameError"] = "Der Benutzername muss grösser als 3 Buchstaben sein!";
         $_SESSION["userName"] = $_POST["Name"];
         $error = true;
       }
       if(!filter_var($_POST["Email"], FILTER_VALIDATE_EMAIL)){
         $_SESSION["emailError"] = "Bitte gebe eine gültige Email ein!";
         $_SESSION["email"] = $_POST["Email"];
         $error = true;
       }
       if(strlen(validate($_POST["Betreff"])) <= 6){
         $_SESSION["betreffError"] = "Bitte gebe einen längeren Betreff ein!";
         $_SESSION["betreff"] = $_POST["Betreff"];
         $error = true;
       }
       if(strlen(validate($_POST["Nachricht"])) <= 10){
        $_SESSION["nachrichtError"] = "Bitte gebe eine längere Nachricht ein!";
        $_SESSION["nachricht"] = $_POST["Nachricht"];
        $error = true;
       }

       if($error == true){
         header("Location: contact.php?error=invalidFields");
         exit();
       }else {
         $emailVon = $_POST["Email"];
         $header="From: $emailVon";

         $msg = "Nachricht durch Kontatkformular von: ".$_SESSION["userName"]." ".$emailVon;
         $msg = $msg."\n\n".$_SESSION["nachricht"];

         //Email als UTF-8 senden
         $header .= "\nContent-type: text/plain; charset=utf-8";
         $mail_senden = mail($empfaenger,$betreff,$msg,$header);

         if($mail_senden){
            header("Location: contact.php?Gesendet"); //Mail wurde gesendet
            exit();
         } else{
            header("Location: contact.php?nicht Gesendet"); //Fehler beim Senden
            exit();
         }
       }
     }
}
