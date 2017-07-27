<?php
	// check this file's MD5 to make sure it wasn't called before
	$prevMD5=@implode('', @file(dirname(__FILE__).'/setup.md5'));
	$thisMD5=md5(@implode('', @file("./updateDB.php")));
	if($thisMD5==$prevMD5){
		$setupAlreadyRun=true;
	}else{
		// set up tables
		if(!isset($silent)){
			$silent=true;
		}

		// set up tables
		setupTable('property', "create table if not exists `property` (   `id` INT unsigned not null auto_increment , primary key (`id`), `partner_id` INT unsigned , `referer` INT unsigned , `address_id` INT unsigned , `contact_date` DATE , `purchase_date` DATE , `detachment` VARCHAR(40) , `type` VARCHAR(40) , `tenancy_type` VARCHAR(40) , `no_beds` TINYINT , `notes` TEXT ) CHARSET utf8", $silent);
		setupIndexes('property', array('partner_id','referer','address_id'));
		setupTable('partner', "create table if not exists `partner` (   `id` INT unsigned not null auto_increment , primary key (`id`), `company_name` VARCHAR(40) , `title` TINYINT unsigned , `fname` VARCHAR(40) , `lname` VARCHAR(40) , `mailname` VARCHAR(40) , `email` VARCHAR(40) , `phone` VARCHAR(40) , `mobile` VARCHAR(40) , `address_id` INT unsigned , `username` VARCHAR(40) , `password` VARCHAR(40) , `type1` INT unsigned , `type2` INT unsigned , `type3` INT unsigned , `commission_rate` DOUBLE(3,2) default '0.50' , `membergroupid` SMALLINT unsigned ) CHARSET utf8", $silent);
		setupIndexes('partner', array('title','address_id','type1','type2','type3','membergroupid'));
		setupTable('address', "create table if not exists `address` (   `id` INT unsigned not null auto_increment , primary key (`id`), `address1` VARCHAR(40) , `address2` VARCHAR(40) , `address3` VARCHAR(40) , `town` VARCHAR(40) , `county` INT unsigned , `country` INT unsigned , `postcode1` VARCHAR(4) , `postcode2` VARCHAR(4) ) CHARSET utf8", $silent);
		setupIndexes('address', array('county','country'));
		setupTable('transaction', "create table if not exists `transaction` (   `id` INT unsigned not null auto_increment , primary key (`id`), `date` VARCHAR(40) default '1' , `property_id` TINYINT , `type` TINYINT , `amount` DOUBLE(10,2) ) CHARSET utf8", $silent);
		setupTable('acc_type', "create table if not exists `acc_type` (   `id` TINYINT unsigned not null auto_increment , primary key (`id`), `type` VARCHAR(40) , `description` TEXT ) CHARSET utf8", $silent);
		setupTable('trans_type', "create table if not exists `trans_type` (   `id` TINYINT unsigned not null auto_increment , primary key (`id`), `type` VARCHAR(40) , `acc_type` TINYINT unsigned , `description` TEXT ) CHARSET utf8", $silent);
		setupIndexes('trans_type', array('acc_type'));
		setupTable('psn_title', "create table if not exists `psn_title` (   `id` TINYINT unsigned not null auto_increment , primary key (`id`), `title` VARCHAR(40) ) CHARSET utf8", $silent);
		setupTable('loan', "create table if not exists `loan` (   `id` INT unsigned not null auto_increment , primary key (`id`), `loan_type` TINYINT unsigned , `property_id` INT unsigned , `broker_id` INT unsigned , `date` DATE , `amount` VARCHAR(40) , `costs` VARCHAR(40) , `apr` VARCHAR(40) , `outstanding` VARCHAR(40) , `lender_id` INT unsigned , `lender_ref` VARCHAR(40) ) CHARSET utf8", $silent);
		setupIndexes('loan', array('loan_type','property_id','broker_id','lender_id'));
		setupTable('loan_type', "create table if not exists `loan_type` (   `id` TINYINT unsigned not null auto_increment , primary key (`id`), `type` VARCHAR(40) , `description` TEXT ) CHARSET utf8", $silent);
		setupTable('county', "create table if not exists `county` (   `id` INT unsigned not null auto_increment , primary key (`id`), `county` VARCHAR(40) ) CHARSET utf8", $silent);
		setupTable('country', "create table if not exists `country` (   `id` INT unsigned not null auto_increment , primary key (`id`), `country` VARCHAR(40) ) CHARSET utf8", $silent);
		setupTable('psn_type', "create table if not exists `psn_type` (   `id` INT unsigned not null auto_increment , primary key (`id`), `type` VARCHAR(40) , `description` TEXT ) CHARSET utf8", $silent);
		setupTable('leads', "create table if not exists `leads` (   `id` INT unsigned not null auto_increment , primary key (`id`), `date_entered` VARCHAR(40) , `referer` VARCHAR(40) , `lead_name` VARCHAR(40) , `contact` VARCHAR(40) , `prop_area` VARCHAR(4) , `estimated_value` INT unsigned , `tenanted` TINYTEXT , `rental_income` VARCHAR(20) , `notes` TEXT , `est_commission` DOUBLE(10,2) , `date_contacted` DATE ) CHARSET utf8", $silent);
		setupTable('member_group', "create table if not exists `member_group` (   `id` SMALLINT unsigned not null auto_increment , primary key (`id`), `name` VARCHAR(40) , `description` CHAR(60) ) CHARSET utf8", $silent);


		// save MD5
		if($fp=@fopen(dirname(__FILE__).'/setup.md5', 'w')){
			fwrite($fp, $thisMD5);
			fclose($fp);
		}
	}


	function setupIndexes($tableName, $arrFields){
		if(!is_array($arrFields)){
			return false;
		}

		foreach($arrFields as $fieldName){
			if(!$res=@db_query("SHOW COLUMNS FROM `$tableName` like '$fieldName'")){
				continue;
			}
			if(!$row=@db_fetch_assoc($res)){
				continue;
			}
			if($row['Key']==''){
				@db_query("ALTER TABLE `$tableName` ADD INDEX `$fieldName` (`$fieldName`)");
			}
		}
	}


	function setupTable($tableName, $createSQL='', $silent=true, $arrAlter=''){
		global $Translation;
		ob_start();

		echo '<div style="padding: 5px; border-bottom:solid 1px silver; font-family: verdana, arial; font-size: 10px;">';

		// is there a table rename query?
		if(is_array($arrAlter)){
			$matches=array();
			if(preg_match("/ALTER TABLE `(.*)` RENAME `$tableName`/", $arrAlter[0], $matches)){
				$oldTableName=$matches[1];
			}
		}

		if($res=@db_query("select count(1) from `$tableName`")){ // table already exists
			if($row = @db_fetch_array($res)){
				echo str_replace("<TableName>", $tableName, str_replace("<NumRecords>", $row[0],$Translation["table exists"]));
				if(is_array($arrAlter)){
					echo '<br>';
					foreach($arrAlter as $alter){
						if($alter!=''){
							echo "$alter ... ";
							if(!@db_query($alter)){
								echo '<span class="label label-danger">' . $Translation['failed'] . '</span>';
								echo '<div class="text-danger">' . $Translation['mysql said'] . ' ' . db_error(db_link()) . '</div>';
							}else{
								echo '<span class="label label-success">' . $Translation['ok'] . '</span>';
							}
						}
					}
				}else{
					echo $Translation["table uptodate"];
				}
			}else{
				echo str_replace("<TableName>", $tableName, $Translation["couldnt count"]);
			}
		}else{ // given tableName doesn't exist

			if($oldTableName!=''){ // if we have a table rename query
				if($ro=@db_query("select count(1) from `$oldTableName`")){ // if old table exists, rename it.
					$renameQuery=array_shift($arrAlter); // get and remove rename query

					echo "$renameQuery ... ";
					if(!@db_query($renameQuery)){
						echo '<span class="label label-danger">' . $Translation['failed'] . '</span>';
						echo '<div class="text-danger">' . $Translation['mysql said'] . ' ' . db_error(db_link()) . '</div>';
					}else{
						echo '<span class="label label-success">' . $Translation['ok'] . '</span>';
					}

					if(is_array($arrAlter)) setupTable($tableName, $createSQL, false, $arrAlter); // execute Alter queries on renamed table ...
				}else{ // if old tableName doesn't exist (nor the new one since we're here), then just create the table.
					setupTable($tableName, $createSQL, false); // no Alter queries passed ...
				}
			}else{ // tableName doesn't exist and no rename, so just create the table
				echo str_replace("<TableName>", $tableName, $Translation["creating table"]);
				if(!@db_query($createSQL)){
					echo '<span class="label label-danger">' . $Translation['failed'] . '</span>';
					echo '<div class="text-danger">' . $Translation['mysql said'] . db_error(db_link()) . '</div>';
				}else{
					echo '<span class="label label-success">' . $Translation['ok'] . '</span>';
				}
			}
		}

		echo "</div>";

		$out=ob_get_contents();
		ob_end_clean();
		if(!$silent){
			echo $out;
		}
	}
?>