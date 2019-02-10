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

    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #16BBD2;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #1B1B1B;
        }
    </style>
</head>


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
        <button><a href="addTeacher.php">Add Teacher</a></button>
    </div>

<?php

if (isset($_SESSION['email']) == true) {
    $email = $_SESSION['email'];

    $sql = "select * from staff";

    $result = mysqli_query($link, $sql);

    $rowcount = mysqli_num_rows($result);

    ?>

    <table class="table table-striped">
        <tr>
            <th>Serial</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>email</th>
            <th>userName</th>
            <th>password</th>
            <th>Scientific Title</th>
            <th>functional Class</th>
            <th>Action</th>
        </tr>

        <?php
        if ($result) {

            $i = 0;
            foreach ($result as $sdata) {
                $i++;

                ?>

                <tr>
                    <td><?php echo $i;?></td>
                    <td><?php echo $sdata['stf_first_name']?></td>
                    <td><?php echo $sdata['stf_last_name']?></td>
                    <td><?php echo $sdata['stf_email']?></td>
                    <td><?php echo $sdata['stf_user_name']?></td>
                    <td><?php echo $sdata['stf_password']?></td>
                    <td><?php echo $sdata['stf_scientific_title']?></td>
                    <td><?php echo $sdata['stf_functional_class']?></td>
                    <td>
                    
                        <a  href="editTeacher.php?id=<?php echo $sdata['ID_stf'];?>">Edit</a>&nbsp&nbsp|&nbsp&nbsp
                        <a  href="deleteTeacher.php?id=<?php echo $sdata['ID_stf'];?>">Delete</a>
                    
                        
                    </td>
                </tr>

            <?php } }else{?>

            <tr><td colspan="5"><h2>No data found</h2></td></tr>
        <?php } ?>
    </table>
    <?php


}else{
    header("location: loginAdmin.php");
}

?>

</html>
