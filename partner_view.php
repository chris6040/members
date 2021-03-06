<?php
// This script and data application were generated by AppGini 5.62
// Download AppGini for free from https://bigprof.com/appgini/download/

	$currDir=dirname(__FILE__);
	include("$currDir/defaultLang.php");
	include("$currDir/language.php");
	include("$currDir/lib.php");
	@include("$currDir/hooks/partner.php");
	include("$currDir/partner_dml.php");

	// mm: can the current member access this page?
	$perm=getTablePermissions('partner');
	if(!$perm[0]){
		echo error_message($Translation['tableAccessDenied'], false);
		echo '<script>setTimeout("window.location=\'index.php?signOut=1\'", 2000);</script>';
		exit;
	}

	$x = new DataList;
	$x->TableName = "partner";

	// Fields that can be displayed in the table view
	$x->QueryFieldsTV = array(   
		"`partner`.`id`" => "id",
		"`partner`.`company_name`" => "company_name",
		"IF(    CHAR_LENGTH(`psn_title1`.`title`), CONCAT_WS('',   `psn_title1`.`title`), '') /* Title */" => "title",
		"`partner`.`fname`" => "fname",
		"`partner`.`lname`" => "lname",
		"`partner`.`mailname`" => "mailname",
		"`partner`.`email`" => "email",
		"`partner`.`phone`" => "phone",
		"`partner`.`mobile`" => "mobile",
		"IF(    CHAR_LENGTH(`address1`.`postcode1`) || CHAR_LENGTH(`address1`.`address1`), CONCAT_WS('',   `address1`.`postcode1`, ' - ', `address1`.`address1`), '') /* Address id */" => "address_id",
		"`partner`.`username`" => "username",
		"`partner`.`password`" => "password",
		"IF(    CHAR_LENGTH(`psn_type1`.`type`), CONCAT_WS('',   `psn_type1`.`type`), '') /* Type1 */" => "type1",
		"IF(    CHAR_LENGTH(`psn_type2`.`type`), CONCAT_WS('',   `psn_type2`.`type`), '') /* Type2 */" => "type2",
		"IF(    CHAR_LENGTH(`psn_type3`.`type`), CONCAT_WS('',   `psn_type3`.`type`), '') /* Type3 */" => "type3",
		"`partner`.`commission_rate`" => "commission_rate",
		"IF(    CHAR_LENGTH(`member_group1`.`id`) || CHAR_LENGTH(`member_group1`.`name`), CONCAT_WS('',   `member_group1`.`id`, `member_group1`.`name`), '') /* Member Area Group */" => "membergroupid"
	);
	// mapping incoming sort by requests to actual query fields
	$x->SortFields = array(   
		1 => '`partner`.`id`',
		2 => 2,
		3 => '`psn_title1`.`title`',
		4 => 4,
		5 => 5,
		6 => 6,
		7 => 7,
		8 => 8,
		9 => 9,
		10 => 10,
		11 => 11,
		12 => 12,
		13 => '`psn_type1`.`type`',
		14 => '`psn_type2`.`type`',
		15 => '`psn_type3`.`type`',
		16 => '`partner`.`commission_rate`',
		17 => 17
	);

	// Fields that can be displayed in the csv file
	$x->QueryFieldsCSV = array(   
		"`partner`.`id`" => "id",
		"`partner`.`company_name`" => "company_name",
		"IF(    CHAR_LENGTH(`psn_title1`.`title`), CONCAT_WS('',   `psn_title1`.`title`), '') /* Title */" => "title",
		"`partner`.`fname`" => "fname",
		"`partner`.`lname`" => "lname",
		"`partner`.`mailname`" => "mailname",
		"`partner`.`email`" => "email",
		"`partner`.`phone`" => "phone",
		"`partner`.`mobile`" => "mobile",
		"IF(    CHAR_LENGTH(`address1`.`postcode1`) || CHAR_LENGTH(`address1`.`address1`), CONCAT_WS('',   `address1`.`postcode1`, ' - ', `address1`.`address1`), '') /* Address id */" => "address_id",
		"`partner`.`username`" => "username",
		"`partner`.`password`" => "password",
		"IF(    CHAR_LENGTH(`psn_type1`.`type`), CONCAT_WS('',   `psn_type1`.`type`), '') /* Type1 */" => "type1",
		"IF(    CHAR_LENGTH(`psn_type2`.`type`), CONCAT_WS('',   `psn_type2`.`type`), '') /* Type2 */" => "type2",
		"IF(    CHAR_LENGTH(`psn_type3`.`type`), CONCAT_WS('',   `psn_type3`.`type`), '') /* Type3 */" => "type3",
		"`partner`.`commission_rate`" => "commission_rate",
		"IF(    CHAR_LENGTH(`member_group1`.`id`) || CHAR_LENGTH(`member_group1`.`name`), CONCAT_WS('',   `member_group1`.`id`, `member_group1`.`name`), '') /* Member Area Group */" => "membergroupid"
	);
	// Fields that can be filtered
	$x->QueryFieldsFilters = array(   
		"`partner`.`id`" => "ID",
		"`partner`.`company_name`" => "Company name",
		"IF(    CHAR_LENGTH(`psn_title1`.`title`), CONCAT_WS('',   `psn_title1`.`title`), '') /* Title */" => "Title",
		"`partner`.`fname`" => "First Name",
		"`partner`.`lname`" => "Last Name",
		"`partner`.`mailname`" => "Mailname",
		"`partner`.`email`" => "Email",
		"`partner`.`phone`" => "Tel1",
		"`partner`.`mobile`" => "Mobile",
		"IF(    CHAR_LENGTH(`address1`.`postcode1`) || CHAR_LENGTH(`address1`.`address1`), CONCAT_WS('',   `address1`.`postcode1`, ' - ', `address1`.`address1`), '') /* Address id */" => "Address id",
		"`partner`.`username`" => "Username",
		"`partner`.`password`" => "Password",
		"IF(    CHAR_LENGTH(`psn_type1`.`type`), CONCAT_WS('',   `psn_type1`.`type`), '') /* Type1 */" => "Type1",
		"IF(    CHAR_LENGTH(`psn_type2`.`type`), CONCAT_WS('',   `psn_type2`.`type`), '') /* Type2 */" => "Type2",
		"IF(    CHAR_LENGTH(`psn_type3`.`type`), CONCAT_WS('',   `psn_type3`.`type`), '') /* Type3 */" => "Type3",
		"`partner`.`commission_rate`" => "Commission (transaction %)",
		"IF(    CHAR_LENGTH(`member_group1`.`id`) || CHAR_LENGTH(`member_group1`.`name`), CONCAT_WS('',   `member_group1`.`id`, `member_group1`.`name`), '') /* Member Area Group */" => "Member Area Group"
	);

	// Fields that can be quick searched
	$x->QueryFieldsQS = array(   
		"`partner`.`id`" => "id",
		"`partner`.`company_name`" => "company_name",
		"IF(    CHAR_LENGTH(`psn_title1`.`title`), CONCAT_WS('',   `psn_title1`.`title`), '') /* Title */" => "title",
		"`partner`.`fname`" => "fname",
		"`partner`.`lname`" => "lname",
		"`partner`.`mailname`" => "mailname",
		"`partner`.`email`" => "email",
		"`partner`.`phone`" => "phone",
		"`partner`.`mobile`" => "mobile",
		"IF(    CHAR_LENGTH(`address1`.`postcode1`) || CHAR_LENGTH(`address1`.`address1`), CONCAT_WS('',   `address1`.`postcode1`, ' - ', `address1`.`address1`), '') /* Address id */" => "address_id",
		"`partner`.`username`" => "username",
		"`partner`.`password`" => "password",
		"IF(    CHAR_LENGTH(`psn_type1`.`type`), CONCAT_WS('',   `psn_type1`.`type`), '') /* Type1 */" => "type1",
		"IF(    CHAR_LENGTH(`psn_type2`.`type`), CONCAT_WS('',   `psn_type2`.`type`), '') /* Type2 */" => "type2",
		"IF(    CHAR_LENGTH(`psn_type3`.`type`), CONCAT_WS('',   `psn_type3`.`type`), '') /* Type3 */" => "type3",
		"`partner`.`commission_rate`" => "commission_rate",
		"IF(    CHAR_LENGTH(`member_group1`.`id`) || CHAR_LENGTH(`member_group1`.`name`), CONCAT_WS('',   `member_group1`.`id`, `member_group1`.`name`), '') /* Member Area Group */" => "membergroupid"
	);

	// Lookup fields that can be used as filterers
	$x->filterers = array(  'title' => 'Title', 'address_id' => 'Address id', 'type1' => 'Type1', 'type2' => 'Type2', 'type3' => 'Type3', 'membergroupid' => 'Member Area Group');

	$x->QueryFrom = "`partner` LEFT JOIN `psn_title` as psn_title1 ON `psn_title1`.`id`=`partner`.`title` LEFT JOIN `address` as address1 ON `address1`.`id`=`partner`.`address_id` LEFT JOIN `psn_type` as psn_type1 ON `psn_type1`.`id`=`partner`.`type1` LEFT JOIN `psn_type` as psn_type2 ON `psn_type2`.`id`=`partner`.`type2` LEFT JOIN `psn_type` as psn_type3 ON `psn_type3`.`id`=`partner`.`type3` LEFT JOIN `member_group` as member_group1 ON `member_group1`.`id`=`partner`.`membergroupid` ";
	$x->QueryWhere = '';
	$x->QueryOrder = '';

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
	$x->ScriptFileName = "partner_view.php";
	$x->RedirectAfterInsert = "partner_view.php?SelectedID=#ID#";
	$x->TableTitle = "Partner";
	$x->TableIcon = "table.gif";
	$x->PrimaryKey = "`partner`.`id`";

	$x->ColWidth   = array(  150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150);
	$x->ColCaption = array("Company name", "Title", "First Name", "Last Name", "Mailname", "Email", "Tel1", "Mobile", "Address id", "Username", "Password", "Type1", "Type2", "Type3", "Commission (transaction %)", "Member Area Group");
	$x->ColFieldName = array('company_name', 'title', 'fname', 'lname', 'mailname', 'email', 'phone', 'mobile', 'address_id', 'username', 'password', 'type1', 'type2', 'type3', 'commission_rate', 'membergroupid');
	$x->ColNumber  = array(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17);

	// template paths below are based on the app main directory
	$x->Template = 'templates/partner_templateTV.html';
	$x->SelectedTemplate = 'templates/partner_templateTVS.html';
	$x->TemplateDV = 'templates/partner_templateDV.html';
	$x->TemplateDVP = 'templates/partner_templateDVP.html';

	$x->ShowTableHeader = 1;
	$x->ShowRecordSlots = 0;
	$x->TVClasses = "";
	$x->DVClasses = "";
	$x->HighlightColor = '#FFF0C2';

	// mm: build the query based on current member's permissions
	$DisplayRecords = $_REQUEST['DisplayRecords'];
	if(!in_array($DisplayRecords, array('user', 'group'))){ $DisplayRecords = 'all'; }
	if($perm[2]==1 || ($perm[2]>1 && $DisplayRecords=='user' && !$_REQUEST['NoFilter_x'])){ // view owner only
		$x->QueryFrom.=', membership_userrecords';
		$x->QueryWhere="where `partner`.`id`=membership_userrecords.pkValue and membership_userrecords.tableName='partner' and lcase(membership_userrecords.memberID)='".getLoggedMemberID()."'";
	}elseif($perm[2]==2 || ($perm[2]>2 && $DisplayRecords=='group' && !$_REQUEST['NoFilter_x'])){ // view group only
		$x->QueryFrom.=', membership_userrecords';
		$x->QueryWhere="where `partner`.`id`=membership_userrecords.pkValue and membership_userrecords.tableName='partner' and membership_userrecords.groupID='".getLoggedGroupID()."'";
	}elseif($perm[2]==3){ // view all
		// no further action
	}elseif($perm[2]==0){ // view none
		$x->QueryFields = array("Not enough permissions" => "NEP");
		$x->QueryFrom = '`partner`';
		$x->QueryWhere = '';
		$x->DefaultSortField = '';
	}
	// hook: partner_init
	$render=TRUE;
	if(function_exists('partner_init')){
		$args=array();
		$render=partner_init($x, getMemberInfo(), $args);
	}

	if($render) $x->Render();

	// hook: partner_header
	$headerCode='';
	if(function_exists('partner_header')){
		$args=array();
		$headerCode=partner_header($x->ContentType, getMemberInfo(), $args);
	}  
	if(!$headerCode){
		include_once("$currDir/header.php"); 
	}else{
		ob_start(); include_once("$currDir/header.php"); $dHeader=ob_get_contents(); ob_end_clean();
		echo str_replace('<%%HEADER%%>', $dHeader, $headerCode);
	}

	echo $x->HTML;
	// hook: partner_footer
	$footerCode='';
	if(function_exists('partner_footer')){
		$args=array();
		$footerCode=partner_footer($x->ContentType, getMemberInfo(), $args);
	}  
	if(!$footerCode){
		include_once("$currDir/footer.php"); 
	}else{
		ob_start(); include_once("$currDir/footer.php"); $dFooter=ob_get_contents(); ob_end_clean();
		echo str_replace('<%%FOOTER%%>', $dFooter, $footerCode);
	}
?>