<?php 
include('../header.php');
include('../utility/common.php');
include('/config.php');
include(ROOT_PATH.'language/'.$lang_code_global.'/lang_add_rented.php');
if(!isset($_SESSION['objLogin'])){
	header("Location: " . WEB_URL . "logout.php");
	die();
}
$success = "none";
$r_name = '';
$r_email = '';
$r_contact = '';
$r_address = '';
$r_nid = '';
$r_floor_no = 0;
$r_unit_no = 0;
$r_advance = '';
$r_rent_pm = '';
$r_date = '';
$r_month = '';
$r_year = '';
$r_password = '';
$r_status = '0';
$branch_id = '';
$title = $_data['add_new_renter'];
$button_text = $_data['save_button_text'];
$successful_msg = $_data['added_renter_successfully'];
$form_url = WEB_URL . "rent/addrent.php";
$id="";
$hdnid="0";
$image_rnt = WEB_URL . 'img/no_image.jpg';
$img_track = '';

if(isset($_POST['txtRName'])){
	if(isset($_POST['hdn']) && $_POST['hdn'] == '0'){
		$r_password = $_POST['txtPassword'];
		$image_url = uploadImage();
		if(isset($_POST['chkRStaus'])){
			$r_status = 1;
		}
		$sql = "INSERT INTO tbl_add_rent(r_name,r_email,r_contact,r_address,r_nid,r_floor_no,r_unit_no,r_advance,r_rent_pm,r_date,r_month,r_year,r_password,r_status,image,branch_id) values('$_POST[txtRName]','$_POST[txtREmail]','$_POST[txtRContact]','$_POST[txtRAddress]','$_POST[txtRentedNID]','$_POST[ddlFloorNo]','$_POST[ddlUnitNo]','$_POST[txtRAdvance]','$_POST[txtRentPerMonth]','$_POST[txtRDate]','$_POST[ddlMonth]','$_POST[ddlYear]','$r_password','$r_status','$image_url','" . $_SESSION['objLogin']['branch_id'] . "')";
		mysql_query($sql,$link);
		//update unit status
		$sqlx = "UPDATE `tbl_add_unit` set status = 1 where floor_no = '".(int)$_POST['ddlFloorNo']."' and uid = '".(int)$_POST['ddlUnitNo']."'";
		mysql_query($sqlx,$link);
		////////////////////////
		mysql_close($link);
		$url = WEB_URL . 'rent/rentlist.php?m=add';
		header("Location: $url");
		
	}
	else{
		$image_url = uploadImage();
		if($image_url == ''){
			$image_url = $_POST['img_exist'];
		}
		if(isset($_POST['chkRStaus'])){
			$r_status = 1;
		}
		$sql = "UPDATE `tbl_add_rent` SET `r_name`='".$_POST['txtRName']."',`r_email`='".$_POST['txtREmail']."',`r_password`='".$_POST['txtPassword']."',`r_contact`='".$_POST['txtRContact']."',`r_address`='".$_POST['txtRAddress']."',`r_nid`='".$_POST['txtRentedNID']."',`r_floor_no`='".$_POST['ddlFloorNo']."',`r_unit_no`='".$_POST['ddlUnitNo']."',`r_advance`='".$_POST['txtRAdvance']."',`r_rent_pm`='".$_POST['txtRentPerMonth']."',`r_date`='".$_POST['txtRDate']."',`r_month`='".$_POST['ddlMonth']."',`r_year`='".$_POST['ddlYear']."',`r_status`='".$r_status."',`image`='".$image_url."' WHERE rid='".$_GET['id']."'";
		mysql_query($sql,$link);
		//update unit status
		$sqlx = "UPDATE `tbl_add_unit` set status = 0 where floor_no = '".(int)$_POST['hdnFloor']."' and uid = '".(int)$_POST['hdnUnit']."'";
		mysql_query($sqlx,$link);
		$sqlxx = "UPDATE `tbl_add_unit` set status = 1 where floor_no = '".(int)$_POST['ddlFloorNo']."' and uid = '".(int)$_POST['ddlUnitNo']."'";
		mysql_query($sqlxx,$link);
		///////////////////////////////////////////
		$url = WEB_URL . 'rent/rentlist.php?m=up';
		header("Location: $url");
	}

	$success = "block";
}

if(isset($_GET['id']) && $_GET['id'] != ''){
	$result = mysql_query("SELECT * FROM tbl_add_rent where rid = '" . $_GET['id'] . "'",$link);
	while($row = mysql_fetch_array($result)){
		$r_name = $row['r_name'];
		$r_email = $row['r_email'];
		$r_contact = $row['r_contact'];
		$r_address = $row['r_address'];
		$r_nid = $row['r_nid'];
		$r_floor_no = $row['r_floor_no'];
		$r_unit_no = $row['r_unit_no'];
		$r_advance = $row['r_advance'];
		$r_rent_pm = $row['r_rent_pm'];
		$r_date = $row['r_date'];
		$r_month = $row['r_month'];
		$r_year = $row['r_year'];
		$r_status = $row['r_status'];
		$r_password = $row['r_password'];
		if($row['image'] != ''){
			$image_rnt = WEB_URL . 'img/upload/' . $row['image'];
			$img_track = $row['image'];
		}
		$hdnid = $_GET['id'];
		$title = $_data['update_rent'];
		$button_text = $_data['update_button_text'];
		$successful_msg = $_data['update_renter_successfully'];
		$form_url = WEB_URL . "rent/addrent.php?id=".$_GET['id'];
	}
	
	//mysql_close($link);

}

