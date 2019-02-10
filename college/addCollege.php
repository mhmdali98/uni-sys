<?php

session_start();


$host = "localhost";
$user = "root";
$password = "";
$db = "unvdb";

$con = mysqli_connect($host,$user,$password,$db);
?>
<?php


if (isset($_POST['nameCollege'])){

    $nameCollege = $_POST['nameCollege'];
    $supNameCollege = $_POST['supNameCollege'];

    $sql = "INSERT INTO university( unv_name , unv_sub_name) VALUES ('$nameCollege','$supNameCollege')";




    if (!mysqli_query($con,$sql))
    {

        echo 'Not inserted.';

    }
    else{

        echo '<script>alert("Current Course Inserted Successfully")</script>' ;
    }


}


?>



<!DOCTYPE html>
<html>
<head>
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
<body>

<?php
if ($_SESSION['email']==true) {

    ?>


    <div>
    <div>
        <ul>
            <li><a href="../welcomeAdmin.php">Profile</a></li>
            <li><a href="college.php">Colleges</a></li>
            <li><a href="../Deb/Deb.php">Departments</a></li>
            <li><a href="../teacher/Teacher.php">Teachers</a></li>
            <li><a href="../student/Student.php">Students</a></li>
            <li><a href="../lec/lec.php">Lectures</a></li>
            <li><a href="../logOut.php">Logout</a></li>
        </ul>
    </div>

        <div >
            <form action="addCollege.php" method="POST">
            
            colleges:<br>
                name college:<br>
                <input type="text" name="nameCollege"  required>
                    <br>
                sup name:<br>
                <input type="text" name="supNameCollege" required>
                    
                <input type="submit" value="submit"><br>
            </form>
        </div>
    </div>
<?php }  else {
    header("location: loginAdmin.php");
}?>


</body>
</html>