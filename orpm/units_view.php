<?php
// This script and data application were generated by AppGini 5.40
// Download AppGini for free from http://bigprof.com/appgini/download/

	$currDir=dirname(__FILE__);
	include("$currDir/defaultLang.php");
	include("$currDir/language.php");
	include("$currDir/lib.php");
	@include("$currDir/hooks/units.php");
	include("$currDir/units_dml.php");

	// mm: can the current member access this page?
	$perm=getTablePermissions('units');
	if(!$perm[0]){
		echo error_message($Translation['tableAccessDenied'], false);
		echo '<script>setTimeout("window.location=\'index.php?signOut=1\'", 2000);</script>';
		exit;
	}

	$x = new DataList;
	$x->TableName = "units";

	// Fields that can be displayed in the table view
	$x->QueryFieldsTV=array(   
		"`units`.`id`" => "id",
		"IF(    CHAR_LENGTH(`properties1`.`property_name`), CONCAT_WS('',   `properties1`.`property_name`), '') /* Property */" => "property",
		"`units`.`unit_number`" => "unit_number",
		"`units`.`photo`" => "photo",
		"`units`.`status`" => "status",
		"`units`.`size`" => "size",
		"IF(    CHAR_LENGTH(`properties1`.`country`), CONCAT_WS('',   `properties1`.`country`), '') /* Country */" => "country",
		"IF(    CHAR_LENGTH(`properties1`.`street`), CONCAT_WS('',   `properties1`.`street`), '') /* Street */" => "street",
		"IF(    CHAR_LENGTH(`properties1`.`City`), CONCAT_WS('',   `properties1`.`City`), '') /* City */" => "city",
		"IF(    CHAR_LENGTH(`properties1`.`State`), CONCAT_WS('',   `properties1`.`State`), '') /* State */" => "state",
		"IF(    CHAR_LENGTH(`properties1`.`ZIP`), CONCAT_WS('',   `properties1`.`ZIP`), '') /* Postal code */" => "postal_code",
		"`units`.`rooms`" => "rooms",
		"`units`.`bathroom`" => "bathroom",
		"`units`.`features`" => "features",
		"FORMAT(`units`.`market_rent`, 0)" => "market_rent",
		"CONCAT('Ksh', FORMAT(`units`.`rental_amount`, 2))" => "rental_amount",
		"CONCAT('Ksh', FORMAT(`units`.`deposit_amount`, 2))" => "deposit_amount",
		"`units`.`description`" => "description"
	);
	// mapping incoming sort by requests to actual query fields
	$x->SortFields = array(   
		1 => '`units`.`id`',
		2 => 2,
		3 => 3,
		4 => 4,
		5 => 5,
		6 => 6,
		7 => 7,
		8 => 8,
		9 => 9,
		10 => 10,
		11 => 11,
		12 => 12,
		13 => '`units`.`bathroom`',
		14 => 14,
		15 => '`units`.`market_rent`',
		16 => '`units`.`rental_amount`',
		17 => '`units`.`deposit_amount`',
		18 => 18
	);

	// Fields that can be displayed in the csv file
	$x->QueryFieldsCSV=array(   
		"`units`.`id`" => "id",
		"IF(    CHAR_LENGTH(`properties1`.`property_name`), CONCAT_WS('',   `properties1`.`property_name`), '') /* Property */" => "property",
		"`units`.`unit_number`" => "unit_number",
		"`units`.`photo`" => "photo",
		"`units`.`status`" => "status",
		"`units`.`size`" => "size",
		"IF(    CHAR_LENGTH(`properties1`.`country`), CONCAT_WS('',   `properties1`.`country`), '') /* Country */" => "country",
		"IF(    CHAR_LENGTH(`properties1`.`street`), CONCAT_WS('',   `properties1`.`street`), '') /* Street */" => "street",
		"IF(    CHAR_LENGTH(`properties1`.`City`), CONCAT_WS('',   `properties1`.`City`), '') /* City */" => "city",
		"IF(    CHAR_LENGTH(`properties1`.`State`), CONCAT_WS('',   `properties1`.`State`), '') /* State */" => "state",
		"IF(    CHAR_LENGTH(`properties1`.`ZIP`), CONCAT_WS('',   `properties1`.`ZIP`), '') /* Postal code */" => "postal_code",
		"`units`.`rooms`" => "rooms",
		"`units`.`bathroom`" => "bathroom",
		"`units`.`features`" => "features",
		"FORMAT(`units`.`market_rent`, 0)" => "market_rent",
		"CONCAT('Ksh', FORMAT(`units`.`rental_amount`, 2))" => "rental_amount",
		"CONCAT('Ksh', FORMAT(`units`.`deposit_amount`, 2))" => "deposit_amount",
		"`units`.`description`" => "description"
	);
	// Fields that can be filtered
	$x->QueryFieldsFilters=array(   
		"`units`.`id`" => "ID",
		"IF(    CHAR_LENGTH(`properties1`.`property_name`), CONCAT_WS('',   `properties1`.`property_name`), '') /* Property */" => "Property",
		"`units`.`unit_number`" => "Unit",
		"`units`.`status`" => "Status",
		"`units`.`size`" => "Area (sq. feet)",
		"IF(    CHAR_LENGTH(`properties1`.`country`), CONCAT_WS('',   `properties1`.`country`), '') /* Country */" => "Country",
		"IF(    CHAR_LENGTH(`properties1`.`street`), CONCAT_WS('',   `properties1`.`street`), '') /* Street */" => "Street",
		"IF(    CHAR_LENGTH(`properties1`.`City`), CONCAT_WS('',   `properties1`.`City`), '') /* City */" => "City",
		"IF(    CHAR_LENGTH(`properties1`.`State`), CONCAT_WS('',   `properties1`.`State`), '') /* State */" => "State",
		"IF(    CHAR_LENGTH(`properties1`.`ZIP`), CONCAT_WS('',   `properties1`.`ZIP`), '') /* Postal code */" => "Postal code",
		"`units`.`rooms`" => "Rooms",
		"`units`.`bathroom`" => "Bathroom",
		"`units`.`features`" => "Features",
		"`units`.`market_rent`" => "Market rent",
		"`units`.`rental_amount`" => "Rental amount",
		"`units`.`deposit_amount`" => "Deposit amount",
		"`units`.`description`" => "Description"
	);

	// Fields that can be quick searched
	$x->QueryFieldsQS=array(   
		"`units`.`id`" => "id",
		"IF(    CHAR_LENGTH(`properties1`.`property_name`), CONCAT_WS('',   `properties1`.`property_name`), '') /* Property */" => "property",
		"`units`.`unit_number`" => "unit_number",
		"`units`.`status`" => "status",
		"`units`.`size`" => "size",
		"IF(    CHAR_LENGTH(`properties1`.`country`), CONCAT_WS('',   `properties1`.`country`), '') /* Country */" => "country",
		"IF(    CHAR_LENGTH(`properties1`.`street`), CONCAT_WS('',   `properties1`.`street`), '') /* Street */" => "street",
		"IF(    CHAR_LENGTH(`properties1`.`City`), CONCAT_WS('',   `properties1`.`City`), '') /* City */" => "city",
		"IF(    CHAR_LENGTH(`properties1`.`State`), CONCAT_WS('',   `properties1`.`State`), '') /* State */" => "state",
		"IF(    CHAR_LENGTH(`properties1`.`ZIP`), CONCAT_WS('',   `properties1`.`ZIP`), '') /* Postal code */" => "postal_code",
		"`units`.`rooms`" => "rooms",
		"`units`.`bathroom`" => "bathroom",
		"`units`.`features`" => "features",
		"FORMAT(`units`.`market_rent`, 0)" => "market_rent",
		"CONCAT('Ksh', FORMAT(`units`.`rental_amount`, 2))" => "rental_amount",
		"CONCAT('Ksh', FORMAT(`units`.`deposit_amount`, 2))" => "deposit_amount",
		"`units`.`description`" => "description"
	);

	// Lookup fields that can be used as filterers
	$x->filterers = array(  'property' => 'Property');

	$x->QueryFrom="`units` LEFT JOIN `properties` as properties1 ON `properties1`.`id`=`units`.`property` ";
	$x->QueryWhere='';
	$x->QueryOrder='';

	$x->AllowSelection = 1;
	$x->HideTableView = ($perm[2]==0 ? 1 : 0);
	$x->AllowDelete = $perm[4];
	$x->AllowMassDelete = false;
	$x->AllowInsert = $perm[1];
	$x->AllowUpdate = $perm[3];
	$x->SeparateDV = 1;
	$x->AllowDeleteOfParents = 0;
	$x->AllowFilters = 1;
	$x->AllowSavingFilters = 0;
	$x->AllowSorting = 1;
	$x->AllowNavigation = 1;
	$x->AllowPrinting = 1;
	$x->AllowCSV = 1;
	$x->RecordsPerPage = 10;
	$x->QuickSearch = 1;
	$x->QuickSearchText = $Translation["quick search"];
	$x->ScriptFileName = "units_view.php";
	$x->RedirectAfterInsert = "units_view.php";
	$x->TableTitle = "Units";
	$x->TableIcon = "resources/table_icons/change_password.png";
	$x->PrimaryKey = "`units`.`id`";

	$x->ColWidth   = array(  90, 40, 60, 60, 60, 100, 55, 40, 45, 70, 150, 60);
	$x->ColCaption = array("Property", "Unit", "Photo", "Status", "Area (sq. feet)", "Street", "City", "State", "Rooms", "Bathroom", "Features", "Rental amount");
	$x->ColFieldName = array('property', 'unit_number', 'photo', 'status', 'size', 'street', 'city', 'state', 'rooms', 'bathroom', 'features', 'rental_amount');
	$x->ColNumber  = array(2, 3, 4, 5, 6, 8, 9, 10, 12, 13, 14, 16);

	$x->Template = 'templates/units_templateTV.html';
	$x->SelectedTemplate = 'templates/units_templateTVS.html';
	$x->ShowTableHeader = 1;
	$x->ShowRecordSlots = 0;
	$x->HighlightColor = '#FFF0C2';

	// mm: build the query based on current member's permissions
	$DisplayRecords = $_REQUEST['DisplayRecords'];
	if(!in_array($DisplayRecords, array('user', 'group'))){ $DisplayRecords = 'all'; }
	if($perm[2]==1 || ($perm[2]>1 && $DisplayRecords=='user' && !$_REQUEST['NoFilter_x'])){ // view owner only
		$x->QueryFrom.=', membership_userrecords';
		$x->QueryWhere="where `units`.`id`=membership_userrecords.pkValue and membership_userrecords.tableName='units' and lcase(membership_userrecords.memberID)='".getLoggedMemberID()."'";
	}elseif($perm[2]==2 || ($perm[2]>2 && $DisplayRecords=='group' && !$_REQUEST['NoFilter_x'])){ // view group only
		$x->QueryFrom.=', membership_userrecords';
		$x->QueryWhere="where `units`.`id`=membership_userrecords.pkValue and membership_userrecords.tableName='units' and membership_userrecords.groupID='".getLoggedGroupID()."'";
	}elseif($perm[2]==3){ // view all
		// no further action
	}elseif($perm[2]==0){ // view none
		$x->QueryFields = array("Not enough permissions" => "NEP");
		$x->QueryFrom = '`units`';
		$x->QueryWhere = '';
		$x->DefaultSortField = '';
	}
	// hook: units_init
	$render=TRUE;
	if(function_exists('units_init')){
		$args=array();
		$render=units_init($x, getMemberInfo(), $args);
	}

	if($render) $x->Render();

	// hook: units_header
	$headerCode='';
	if(function_exists('units_header')){
		$args=array();
		$headerCode=units_header($x->ContentType, getMemberInfo(), $args);
	}  
	if(!$headerCode){
		include_once("$currDir/header.php"); 
	}else{
		ob_start(); include_once("$currDir/header.php"); $dHeader=ob_get_contents(); ob_end_clean();
		echo str_replace('<%%HEADER%%>', $dHeader, $headerCode);
	}

	echo $x->HTML;
	// hook: units_footer
	$footerCode='';
	if(function_exists('units_footer')){
		$args=array();
		$footerCode=units_footer($x->ContentType, getMemberInfo(), $args);
	}  
	if(!$footerCode){
		include_once("$currDir/footer.php"); 
	}else{
		ob_start(); include_once("$currDir/footer.php"); $dFooter=ob_get_contents(); ob_end_clean();
		echo str_replace('<%%FOOTER%%>', $dFooter, $footerCode);
	}
?>