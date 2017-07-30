
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="">
  <title>Sun Apartments</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
  <!-- Morris chart -->
  <link rel="stylesheet" href="plugins/morris/morris.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>
<body class="hold-transition register-page">
<div class="register-box">
  <div class="register-logo">
      <a href="../../index2.html"><b>Sun</b> Apartments</a>
  </div>

  <div class="register-box-body">
    <p class="login-box-msg">Register a new membership</p>

    <form id="sam" action="" method="post">
      <div class="form-group has-feedback">
        <input type="text" class="form-control" placeholder="Sir name" name="sirname" required>
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="text" class="form-control" placeholder="Other Names" name="othernames" required>
        <span class="glyphicon glyphicon-bookmark form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
         <input type="text" class="form-control" placeholder="Username" name="#username" autocomplete="off" id="username" required>
         <span class="glyphicon glyphicon-eye-open form-control-feedback" id="user-result"></span>
      </div>

      <div class="form-group has-feedback">
            <input type="number" class="form-control" placeholder="Mobile Number" name="mnumber" required>
            <span class="glyphicon glyphicon-phone form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
            <input type="text" class="form-control" placeholder="ID number" name="idnumber" required>
            <span class="glyphicon glyphicon-qrcode form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="email" class="form-control" placeholder="Email" name="email" required>
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
         <select name="category" id="usertype"  class="form-control" required>
             <option value="1">Property Owner</option>
             <option value="2">Tenant</option>
             <option value="4">Employee</option>
         <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
         </select>
      </div>
      
      <div class="form-group has-feedback">
            <input type="password" name="password" placeholder="Password" id="password" class="form-control" required>
      </div>
        
      <div>     
        <input type="password" placeholder="Confirm Password" id="confirm_password" class="form-control" required>
        
      </div>
       
            
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheckbox_square-blue" aria-required="true">
            <label>
              <input type="checkbox" required> I agree to the <a href="#">terms</a>
            </label>
          </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
          <button type="submit" name="create" class="btn btn-primary btn-block btn-flat">Register</button>
        </div>
        <!-- /.col -->
      </div>
    </form>
    

    <div class="social-auth-links text-center">
      <p>- OR -</p>
      <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign up using
        Facebook</a>
      <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign up using
        Google+</a>
    </div>

    <a href="login.php" class="text-center">I already have a membership</a>

    <?php include "connection/dbconn.php"; ?>
      <?php
      if (isset($_POST['create'])){
          $sirname=$_POST['sirname'];
          $othernames=$_POST['othernames'];
          $username=$_POST['username'];
          $mnumber=$_POST['mnumber'];
          $idnumber=$_POST['idnumber'];
          $email=$_POST['email'];
          $category=$_POST['category'];
          $password=$_POST['confirm_password'];
          $encrypted = md5($password); // Encrypting pssword using md5 algo
          $query=mysql_query("INSERT INTO users(`username`,`emailad`,`idcard`,`phonenum`,`password`,`sirname`,`othernames`,`category`,`ustatus`)
          VALUES('$username','$email','$idnumber','$mnumber','$encrypted','$sirname','$othernames','$category','inactive')
          ")or die(mysql_error());
          ?>
          <script type="text/javascript">
              alert('You are Now Registered.Please login now to Proceed ');
              window.location="index.php";
          </script>

          <?php
            }
      ?>


  </div>
  <!-- /.form-box -->
</div>
<!-- /.register-box -->

<!-- jQuery 2.2.3 -->
<script src="../../plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="../../bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="../../plugins/iCheck/icheck.min.js"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' // optional
    });
  });
</script>
<script>
    var password = document.getElementById("password")
  , confirm_password = document.getElementById("confirm_password");

function validatePassword(){
  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Don't Match");
  } else {
    confirm_password.setCustomValidity('');
  }
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
</script>
</body>
</html>
