<?php
// This script and data application were generated by AppGini 5.62
// Download AppGini for free from https://bigprof.com/appgini/download/

	$currDir=dirname(__FILE__);
	include("$currDir/defaultLang.php");
	include("$currDir/language.php");
	include("$currDir/lib.php");
	@include("$currDir/hooks/address.php");
	include("$currDir/address_dml.php");

	// mm: can the current member access this page?
	$perm=getTablePermissions('address');
	if(!$perm[0]){
		echo error_message($Translation['tableAccessDenied'], false);
		echo '<script>setTimeout("window.location=\'index.php?signOut=1\'", 2000);</script>';
		exit;
	}

	$x = new DataList;
	$x->TableName = "address";

	// Fields that can be displayed in the table view
	$x->QueryFieldsTV = array(   
		"`address`.`id`" => "id",
		"`address`.`address1`" => "address1",
		"`address`.`address2`" => "address2",
		"`address`.`address3`" => "address3",
		"`address`.`town`" => "town",
		"IF(    CHAR_LENGTH(`county1`.`county`), CONCAT_WS('',   `county1`.`county`), '') /* County */" => "county",
		"IF(    CHAR_LENGTH(`country1`.`country`), CONCAT_WS('',   `country1`.`country`), '') /* Country */" => "country",
		"`address`.`postcode1`" => "postcode1",
		"`address`.`postcode2`" => "postcode2"
	);
	// mapping incoming sort by requests to actual query fields
	$x->SortFields = array(   
		1 => '`address`.`id`',
		2 => 2,
		3 => 3,
		4 => 4,
		5 => 5,
		6 => '`county1`.`county`',
		7 => '`country1`.`country`',
		8 => 8,
		9 => 9
	);

	// Fields that can be displayed in the csv file
	$x->QueryFieldsCSV = array(   
		"`address`.`id`" => "id",
		"`address`.`address1`" => "address1",
		"`address`.`address2`" => "address2",
		"`address`.`address3`" => "address3",
		"`address`.`town`" => "town",
		"IF(    CHAR_LENGTH(`county1`.`county`), CONCAT_WS('',   `county1`.`county`), '') /* County */" => "county",
		"IF(    CHAR_LENGTH(`country1`.`country`), CONCAT_WS('',   `country1`.`country`), '') /* Country */" => "country",
		"`address`.`postcode1`" => "postcode1",
		"`address`.`postcode2`" => "postcode2"
	);
	// Fields that can be filtered
	$x->QueryFieldsFilters = array(   
		"`address`.`id`" => "ID",
		"`address`.`address1`" => "Address1",
		"`address`.`address2`" => "Address2",
		"`address`.`address3`" => "Address3",
		"`address`.`town`" => "Town",
		"IF(    CHAR_LENGTH(`county1`.`county`), CONCAT_WS('',   `county1`.`county`), '') /* County */" => "County",
		"IF(    CHAR_LENGTH(`country1`.`country`), CONCAT_WS('',   `country1`.`country`), '') /* Country */" => "Country",
		"`address`.`postcode1`" => "Postcode",
		"`address`.`postcode2`" => "Postcode2"
	);

	// Fields that can be quick searched
	$x->QueryFieldsQS = array(   
		"`address`.`id`" => "id",
		"`address`.`address1`" => "address1",
		"`address`.`address2`" => "address2",
		"`address`.`address3`" => "address3",
		"`address`.`town`" => "town",
		"IF(    CHAR_LENGTH(`county1`.`county`), CONCAT_WS('',   `county1`.`county`), '') /* County */" => "county",
		"IF(    CHAR_LENGTH(`country1`.`country`), CONCAT_WS('',   `country1`.`country`), '') /* Country */" => "country",
		"`address`.`postcode1`" => "postcode1",
		"`address`.`postcode2`" => "postcode2"
	);

	// Lookup fields that can be used as filterers
	$x->filterers = array(  'county' => 'County', 'country' => 'Country');

	$x->QueryFrom = "`address` LEFT JOIN `county` as county1 ON `county1`.`id`=`address`.`county` LEFT JOIN `country` as country1 ON `country1`.`id`=`address`.`country` ";
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
	$x->ScriptFileName = "address_view.php";
	$x->RedirectAfterInsert = "address_view.php?SelectedID=#ID#";
	$x->TableTitle = "Address";
	$x->TableIcon = "table.gif";
	$x->PrimaryKey = "`address`.`id`";

	$x->ColWidth   = array(  150, 150, 150, 150, 150, 150, 150, 150);
	$x->ColCaption = array("Address1", "Address2", "Address3", "Town", "County", "Country", "Postcode", "Postcode2");
	$x->ColFieldName = array('address1', 'address2', 'address3', 'town', 'county', 'country', 'postcode1', 'postcode2');
	$x->ColNumber  = array(2, 3, 4, 5, 6, 7, 8, 9);

	// template paths below are based on the app main directory
	$x->Template = 'templates/address_templateTV.html';
	$x->SelectedTemplate = 'templates/address_templateTVS.html';
	$x->TemplateDV = 'templates/address_templateDV.html';
	$x->TemplateDVP = 'templates/address_templateDVP.html';

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
		$x->QueryWhere="where `address`.`id`=membership_userrecords.pkValue and membership_userrecords.tableName='address' and lcase(membership_userrecords.memberID)='".getLoggedMemberID()."'";
	}elseif($perm[2]==2 || ($perm[2]>2 && $DisplayRecords=='group' && !$_REQUEST['NoFilter_x'])){ // view group only
		$x->QueryFrom.=', membership_userrecords';
		$x->QueryWhere="where `address`.`id`=membership_userrecords.pkValue and membership_userrecords.tableName='address' and membership_userrecords.groupID='".getLoggedGroupID()."'";
	}elseif($perm[2]==3){ // view all
		// no further action
	}elseif($perm[2]==0){ // view none
		$x->QueryFields = array("Not enough permissions" => "NEP");
		$x->QueryFrom = '`address`';
		$x->QueryWhere = '';
		$x->DefaultSortField = '';
	}
	// hook: address_init
	$render=TRUE;
	if(function_exists('address_init')){
		$args=array();
		$render=address_init($x, getMemberInfo(), $args);
	}

	if($render) $x->Render();

	// hook: address_header
	$headerCode='';
	if(function_exists('address_header')){
		$args=array();
		$headerCode=address_header($x->ContentType, getMemberInfo(), $args);
	}  
	if(!$headerCode){
		include_once("$currDir/header.php"); 
	}else{
		ob_start(); include_once("$currDir/header.php"); $dHeader=ob_get_contents(); ob_end_clean();
		echo str_replace('<%%HEADER%%>', $dHeader, $headerCode);
	}

	echo $x->HTML;
	// hook: address_footer
	$footerCode='';
	if(function_exists('address_footer')){
		$args=array();
		$footerCode=address_footer($x->ContentType, getMemberInfo(), $args);
	}  
	if(!$footerCode){
		include_once("$currDir/footer.php"); 
	}else{
		ob_start(); include_once("$currDir/footer.php"); $dFooter=ob_get_contents(); ob_end_clean();
		echo str_replace('<%%FOOTER%%>', $dFooter, $footerCode);
	}
?>