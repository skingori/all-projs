<?php 
include('../header.php');
include(ROOT_PATH.'language/'.$lang_code_global.'/lang_add_unit.php');
if(!isset($_SESSION['objLogin'])){
	header("Location: " . WEB_URL . "logout.php");
	die();
}
$success = "none";
$floor_no = '';
$unit_no = '';
$branch_id = '';
$title = $_data['add_new_unit'];
$button_text = $_data['save_button_text'];
$successful_msg = $_data['add_unit_successfully'];
$form_url = WEB_URL . "unit/addunit.php";
$id="";
$hdnid="0";

if(isset($_POST['ddlFloor'])){
	if(isset($_POST['hdn']) && $_POST['hdn'] == '0'){
		$sql = "INSERT INTO `tbl_add_unit`(floor_no,unit_no,branch_id) values('$_POST[ddlFloor]','$_POST[txtUnit]','" . $_SESSION['objLogin']['branch_id'] . "')";
		mysql_query($sql,$link);
		mysql_close($link);
		$url = WEB_URL . 'unit/unitlist.php?m=add';
		header("Location: $url");
	}
	else{
		$sql = "UPDATE `tbl_add_unit` SET `floor_no`='".$_POST['ddlFloor']."',`unit_no`='".$_POST['txtUnit']."' WHERE uid='".$_GET['id']."'";
		mysql_query($sql,$link);
		mysql_close($link);
		$url = WEB_URL . 'unit/unitlist.php?m=up';
		header("Location: $url");
	}
	$success = "block";
}

if(isset($_GET['id']) && $_GET['id'] != ''){
	$result = mysql_query("SELECT * FROM tbl_add_unit where uid = '" . $_GET['id'] . "'",$link);
	while($row = mysql_fetch_array($result)){
		$floor_no = $row['floor_no'];
		$unit_no = $row['unit_no'];
		$hdnid = $_GET['id'];
		$title = 'Update Floor';
		$button_text = $_data['update_button_text'];
		$successful_msg = $_data['update_unit_successfully'];
		$form_url = WEB_URL . "unit/addunit.php?id=".$_GET['id'];
	}
}
if(isset($_GET['mode']) && $_GET['mode'] == 'view'){
	$title = 'View Unit Details';
}	
?>
<!-- Content Header (Page header) -->

<section class="content-header">
  <h1><?php echo $_data['add_new_unit'];?></h1>
  <ol class="breadcrumb">
    <li><a href="<?php echo WEB_URL?>dashboard.php"><i class="fa fa-dashboard"></i><?php echo $_data['home_breadcam'];?></a></li>
    <li class="active"><?php echo $_data['add_new_unit_information_breadcam'];?></li>
    <li class="active"><?php echo $_data['add_new_unit_breadcam'];?></li>
  </ol>
</section>
<!-- Main content -->
<section class="content">
<!-- Full Width boxes (Stat box) -->
<div class="row">
  <div class="col-md-12">
    <div align="right" style="margin-bottom:1%;"> <a class="btn btn-primary" title="" data-toggle="tooltip" href="<?php echo WEB_URL; ?>unit/unitlist.php" data-original-title="<?php echo $_data['back_text'];?>"><i class="fa fa-reply"></i></a> </div>
    <div class="box box-info">
      <div class="box-header">
        <h3 class="box-title"><?php echo $_data['add_new_unit_entry_form'];?></h3>
      </div>
      
      <!-- /.box-body -->
    </div>
    <!-- /.box -->
  </div>
</div>
<!-- /.row -->
<script type="text/javascript">
function validateMe(){
	if($("#ddlFloor").val() == ''){
		alert("Select Floor !!!");
		$("#ddlFloor").focus();
		return false;
	}
	else if($("#txtUnit").val() == ''){
		alert("Unit Required !!!");
		$("#txtUnit").focus();
		return false;
	}
	else{
		return true;
	}
}
</script>
<?php include('../footer.php'); ?>
