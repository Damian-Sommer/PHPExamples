<?php
$title = "Webshop";
$arrayActive = array(" ", " ", "active");
include_once "includes/header.php";
?>
<?php
// connection attributes
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "webshop";
$password = "pGAbv5FP";
$port = "3307";
// create connection
$conn = mysqli_connect($servername,$username,$password,$dbname,intval($port));

// Check connection
if (mysqli_connect_errno() <> 0) {
    die("Connection failed: " . mysqli_connect_error());
}else{
  $query = "Select * from webshop.produkt";
  $result = mysqli_query($conn, $query);
  if (mysqli_num_rows($result) > 0) {
  // output data of each row
  ?>
  <div class="grid-container">
    <?php
      while($row = mysqli_fetch_assoc($result)) {
        echo '
        <div class="product">
        <p class="id">Produkt-Nr: '.$row["idprodukt"].'</p>
        <p class="name">'.$row["produktName"].'</p>'
        ?>
        <?php
          if($row["produktBild"] != null ||$row["produktBild"] != "" ){
            echo '<img src="'.$row["produktBild"].'" class="produktBild">';
          }

          if(($row["produktBeschreibung"] != null) || ($row["produktBeschreibung"] != "")){
            echo '<p class="produktBeschreibung">'.$row["produktBeschreibung"].'</p>';
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
