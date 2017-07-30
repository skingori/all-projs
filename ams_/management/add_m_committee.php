<?php 
include('../header.php');
include(ROOT_PATH.'language/'.$lang_code_global.'/lang_add_m_committee.php');
if(!isset($_SESSION['objLogin'])){
	header("Location: " . WEB_URL . "logout.php");
	die();
}
$success = "none";
$mc_name = '';
$mc_email = '';
$mc_contact = '';
$mc_pre_address = '';
$mc_per_address = '';
$mc_nid = '';
$member_type = '';
$mc_joining_date = '';
$mc_ending_date = '';
$mc_status = '0';
$mc_password = '';
$branch_id = '';
$title = $_data['add_new_m_committee'];
$button_text = $_data['save_button_text'];
$successful_msg = $_data['added_m_committee_successfully'];
$form_url = WEB_URL . "management/add_m_committee.php";
$id="";
$hdnid="0";
$image_mc = WEB_URL . 'img/no_image.jpg';
$img_track = '';
$rowx_unit = array();

if(isset($_POST['txtMCName'])){
	if(isset($_POST['hdn']) && $_POST['hdn'] == '0'){
	$mc_password = generateStrongPassword();
	$image_url = uploadImage();
	if(isset($_POST['chkRStaus'])){
		$mc_status = 1;
	}
	$sql = "INSERT INTO tbl_add_management_committee(mc_name,mc_email, mc_contact, mc_pre_address,mc_per_address,mc_nid,member_type,mc_joining_date,mc_ending_date,mc_password,mc_status,image,branch_id) values('$_POST[txtMCName]','$_POST[txtMCEmail]','$_POST[txtMCContact]','$_POST[txtMCPreAddress]','$_POST[txtMCPerAddress]','$_POST[txtMCNID]','$_POST[ddlMemberType]','$_POST[txtMCJoiningDate]','$_POST[txtMCEndingDate]','$mc_password','$mc_status','$image_url','" . $_SESSION['objLogin']['branch_id'] . "')";
	mysql_query($sql,$link);
	mysql_close($link);
	$url = WEB_URL . 'management/m_committee_list.php?m=add';
	header("Location: $url");
	
}
else{
	$image_url = uploadImage();
	if($image_url == ''){
		$image_url = $_POST['img_exist'];
	}
	if(isset($_POST['chkRStaus'])){
		$mc_status = 1;
	}
	$sql = "UPDATE `tbl_add_management_committee` SET `mc_name`='".$_POST['txtMCName']."',`mc_email`='".$_POST['txtMCEmail']."',`mc_contact`='".$_POST['txtMCContact']."',`mc_pre_address`='".$_POST['txtMCPreAddress']."',`mc_per_address`='".$_POST['txtMCPerAddress']."',`mc_nid`='".$_POST['txtMCNID']."',`member_type`='".$_POST['ddlMemberType']."',`mc_joining_date`='".$_POST['txtMCJoiningDate']."',`mc_ending_date`='".$_POST['txtMCEndingDate']."',`mc_status`='".$mc_status."',`image`='".$image_url."' WHERE mc_id='".$_GET['id']."'";
	mysql_query($sql,$link);
	mysql_close($link);
	$url = WEB_URL . 'management/m_committee_list.php?m=up';
	header("Location: $url");
}

$success = "block";
}

if(isset($_GET['id']) && $_GET['id'] != ''){
	$result = mysql_query("SELECT * FROM tbl_add_management_committee where mc_id = '" . $_GET['id'] . "'",$link);
	while($row = mysql_fetch_array($result)){
		
		$mc_name = $row['mc_name'];
		$mc_email = $row['mc_email'];
		$mc_contact = $row['mc_contact'];
		$mc_pre_address = $row['mc_pre_address'];
		$mc_per_address = $row['mc_per_address'];
		$mc_nid = $row['mc_nid'];
		$member_type = $row['member_type'];
		$mc_joining_date = $row['mc_joining_date'];
		$mc_ending_date = $row['mc_ending_date'];
		$mc_status = $row['mc_status'];
		if($row['image'] != ''){
			$image_mc = WEB_URL . 'img/upload/' . $row['image'];
			$img_track = $row['image'];
		}
		$hdnid = $_GET['id'];
		$title = $_data['update_m_committee'];
		$button_text=$_data['update_button_text'];
		$successful_msg="Update Management Committee Member Successfully";
		$form_url = WEB_URL . "management/add_m_committee.php?id=".$_GET['id'];
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
  <h1><?php echo $title;?></h1>
  <ol class="breadcrumb">
    <li><a href="<?php echo WEB_URL?>dashboard.php"><i class="fa fa-dashboard"></i><?php echo $_data['home_breadcam'];?></a></li>
    <li class="active"><?php echo $_data['m_committee'];?></li>
    <li class="active"><?php echo $_data['add_new_m_committee_breadcam'];?></li>
  </ol>
</section>
<!-- Main content -->
<section class="content">
<!-- Full Width boxes (Stat box) -->
<div class="row">
  <div class="col-md-12">
    <div align="right" style="margin-bottom:1%;"> <a class="btn btn-primary" title="" data-toggle="tooltip" href="<?php echo WEB_URL; ?>management/m_committee_list.php" data-original-title="<?php echo $_data['back_text'];?>"><i class="fa fa-reply"></i></a> </div>
    <div class="box box-info">
      <div class="box-header">
        <h3 class="box-title"><?php echo $_data['add_new_m_committee_entry_form'];?></h3>
      </div>
      
      <!-- /.box-body -->
    </div>
    <!-- /.box -->
  </div>
</div>
<!-- /.row -->
<?php include('../footer.php'); ?>
