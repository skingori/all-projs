<?php
// Inialize session
session_start();
include_once '../connection/conn.php';

if (!isset($_SESSION['login_username'])) {
	header("Location: index.php");
}


      
$username=$_SESSION['login_username'];
?>



<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Daima || Home</title>

<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/datepicker3.css" rel="stylesheet">
<link href="../css/styles.css" rel="stylesheet">

<!--Icons-->
<script src="../js/lumino.glyphs.js"></script>

<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="../js/respond.min.js"></script>
	<![endif]-->

</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><span>Daima </span>Farming</a>
				<ul class="user-menu">
					<li class="dropdown pull-right">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> User <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<!--<li><a href="#"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Profile</a></li>-->
							<!--<li><a href="#"><svg class="glyph stroked gear"><use xlink:href="#stroked-gear"></use></svg> Settings</a></li>-->
							<li><a href="../logout.php"><svg class="glyph stroked cancel"><use xlink:href="#stroked-cancel"></use></svg> Logout</a></li>
						</ul>
					</li>
				</ul>
			</div>
							
		</div><!-- /.container-fluid -->
	</nav>
		
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<form role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search">
			</div>
		</form>
		<ul class="nav menu">
			<li class="active"><a href="index.php"><svg class="glyph stroked dashboard-dial"><use xlink:href="#stroked-dashboard-dial"></use></svg> Homepage</a></li>
<!-- 000 -->
			<li class="parent">
				<a href="#">
					<span data-toggle="collapse" href="#sub-item-2"><svg class="glyph stroked chevron-down"><use xlink:href="#stroked-chevron-down"></use></svg></span>New Message
				</a>
			</li>
			<li role="presentation" class="divider"></li>
			<li><a href="../logout.php"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Logout</a></li>
		</ul>

	</div><!--/.sidebar-->
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
				<li class="active">dashboard</li>
			</ol>
		</div><!--/.row-->


		<!-- ADD CONTENT HERE -->

		<div class="content">
			<!--<p class="login-box-msg">Register a new Apartment </p>-->
			<p><h4><font color="#a52a2a">Messages</font></h4></p>

			<form class="cmxform" id="deleteloc" method="POST" action="">

				<table align="">
					<tr>
						<td>
							<label for="loc"><b>Recipient</b></label>
						</td>
						<td>
							<select name="client" required class="form-control">
								<?php

								include("../connection/connector.php");
								$query = "SELECT * FROM farmer_table WHERE farmer_status='active'";
								$result = mysql_query($query);
								echo "<option></option>";
								while($row = mysql_fetch_array($result))
								{
									$farmer_firstname = $row[1];
									$farmer_lastname = $row[2];
									$farmer_username = $row[3];
									echo "<option>$farmer_firstname &nbsp $farmer_lastname</option>";
								}

								?>
							</select>
					<tr>
						</td>
						<td> &nbsp <span id="loc "> &nbsp </span></td>
						<td><input type="hidden" value="<?php echo "$farmer_username";?>" name="uname" ></td>
					</tr>
					<tr>
						<td><strong>Message :</strong></td>
						<td><textarea autofocus rows="10" cols="40" required  name="msg" required ></textarea> </td>
					</tr>
					<tr>
						<td> &nbsp </td>
						<td colspan="2">
							<input class="button" type="submit" value="  Send  " name="sender"/>
						</td>
					</tr>
				</table>
			</form>
			<?php
			if (isset($_POST['sender'])){
				$receptor=$_POST['uname'];
				$status='UNREAD';
				$message=$_POST['msg'];
				$query=mysql_query("INSERT INTO daima_messages(`message_sender`,`message_recipient`,`message_details`,`message_status`,`message_time`)
VALUES('{$_SESSION['login_username']}','$receptor','$message','$status' ,now())
")or die(mysql_error());
				?>
				<script type="text/javascript">
					alert('Your Message has been sent');
					window.location="nemsg.php";
				</script>

				<?php
			}
			?>

		</div>
		<!-- END OF CONTENT HERE -->
		</div><!--/.row-->
	</div>	<!--/.main-->

	<script src="../js/jquery-1.11.1.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/chart.min.js"></script>
	<script src="../js/chart-data.js"></script>
	<script src="../js/easypiechart.js"></script>
	<script src="../js/easypiechart-data.js"></script>
	<script src="../js/bootstrap-datepicker.js"></script>
	<script>
		$('#calendar').datepicker({
		});

		!function ($) {
		    $(document).on("click","ul.nav li.parent > a > span.icon", function(){          
		        $(this).find('em:first').toggleClass("glyphicon-minus");      
		    }); 
		    $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>	
</body>

</html>
