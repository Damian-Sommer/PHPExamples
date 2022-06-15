<?php
$title = "Webshop";
$arrayActive = array(" ", " ", "active");
include_once "includes/header.php";
?>
<?php
// connection attributes
$servername = "localhost";
$username = "root";
$dbname = "webshop";
$password = "pGAbv5FP";
$port = "3307";
// create connection
$conn = mysqli_connect($servername,$username,$password,$dbname,intval($port));

// Check connection
if (mysqli_connect_errno() <> 0) {
    die("Connection failed: " . mysqli_connect_error());
}else{
  $query = "Select * from webshop.artikel";
  $result = mysqli_query($conn, $query);
  if (mysqli_num_rows($result) > 0) {
  // output data of each row
  ?>
  <div class="grid-container">
    <?php
    //display every Product / Article from the Database
    //
      while($row = mysqli_fetch_assoc($result)) {
        echo '
        <div class="product">
        <p class="id">Produkt-Nr: '.$row["aNr"].'</p>
        <p class="name">'.$row["ArtUnterGruppe_augID"].'</p>'
        ?>
        <?php
          if($row["image"] != null ||$row["image"] != "" ){
            echo '<img src="'.$row["image"].'" class="produktBild">';
          }

          if(($row["techSpez"] != null) || ($row["techSpez"] != "")){
            echo '<p class="produktBeschreibung">'.$row["techSpez"].'</p>';
          }
        ?>
        <?php
        echo '</div>';
      }
    ?>
  </div>
<?php
} else {
  echo "0 results";
}}
echo "Connected successfully";
?>
<?php
include_once "includes/footer.php";
 ?>
