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
   <style type="text/css">
     /* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
    
    background-color: #fefefe;
    margin: auto;
    padding: 0;
    border: 1px solid #888;
    width: 60%;
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
    -webkit-animation-name: animatetop;
    -webkit-animation-duration: 0.4s;
    animation-name: animatetop;
    animation-duration: 0.4s
}

/* Add Animation */
@-webkit-keyframes animatetop {
    from {top:-300px; opacity:0}
    to {top:0; opacity:1}
}

@keyframes animatetop {
    from {top:-300px; opacity:0}
    to {top:0; opacity:1}
}

/* The Close Button */
.close {
    color: white;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}

.modal-header {
    padding: 2px 16px;
    background-color: #138D75;
    color: white;
}

.modal-body {padding: 2px 16px;}

.modal-footer {
    padding: 2px 16px;
    background-color: #138D75;
    color: white;
}
.modal-backdrop {
  z-index: -1;
}
</style>
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
                        
                    </a>
                </div>
              
                 <span class="logout-spn" >
                  <a href="../index.html" style="color:#fff;">LOGOUT</a>  

                </span>
            </div>
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                 
                        
 <li >
                        <?php
                         $username = $_GET['username'];
                        ?>
                        <a href="index.php?username=<?php echo $username?>" ><i class="fa fa-desktop "></i>Dashboard <span class="badge"></span></a>
                    </li>
                   

                  
                    <li class="active-link">
                        <a href="#"><i class="fa fa-edit "></i>Policy<span class="badge"></span></a>
                    </li>
                    <li>

                    <a href="propertymanagement.php?username=<?php echo $username?>" ><i class="fa fa-desktop "></i>Property Management <span class="badge"></span></a>
                    </li>

                    <li>
                   <a href="manageBooking.php?username=<?php echo $_GET['username'];?>" ><i class="fa fa-desktop "></i>Booking Management <span class="badge"></span></a>
                    </li>


                 <li>
                   <a href="inventory.php?username=<?php echo $_GET['username'];?>" ><i class="fa fa-desktop "></i>Reports <span class="badge"></span></a>
                    </li>

                    
                </ul>
                            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>POLICY </h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                  <div class="col-lg-12 ">
                  <div class="alert alert-info">
                            <?php if (isset($_GET['username']))
                             {
                              ?>
                            
                             <strong>Welcome Admin: <?php
                             $username = $_GET['username']; 
                             if($username == null || $username ==""){
                                 //do a redirect
                                 header('Location:../index.html');
                             }else{
                                 echo $username;
                             }
                             ?></strong>
                             <?php
                           }else {
                             header('Location:../index.html');
                           }
                            ?>
                        </div>
                        </div>
                 <!-- /. ROW  --> 
                 <div class="col-lg-4 col-md-4">
                      
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#home" data-toggle="tab">Add Policy</a>
                            </li>
                            <li class=""><a href="#profile" data-toggle="tab">View Policies</a>
                            </li>

                          

                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade active in" id="home">
                                
                               <form action="addPolicy.php" method="post" enctype="multipart/form-data" name="form2" id="form2">
<table id="form_table" >
<tr style=" height:50px; ">
<td>
ADMIN &nbsp
</td>
<td>

  <input id="username" type=""  class="form-control" readonly = "true" name="username" value="<?php echo $_GET['username'];?>" placeholder="Enter Title" style="width : 600px;"> 
     
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
TITLE &nbsp
</td>
<td>

  <input id="title" type=""  class="form-control"  name="title" value="" placeholder="Enter Title" style="width : 600px;"> 
     
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
POLICY &nbsp
</td>
<td>
 <textarea rows="4" cols="50" id="policy" type="policy" class="form-control" name="policy" value="" placeholder="" style="width : 600px;"> </textarea> 
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>


<tr style=" height:50px; ">
<td>

</td>
<td>
<input type="submit" id="save" name="save" class="buttoncustom btn " class="fa fa-thumbs-up" value="Save" />


