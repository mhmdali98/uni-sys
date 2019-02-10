<?php

session_start();

$host = "localhost";
$user = "root";
$password = "";
$db = "unvdb";

$link = mysqli_connect($host,$user,$password,$db);



if (isset($_POST['email'])){
    $email = $_POST['email'];
    $password = $_POST['password'];

    $sql = "select * from student where stu_email = '".$email."' AND stu_password = '".$password."'";

    $result = mysqli_query($link,$sql);

    $rowcount = mysqli_num_rows($result);


    if ($email!='' and $password!='') {

        if ($rowcount == true) {
            $_SESSION['email'] = $email;
            $_SESSION['password'] = $password;
            header('location: welcomeStudent.php');

        } else {
            echo "<script>alert('you have entered incorrect email address or password')</script>";
        }
    }
    else{
        echo "<script>alert('please enter username and password')</script>";
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

<div>
        <form action="loginStudent.php" method="POST">
            
            Email:<br>
            <input type="email" name="email" value="" required><br><br>
            Password:<br>
            <input type="password" name="password" value="" required><br><br>
            <input type="submit" value="login"><br>
        </form>
    </div>
</div>

</body>
</html>