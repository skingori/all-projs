<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Simple Responsive Admin</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
     
           
          
    <div id="wrapper">
         <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        <img src="assets/img/logo.png" />
                    </a>
                </div>
              
                 <span class="logout-spn" >
                  <a href="#" style="color:#fff;">LOGOUT</a>  

                </span>
            </div>
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                 

                <li >
                        <a href="#" ><i class="fa fa-desktop "></i>Dashboard </a>
                    </li>
                  
                      <li >
                        <a href="add.html" ><i class="fa fa-envelope "></i>Add New Post </a>
                    </li>


                 
                </ul>
                            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>MAIN PAGE </h2> 

          <!-- ADD CODE HERE  -->
                        <?php
                        // including the database connection file
                        include_once("config.php");

                        if(isset($_POST['update']))
                        {
                            $id = $_POST['id'];

                            $name=$_POST['name'];
                            $post=$_POST['post'];
                            $email=$_POST['email'];

                            // checking empty fields
                            if(empty($name) || empty($age) || empty($email))
                            {

                                if(empty($name))
                                {
                                    echo "<font color='red'>Name field is empty.</font><br/>";
                                }

                                if(empty($age))
                                {
                                    echo "<font color='red'>Age field is empty.</font><br/>";
                                }

                                if(empty($email)) {
                                    echo "<font color='red'>Email field is empty.</font><br/>";
                                }
                            } else
                                {
                                //updating the table
                                $result = mysqli_query($mysqli, "UPDATE users SET name='$name',age='$post',email='$email' WHERE id=$id");

                                //redirectig to the display page. In our case, it is index.php
                                header("Location: index.php");
                            }
                        }
                        ?>
                        <?php
                        //getting id from url
                        $id = $_GET['id'];

                        //selecting data associated with this particular id
                        $result = mysqli_query($mysqli, "SELECT * FROM users WHERE id=$id");

                        while($res = mysqli_fetch_array($result))
                        {
                            $name = $res['name'];
                            $post = $res['post'];
                            $email = $res['email'];
                        }
                        ?>
                        <html>
                        <head>
                            <title>Edit Data</title>
                        </head>

                        <body>
                        <a href="index.php">Home</a>
                        <br/><br/>

                        <form name="form1" method="post" action="edit.php">
                            <table border="0">
                                <tr>
                                    <td>Name</td>
                                    <td><input type="text" name="name" value=<?php echo $name;?>></td>
                                </tr>
                                <tr>
                                    <td>Age</td>
                                    <td><input type="text" name="post" value=<?php echo $post;?>></td>
                                </tr>
                                <tr>
                                    <td>Email</td>
                                    <td><input type="text" name="email" value=<?php echo $email;?>></td>
                                </tr>
                                <tr>
                                    <td><input type="hidden" name="id" value=<?php echo $_GET['id'];?>></td>
                                    <td><input type="submit" name="update" value="Update"></td>
                                </tr>
                            </table>
                        </form>


            <!-- ADD CODE HERE  -->

                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
              
                 <!-- /. ROW  -->           
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
    <div class="footer">
      
    
             <div class="row">
                <div class="col-lg-12" >
                    &copy;  2014 yourdomain.com | Design by: <a href="http://binarytheme.com" style="color:#fff;"  target="_blank">www.binarytheme.com</a>
                </div>
        </div>
        </div>
          

     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    
   
</body>
</html>
