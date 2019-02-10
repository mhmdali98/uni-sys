<?php

session_start();


$host = "localhost";
$user = "root";
$password = "";
$db = "unvdb";

$link = mysqli_connect($host,$user,$password,$db);

?>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
         <!-- CSS -->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/css/uikit.min.css" />
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous"> -->

<!-- JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/js/uikit.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/js/uikit-icons.min.js"></script>
<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script> -->

</head>


<?php
$email =  $_SESSION['email'];
$password = $_SESSION['password'];
if ($_SESSION['email'] == true){


    $sql = "select * from staff where stf_email = '".$email."' AND stf_password = '".$password."'";

    $result = mysqli_query($link,$sql);

    $rowcount = mysqli_num_rows($result);

    ?>
    <div>
        <ul>
            <li><a href="welcomeTeacher.php">Profile</a></li>
            <li><a href="LecTeacher/lecT.php">my lectures</a></li>
            <li><a href="logOut.php">Logout</a></li>
        </ul>
    </div>

    <?php

    while($row = mysqli_fetch_array($result)){
        echo  "name: ".$row['stf_first_name']." ".$row['stf_last_name'];
        echo "<br />";
        echo  "Email: ".$row['stf_email'];
        echo "<br />";
        echo  "userName: ".$row['stf_user_name'];
        echo "<br />";
        echo  "scientific_title: ".$row['stf_scientific_title'];
        echo "<br />";
        echo  "functional_class: ".$row['stf_functional_class'];
        echo "<br />";
    }

}
else{
    header("location: loginTeacher.php");
}



?>
</body>

</html>