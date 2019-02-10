<?php

session_start();


$host = "localhost";
$user = "root";
$password = "";
$db = "unvdb";

$link = mysqli_connect($host,$user,$password,$db);
$id1 = $_GET['id'];


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
<body>

<div>
        <ul>
            <li><a href="../welcomeTeacher.php">Profile</a></li>
            <li><a href="lecT.php">my lectures</a></li>
            <li><a href="../logOut.php">Logout</a></li>
        </ul>
    </div>


<?php


$email =  $_SESSION['email'];
$password = $_SESSION['password'];
if ($_SESSION['email'] == true){

    $sql = "SELECT * FROM `lecture_lab` WHERE ID_lec_lab=$id1" ;
    $result = mysqli_query($link,$sql);
    foreach ($result as $initial){
        $stage= $initial['stageLec']; 
        $id_dep= $initial['id_dep'];
        $corse= $initial['lec_lab_corse'];
       }
    


    $sql2 = "SELECT * FROM `student` WHERE stu_stage=$stage AND dep_id=$id_dep AND corse=$corse";
    $result2 = mysqli_query($link,$sql2);
    
?>

       <table class="table table-striped">
       <tr>
           <th width="5%">Serial</th>
           <th width="20%">Student First Name</th>
           <th width="20%">Student Last Name</th>
           <th>Email</th>
           <th>Degree</th>
           <th>Action</th>
       </tr>

       <?php
       if ($result2) {
       

           $i = 0;
           $Deg = 0;
           foreach ($result2 as $sdata) {
               $i++;
               $idStu = $sdata['ID_stu'];
               $cor = $sdata['corse'];

               $sqlDeg = "SELECT * FROM `degrees` WHERE `stu_id`= $idStu AND `lec_lab_id`=$id1 And `corse`= $cor";
               $resultD = mysqli_query($link,$sqlDeg);    
               foreach ($resultD as $initialD){
                    $Deg= $initialD['deg_number']; 
                  
                  } 

               ?>

               <tr>
                   <td><?php echo $i;?></td>
                   <td><?php echo $sdata['stu_first_name']?></td>
                   <td><?php echo $sdata['stu_last_name']?></td>
                   <td><?php echo $sdata['stu_email']?></td>
                   <td><?php echo $Deg?></td>
                   <td>
               
                       <a  href="insertDegree.php?id1=<?php echo $sdata['ID_stu'];?>&id2=<?php echo $id1;?>">insert</a>&nbsp&nbsp|&nbsp&nbsp
                       <a  href="upDateDegree.php?id1=<?php echo $sdata['ID_stu'];?>&id2=<?php echo $id1;?>">Edit</a>

                       
                   </td>
               </tr>

           <?php } }else{?>

           <tr><td colspan="5"><h2>No data found</h2></td></tr>
       <?php } ?>
   </table>

<?php
}
else{
    header("location: loginTeacher.php");
}

?>

</body>

</html>