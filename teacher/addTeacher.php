<?php

session_start();


$host = "localhost";
$user = "root";
$password = "";
$db = "unvdb";

$con = mysqli_connect($host,$user,$password,$db);

if (isset($_POST['fname'])){

    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $email = $_POST['email'];
    $userName = $_POST['userName'];
    $passwoed = $_POST['password'];
    $title = $_POST['title'];
    $class = $_POST['class'];
    $dep_id = $_POST['dep_id'];
    $unv_id = $_POST['unv_id'];

    $sql = "INSERT INTO `staff`(`stf_first_name`, `stf_last_name`, `stf_email`, `stf_user_name`, `stf_password`,`stf_scientific_title`, `stf_functional_class`, `dep_id`, `unv_id`) VALUES ('$fname','$lname','$email','$userName','$passwoed','$title','$class',$dep_id,$unv_id)";




    if (!mysqli_query($con,$sql))
    {

        echo 'Not added';

    }
    else{

        echo '<script>alert(" added Successfully")</script>' ;
    }


}


?>



<!DOCTYPE html>
<html>
<head>
               <!-- CSS -->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/css/uikit.min.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

<!-- JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/js/uikit.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/js/uikit-icons.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

</head>
<body>

<?php
if ($_SESSION['email']==true) {


    ?>


    <div>
    <div>
        <ul>
            <li><a href="../welcomeAdmin.php">Profile</a></li>
            <li><a href="../college/college.php">Colleges</a></li>
            <li><a href="../Deb/Deb.php">Departments</a></li>
            <li><a href="Teacher.php">Teachers</a></li>
            <li><a href="../student/Student.php">Students</a></li>
            <li><a href="../lec/Lec.php">Lectures</a></li>
            <li><a href="../logOut.php">Logout</a></li>
        </ul>
    </div>

        <div >
            <form action="addTeacher.php" method="POST">
            
            Teachers:<br>
                First Name :<br>
                <input type="text" name="fname"  required>
                    <br>
                Last Name:<br>
                <input type="text" name="lname" required>
                <br>
                Email:<br>
                <input type="email" name="email"  required>
                    <br>
                userName:<br>
                <input type="text" name="userName" required>
                <br>
                password:<br>
                <input type="password" name="password"  required>
                    <br>
                title:<br>
                <input type="text" name="title" required>
                <br>
                class:<br>
                <input type="text" name="class"  required>
                    <br>
                
                deparment:
                <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="inputGroupSelect01">Options</label>
                </div>
                <select class="custom-select" name="dep_id" id="inputGroupSelect01" required>
                    <option selected>Choose...</option>
                    <?php
                        $sql2 = "select * from department";
                        $result2 = mysqli_query($con, $sql2);
                        foreach ($result2 as $initial){?>
                         <option value="<?php echo $initial['ID_dep']?>"><?php echo $initial['dep_name']?></option>
                            <?php
                        }
                    ?>
                </select>
                </div>
                college:
                <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="inputGroupSelect01">Options</label>
                </div>
                <select class="custom-select" name="unv_id" id="inputGroupSelect01" required>
                    <option selected>Choose...</option>
                    <?php
                        $sql3 = "select * from university";
                        $result3 = mysqli_query($con, $sql3);
                        foreach ($result3 as $initial){?>
                         <option value="<?php echo $initial['ID_unv']?>"><?php echo $initial['unv_name']?></option>
                            <?php

                        }
                    ?>
                </select>
                </div>

                <input type="submit" value="submit"><br>
            </form>
        </div>
    </div>
<?php }  else {
    header("location: loginAdmin.php");
}?>


</body>
</html>