//for image upload
function uploadImage(){
	if((!empty($_FILES["uploaded_file"])) && ($_FILES['uploaded_file']['error'] == 0)) {
	  $filename = basename($_FILES['uploaded_file']['name']);
	  $ext = substr($filename, strrpos($filename, '.') + 1);
	  if(($ext == "jpg" && $_FILES["uploaded_file"]["type"] == 'image/jpeg') || ($ext == "png" && $_FILES["uploaded_file"]["type"] == 'image/png') || ($ext == "gif" && $_FILES["uploaded_file"]["type"] == 'image/gif')){   
	  	$temp = explode(".",$_FILES["uploaded_file"]["name"]);
	  	$newfilename = NewGuid() . '.' .end($temp);
		move_uploaded_file($_FILES["uploaded_file"]["tmp_name"], ROOT_PATH . '/img/upload/' . $newfilename);
		return $newfilename;
	  }
	  else{
	  	return '';
	  }
	}
	return '';
}
function NewGuid() { 
    $s = strtoupper(md5(uniqid(rand(),true))); 
    $guidText = 
        substr($s,0,8) . '-' . 
        substr($s,8,4) . '-' . 
        substr($s,12,4). '-' . 
        substr($s,16,4). '-' . 
        substr($s,20); 
    return $guidText;
}	
?>
<!-- Content Header (Page header) -->

<section class="content-header">
  <h1><?php echo $_data['add_new_renter'];?></h1>
  <ol class="breadcrumb">
    <li><a href="<?php echo WEB_URL?>dashboard.php"><i class="fa fa-dashboard"></i><?php echo $_data['home_breadcam'];?></a></li>
    <li class="active"><?php echo $_data['add_new_renter_information_breadcam'];?></li>
    <li class="active"><?php echo $_data['add_new_renter_breadcam'];?></li>
  </ol>
</section>
<!-- Main content -->
<section class="content">
<!-- Full Width boxes (Stat box) -->
<div class="row">
  <div class="col-md-12">
    <div align="right" style="margin-bottom:1%;"> <a class="btn btn-primary" title="" data-toggle="tooltip" href="<?php echo WEB_URL; ?>rent/rentlist.php" data-original-title="<?php echo $_data['back_text'];?>"><i class="fa fa-reply"></i></a> </div>
    <div class="box box-info">
      <div class="box-header">
        <h3 class="box-title"><?php echo $_data['add_new_renter_entry_form'];?></h3>
      </div>
     
      <!-- /.box-body -->
    </div>
    <!-- /.box -->
  </div>
</div>
<!-- /.row -->
<script type="text/javascript">
function validateMe(){
	if($("#txtRName").val() == ''){
		alert("Rented Name Required !!!");
		$("#txtRName").focus();
		return false;
	}
	else if($("#txtREmail").val() == ''){
		alert("Email Required !!!");
		$("#txtREmail").focus();
		return false;
	}
	else if($("#txtPassword").val() == ''){
		alert("Password Required !!!");
		$("#txtPassword").focus();
		return false;
	}
	else if($("#txtRContact").val() == ''){
		alert("Contact Number Required !!!");
		$("#txtRContact").focus();
		return false;
	}
	else if($("#txtRAddress").val() == ''){
		alert("Address Required !!!");
		$("#txtRAddress").focus();
		return false;
	}
	else if($("#txtRentedNID").val() == ''){
		alert("NID Required !!!");
		$("#txtRentedNID").focus();
		return false;
	}
	else if($("#ddlFloorNo").val() == ''){
		alert("Floor Required !!!");
		$("#ddlFloorNo").focus();
		return false;
	}
	else if($("#ddlUnitNo").val() == ''){
		alert("Unit Required !!!");
		$("#ddlUnitNo").focus();
		return false;
	}
	else if($("#txtRAdvance").val() == ''){
		alert("Advance Rent Required !!!");
		$("#txtRAdvance").focus();
		return false;
	}
	else if($("#txtRentPerMonth").val() == ''){
		alert("Rent Per Month Required !!!");
		$("#txtRentPerMonth").focus();
		return false;
	}
	else if($("#txtRDate").val() == ''){
		alert("Rent Date Required !!!");
		$("#txtRDate").focus();
		return false;
	}
	else if($("#ddlMonth").val() == ''){
		alert("Rented Month Required !!!");
		$("#ddlMonth").focus();
		return false;
	}
	else if($("#ddlYear").val() == ''){
		alert("Rented Year Required !!!");
		$("#ddlYear").focus();
		return false;
	}
	else{
		return true;
	}
}
</script>
<?php include('../footer.php'); ?>