</td>
</tr>
  
                     
              
         </table>
 
      </form>

                            </div>
                            <div class="tab-pane fade" id="profile">
                                
                                <table id="owners" class="table table-striped table-bordered nowrap" cellspacing="0" width="100%">
    <link rel="stylesheet" type="text/css" href="../css/jquerydataTables.css">
    <p>
    <thead>
        <tr>
            
                                        <th>TITLE</th>
                                        <th>POLICY</th>
                                        
 
 <th>Edit/Delete</th>
        </tr>
    </thead>
    <?php
    include('../config/dbConfig.php');
        $query="SELECT * FROM policy";
        $result = mysqli_query($db,$query);
        $i=1;
        while($row = mysqli_fetch_assoc($result))
        {
          

        

                  $id = $row['id'];
                  $title = $row['title'];
                  $policy = $row['policy'];
                  
                  
    ?>
           
            <tr>
    <?php         $rowID = $row['id']; ?>     
                
               

                <td><?php echo $row['title']; ?></td>
                <td><?php echo $row['policy']; ?></td>
                


                <td style="text-align: center">
                    <div class="btn-toolbar">
                        <div class="btn-group">
                            <a class="btn btn-danger" href="#deleteAdmin<?php echo$i?>" data-sfid='"<?php echo $row['ID'];?>"' data-toggle="modal"><i class="icon-trash icon-white"></i> Delete</a>

                             <a class="btn update"  href="#adminModal<?php echo$i?>" data-sfid='"<?php echo $row['ID'];?>"' data-toggle="modal">Edit</a>
                            <!--Yor Edit Modal Goes Here-->
                            <div id="adminModal<?php echo $i; ?>" class="modal fade in" role="dialog" ria-labelledby="myModals" aria-hidden="true">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="closeOwner" data-dismiss="modal">X</span>
      <h2><center>Edit Policy</center></h2>
    </div>
    <div class="modal-body">
   
   <div class="panel-body" style="overflow:auto;">
   
   <form action="editPolicy.php" method="post" enctype="multipart/form-data" name="form1" id="form1">
    
                   
              
<table id="form_table" >
<tr style=" height:50px; ">
<td>
Admin &nbsp
</td>
<td>
 <input id="uid" type="" class="form-control" readonly="true" name="uid" value="<?php echo $_GET['username']; ?>" placeholder="<?php echo $_GET['username']; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Policy ID &nbsp
</td>
<td>
 <input id="id" type="" class="form-control" readonly="true" name="id" value="<?php echo $id; ?>" placeholder="<?php echo $id; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Policy Title &nbsp
</td>
<td>
   <input id="title" type="" class="form-control"  name="title" value="<?php echo $title; ?>" placeholder="<?php echo $title; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Policy &nbsp
</td>
<td>
 <input id="policy" type="" class="form-control" name="policy" value="<?php echo $policy; ?>" placeholder="<?php echo $policy; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>


<tr style=" height:50px; ">
<td>

</td>
<td>
<input type="submit" id="save" name="save" class="buttoncustom btn " value="Update" />
<a href="#" class="btn-info" data-dismiss="modal">Close</a>
</form>
</td>
</tr>
  
                     
              
         </table>
      </form>
      </div>
      
     
</div>

    </div>
    <div class="modal-footer">
      <h3></h3>
    </div>
  </div>

</div>

<div id="deleteAdmin<?php echo $i; ?>" class="modal fade in" role="dialog" ria-labelledby="myModals" aria-hidden="true">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="closeOwner" data-dismiss="modal">X</span>
      <h2><center>Delete policy</center></h2>
    </div>
    <div class="modal-body">
   
   <div class="panel-body" style="overflow:auto;">
   
  <form action="deletePolicy.php" method="post" enctype="multipart/form-data" name="form3" id="form3">
    
                   
              
<table id="form_table" >
<tr style=" height:50px; ">
<td>
Admin &nbsp
</td>
<td>
 <input id="uid" type="" class="form-control" readonly="true" name="uid" value="<?php echo $_GET['username']; ?>" placeholder="<?php echo $_GET['username']; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Policy ID &nbsp
</td>
<td>
 <input id="id" type="" class="form-control" readonly="true" name="id" value="<?php echo $id; ?>" placeholder="<?php echo $id; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Policy Title &nbsp
</td>
<td>
   <input id="title" type="" class="form-control" readonly="true" name="title" value="<?php echo $title; ?>" placeholder="<?php echo $title; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Policy &nbsp
</td>
<td>
 <input id="policy" type="" class="form-control" readonly="true" name="policy" value="<?php echo $policy; ?>" placeholder="<?php echo $policy; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>


<tr style=" height:50px; ">
<td>

</td>
<td>
<input type="submit" id="save" name="save" class="buttoncustom btn " value="delete" />
<a href="#" class="btn-info" data-dismiss="modal">Close</a>
</form>
</td>
</tr>
  
                     
              
         </table>
      </form>
      </div>
      
     
</div>

    </div>
    <div class="modal-footer">
      <h3></h3>
    </div>
  </div>

</div>

    <script type='text/javascript'>
        
       // var modal = document.getElementById('editModal');
        /* attach a submit handler to the form */
    $("#form1").submit(function(event) {
     // alert("i am here ");
      /* stop form from submitting normally */
      event.preventDefault();

      /* get the action attribute from the <form action=""> element */
      var $form = $( this ),
          url = $form.attr( 'action' );

      /* Send the data using post with element id name and name2*/
      var posting = $.post( url, {id: $('#id').val(),title: $('#title').val(),policy: $('#policy').val(),uid: $('#uid').val() } );

      /* Alerts the results */
      /*posting.done(function(data) {
         $('#editModal').modal.style.display="none"
         alert(data);
         document.getElementById("editor").reset();
        //modal.style.display = "none";
        
        
      });*/

       posting.done(function( data ) {
          
        alert(data);
        document.getElementById("form1").reset();
        window.location.reload();
        
        
    });
    
    
      $("#form3").submit(function(event) {
     // alert("i am here ");
      /* stop form from submitting normally */
      event.preventDefault();

      /* get the action attribute from the <form action=""> element */
      var $form = $( this ),
          url = $form.attr( 'action' );

      /* Send the data using post with element id name and name2*/
      var posting = $.post( url, {id: $('#id').val(),uid: $('#uid').val() } );

       posting.done(function( data ) {
          
        alert(data);
        document.getElementById("form3").reset();
        window.location.reload();
        
        
    });
        
        
    });
    
    </script>
                         
                             </div>
                    </div>
                </td>
             </tr>
     <?php $i++; }  ?>
    </p>
    </table>

                            </div>
                        

                        </div>
                    </div>

                         
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
    <div class="footer">
      
    
             <div class="row">
                <div class="col-lg-12" >
                   
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
    <script type="text/javascript">
     $("#form3").submit(function(event) {
     // alert("i am here ");
      /* stop form from submitting normally */
      event.preventDefault();

      /* get the action attribute from the <form action=""> element */
      var $form = $( this ),
          url = $form.attr( 'action' );

      /* Send the data using post with element id name and name2*/
      var posting = $.post( url, {id: $('#id').val(),uid: $('#uid').val() } );

       posting.done(function( data ) {
          
        alert(data);
        document.getElementById("form3").reset();
        window.location.reload();
        
        
    });
        
        
    });
    
    </script>
   
</body>
</html>
