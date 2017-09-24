var FiltersEnabled = 0; // if your not going to use transitions or filters in any of the tips set this to 0
var spacer="&nbsp; &nbsp; &nbsp; ";

// email notifications to admin
notifyAdminNewMembers0Tip=["", spacer+"No email notifications to admin."];
notifyAdminNewMembers1Tip=["", spacer+"Notify admin only when a new member is waiting for approval."];
notifyAdminNewMembers2Tip=["", spacer+"Notify admin for all new sign-ups."];

// visitorSignup
visitorSignup0Tip=["", spacer+"If this option is selected, visitors will not be able to join this group unless the admin manually moves them to this group from the admin area."];
visitorSignup1Tip=["", spacer+"If this option is selected, visitors can join this group but will not be able to sign in unless the admin approves them from the admin area."];
visitorSignup2Tip=["", spacer+"If this option is selected, visitors can join this group and will be able to sign in instantly with no need for admin approval."];

// leads table
leads_addTip=["",spacer+"This option allows all members of the group to add records to the 'Leads' table. A member who adds a record to the table becomes the 'owner' of that record."];

leads_view0Tip=["",spacer+"This option prohibits all members of the group from viewing any record in the 'Leads' table."];
leads_view1Tip=["",spacer+"This option allows each member of the group to view only his own records in the 'Leads' table."];
leads_view2Tip=["",spacer+"This option allows each member of the group to view any record owned by any member of the group in the 'Leads' table."];
leads_view3Tip=["",spacer+"This option allows each member of the group to view all records in the 'Leads' table."];

leads_edit0Tip=["",spacer+"This option prohibits all members of the group from modifying any record in the 'Leads' table."];
leads_edit1Tip=["",spacer+"This option allows each member of the group to edit only his own records in the 'Leads' table."];
leads_edit2Tip=["",spacer+"This option allows each member of the group to edit any record owned by any member of the group in the 'Leads' table."];
leads_edit3Tip=["",spacer+"This option allows each member of the group to edit any records in the 'Leads' table, regardless of their owner."];

leads_delete0Tip=["",spacer+"This option prohibits all members of the group from deleting any record in the 'Leads' table."];
leads_delete1Tip=["",spacer+"This option allows each member of the group to delete only his own records in the 'Leads' table."];
leads_delete2Tip=["",spacer+"This option allows each member of the group to delete any record owned by any member of the group in the 'Leads' table."];
leads_delete3Tip=["",spacer+"This option allows each member of the group to delete any records in the 'Leads' table."];

// property table
property_addTip=["",spacer+"This option allows all members of the group to add records to the 'Property' table. A member who adds a record to the table becomes the 'owner' of that record."];

property_view0Tip=["",spacer+"This option prohibits all members of the group from viewing any record in the 'Property' table."];
property_view1Tip=["",spacer+"This option allows each member of the group to view only his own records in the 'Property' table."];
property_view2Tip=["",spacer+"This option allows each member of the group to view any record owned by any member of the group in the 'Property' table."];
property_view3Tip=["",spacer+"This option allows each member of the group to view all records in the 'Property' table."];

property_edit0Tip=["",spacer+"This option prohibits all members of the group from modifying any record in the 'Property' table."];
property_edit1Tip=["",spacer+"This option allows each member of the group to edit only his own records in the 'Property' table."];
property_edit2Tip=["",spacer+"This option allows each member of the group to edit any record owned by any member of the group in the 'Property' table."];
property_edit3Tip=["",spacer+"This option allows each member of the group to edit any records in the 'Property' table, regardless of their owner."];

property_delete0Tip=["",spacer+"This option prohibits all members of the group from deleting any record in the 'Property' table."];
property_delete1Tip=["",spacer+"This option allows each member of the group to delete only his own records in the 'Property' table."];
property_delete2Tip=["",spacer+"This option allows each member of the group to delete any record owned by any member of the group in the 'Property' table."];
property_delete3Tip=["",spacer+"This option allows each member of the group to delete any records in the 'Property' table."];

// transaction table
transaction_addTip=["",spacer+"This option allows all members of the group to add records to the 'Transaction' table. A member who adds a record to the table becomes the 'owner' of that record."];

transaction_view0Tip=["",spacer+"This option prohibits all members of the group from viewing any record in the 'Transaction' table."];
transaction_view1Tip=["",spacer+"This option allows each member of the group to view only his own records in the 'Transaction' table."];
transaction_view2Tip=["",spacer+"This option allows each member of the group to view any record owned by any member of the group in the 'Transaction' table."];
transaction_view3Tip=["",spacer+"This option allows each member of the group to view all records in the 'Transaction' table."];

transaction_edit0Tip=["",spacer+"This option prohibits all members of the group from modifying any record in the 'Transaction' table."];
transaction_edit1Tip=["",spacer+"This option allows each member of the group to edit only his own records in the 'Transaction' table."];
transaction_edit2Tip=["",spacer+"This option allows each member of the group to edit any record owned by any member of the group in the 'Transaction' table."];
transaction_edit3Tip=["",spacer+"This option allows each member of the group to edit any records in the 'Transaction' table, regardless of their owner."];

transaction_delete0Tip=["",spacer+"This option prohibits all members of the group from deleting any record in the 'Transaction' table."];
transaction_delete1Tip=["",spacer+"This option allows each member of the group to delete only his own records in the 'Transaction' table."];
transaction_delete2Tip=["",spacer+"This option allows each member of the group to delete any record owned by any member of the group in the 'Transaction' table."];
transaction_delete3Tip=["",spacer+"This option allows each member of the group to delete any records in the 'Transaction' table."];

// loan table
loan_addTip=["",spacer+"This option allows all members of the group to add records to the 'Loan' table. A member who adds a record to the table becomes the 'owner' of that record."];

loan_view0Tip=["",spacer+"This option prohibits all members of the group from viewing any record in the 'Loan' table."];
loan_view1Tip=["",spacer+"This option allows each member of the group to view only his own records in the 'Loan' table."];
loan_view2Tip=["",spacer+"This option allows each member of the group to view any record owned by any member of the group in the 'Loan' table."];
loan_view3Tip=["",spacer+"This option allows each member of the group to view all records in the 'Loan' table."];

loan_edit0Tip=["",spacer+"This option prohibits all members of the group from modifying any record in the 'Loan' table."];
loan_edit1Tip=["",spacer+"This option allows each member of the group to edit only his own records in the 'Loan' table."];
loan_edit2Tip=["",spacer+"This option allows each member of the group to edit any record owned by any member of the group in the 'Loan' table."];
loan_edit3Tip=["",spacer+"This option allows each member of the group to edit any records in the 'Loan' table, regardless of their owner."];

loan_delete0Tip=["",spacer+"This option prohibits all members of the group from deleting any record in the 'Loan' table."];
loan_delete1Tip=["",spacer+"This option allows each member of the group to delete only his own records in the 'Loan' table."];
loan_delete2Tip=["",spacer+"This option allows each member of the group to delete any record owned by any member of the group in the 'Loan' table."];
loan_delete3Tip=["",spacer+"This option allows each member of the group to delete any records in the 'Loan' table."];

// client table
client_addTip=["",spacer+"This option allows all members of the group to add records to the 'Client' table. A member who adds a record to the table becomes the 'owner' of that record."];

client_view0Tip=["",spacer+"This option prohibits all members of the group from viewing any record in the 'Client' table."];
client_view1Tip=["",spacer+"This option allows each member of the group to view only his own records in the 'Client' table."];
client_view2Tip=["",spacer+"This option allows each member of the group to view any record owned by any member of the group in the 'Client' table."];
client_view3Tip=["",spacer+"This option allows each member of the group to view all records in the 'Client' table."];

client_edit0Tip=["",spacer+"This option prohibits all members of the group from modifying any record in the 'Client' table."];
client_edit1Tip=["",spacer+"This option allows each member of the group to edit only his own records in the 'Client' table."];
client_edit2Tip=["",spacer+"This option allows each member of the group to edit any record owned by any member of the group in the 'Client' table."];
client_edit3Tip=["",spacer+"This option allows each member of the group to edit any records in the 'Client' table, regardless of their owner."];

client_delete0Tip=["",spacer+"This option prohibits all members of the group from deleting any record in the 'Client' table."];
client_delete1Tip=["",spacer+"This option allows each member of the group to delete only his own records in the 'Client' table."];
client_delete2Tip=["",spacer+"This option allows each member of the group to delete any record owned by any member of the group in the 'Client' table."];
client_delete3Tip=["",spacer+"This option allows each member of the group to delete any records in the 'Client' table."];

// address table
address_addTip=["",spacer+"This option allows all members of the group to add records to the 'Address' table. A member who adds a record to the table becomes the 'owner' of that record."];

address_view0Tip=["",spacer+"This option prohibits all members of the group from viewing any record in the 'Address' table."];
address_view1Tip=["",spacer+"This option allows each member of the group to view only his own records in the 'Address' table."];
address_view2Tip=["",spacer+"This option allows each member of the group to view any record owned by any member of the group in the 'Address' table."];
address_view3Tip=["",spacer+"This option allows each member of the group to view all records in the 'Address' table."];

address_edit0Tip=["",spacer+"This option prohibits all members of the group from modifying any record in the 'Address' table."];
address_edit1Tip=["",spacer+"This option allows each member of the group to edit only his own records in the 'Address' table."];
address_edit2Tip=["",spacer+"This option allows each member of the group to edit any record owned by any member of the group in the 'Address' table."];
address_edit3Tip=["",spacer+"This option allows each member of the group to edit any records in the 'Address' table, regardless of their owner."];

address_delete0Tip=["",spacer+"This option prohibits all members of the group from deleting any record in the 'Address' table."];
address_delete1Tip=["",spacer+"This option allows each member of the group to delete only his own records in the 'Address' table."];
address_delete2Tip=["",spacer+"This option allows each member of the group to delete any record owned by any member of the group in the 'Address' table."];
address_delete3Tip=["",spacer+"This option allows each member of the group to delete any records in the 'Address' table."];

// acc_type table
acc_type_addTip=["",spacer+"This option allows all members of the group to add records to the 'acc_type' table. A member who adds a record to the table becomes the 'owner' of that record."];

acc_type_view0Tip=["",spacer+"This option prohibits all members of the group from viewing any record in the 'acc_type' table."];
acc_type_view1Tip=["",spacer+"This option allows each member of the group to view only his own records in the 'acc_type' table."];
acc_type_view2Tip=["",spacer+"This option allows each member of the group to view any record owned by any member of the group in the 'acc_type' table."];
acc_type_view3Tip=["",spacer+"This option allows each member of the group to view all records in the 'acc_type' table."];

acc_type_edit0Tip=["",spacer+"This option prohibits all members of the group from modifying any record in the 'acc_type' table."];
acc_type_edit1Tip=["",spacer+"This option allows each member of the group to edit only his own records in the 'acc_type' table."];
acc_type_edit2Tip=["",spacer+"This option allows each member of the group to edit any record owned by any member of the group in the 'acc_type' table."];
acc_type_edit3Tip=["",spacer+"This option allows each member of the group to edit any records in the 'acc_type' table, regardless of their owner."];

acc_type_delete0Tip=["",spacer+"This option prohibits all members of the group from deleting any record in the 'acc_type' table."];
acc_type_delete1Tip=["",spacer+"This option allows each member of the group to delete only his own records in the 'acc_type' table."];
acc_type_delete2Tip=["",spacer+"This option allows each member of the group to delete any record owned by any member of the group in the 'acc_type' table."];
acc_type_delete3Tip=["",spacer+"This option allows each member of the group to delete any records in the 'acc_type' table."];

// trans_type table
trans_type_addTip=["",spacer+"This option allows all members of the group to add records to the 'Trans type' table. A member who adds a record to the table becomes the 'owner' of that record."];

trans_type_view0Tip=["",spacer+"This option prohibits all members of the group from viewing any record in the 'Trans type' table."];
trans_type_view1Tip=["",spacer+"This option allows each member of the group to view only his own records in the 'Trans type' table."];
trans_type_view2Tip=["",spacer+"This option allows each member of the group to view any record owned by any member of the group in the 'Trans type' table."];
trans_type_view3Tip=["",spacer+"This option allows each member of the group to view all records in the 'Trans type' table."];

trans_type_edit0Tip=["",spacer+"This option prohibits all members of the group from modifying any record in the 'Trans type' table."];
trans_type_edit1Tip=["",spacer+"This option allows each member of the group to edit only his own records in the 'Trans type' table."];
trans_type_edit2Tip=["",spacer+"This option allows each member of the group to edit any record owned by any member of the group in the 'Trans type' table."];
trans_type_edit3Tip=["",spacer+"This option allows each member of the group to edit any records in the 'Trans type' table, regardless of their owner."];

trans_type_delete0Tip=["",spacer+"This option prohibits all members of the group from deleting any record in the 'Trans type' table."];
trans_type_delete1Tip=["",spacer+"This option allows each member of the group to delete only his own records in the 'Trans type' table."];
trans_type_delete2Tip=["",spacer+"This option allows each member of the group to delete any record owned by any member of the group in the 'Trans type' table."];
trans_type_delete3Tip=["",spacer+"This option allows each member of the group to delete any records in the 'Trans type' table."];

// psn_title table
psn_title_addTip=["",spacer+"This option allows all members of the group to add records to the 'Title' table. A member who adds a record to the table becomes the 'owner' of that record."];

psn_title_view0Tip=["",spacer+"This option prohibits all members of the group from viewing any record in the 'Title' table."];
psn_title_view1Tip=["",spacer+"This option allows each member of the group to view only his own records in the 'Title' table."];
psn_title_view2Tip=["",spacer+"This option allows each member of the group to view any record owned by any member of the group in the 'Title' table."];
psn_title_view3Tip=["",spacer+"This option allows each member of the group to view all records in the 'Title' table."];

psn_title_edit0Tip=["",spacer+"This option prohibits all members of the group from modifying any record in the 'Title' table."];
psn_title_edit1Tip=["",spacer+"This option allows each member of the group to edit only his own records in the 'Title' table."];
psn_title_edit2Tip=["",spacer+"This option allows each member of the group to edit any record owned by any member of the group in the 'Title' table."];
psn_title_edit3Tip=["",spacer+"This option allows each member of the group to edit any records in the 'Title' table, regardless of their owner."];

psn_title_delete0Tip=["",spacer+"This option prohibits all members of the group from deleting any record in the 'Title' table."];
psn_title_delete1Tip=["",spacer+"This option allows each member of the group to delete only his own records in the 'Title' table."];
psn_title_delete2Tip=["",spacer+"This option allows each member of the group to delete any record owned by any member of the group in the 'Title' table."];
psn_title_delete3Tip=["",spacer+"This option allows each member of the group to delete any records in the 'Title' table."];

// loan_type table
loan_type_addTip=["",spacer+"This option allows all members of the group to add records to the 'Loan type' table. A member who adds a record to the table becomes the 'owner' of that record."];

loan_type_view0Tip=["",spacer+"This option prohibits all members of the group from viewing any record in the 'Loan type' table."];
loan_type_view1Tip=["",spacer+"This option allows each member of the group to view only his own records in the 'Loan type' table."];
loan_type_view2Tip=["",spacer+"This option allows each member of the group to view any record owned by any member of the group in the 'Loan type' table."];
loan_type_view3Tip=["",spacer+"This option allows each member of the group to view all records in the 'Loan type' table."];

loan_type_edit0Tip=["",spacer+"This option prohibits all members of the group from modifying any record in the 'Loan type' table."];
loan_type_edit1Tip=["",spacer+"This option allows each member of the group to edit only his own records in the 'Loan type' table."];
loan_type_edit2Tip=["",spacer+"This option allows each member of the group to edit any record owned by any member of the group in the 'Loan type' table."];
loan_type_edit3Tip=["",spacer+"This option allows each member of the group to edit any records in the 'Loan type' table, regardless of their owner."];

loan_type_delete0Tip=["",spacer+"This option prohibits all members of the group from deleting any record in the 'Loan type' table."];
loan_type_delete1Tip=["",spacer+"This option allows each member of the group to delete only his own records in the 'Loan type' table."];
loan_type_delete2Tip=["",spacer+"This option allows each member of the group to delete any record owned by any member of the group in the 'Loan type' table."];
loan_type_delete3Tip=["",spacer+"This option allows each member of the group to delete any records in the 'Loan type' table."];

// psn_type table
psn_type_addTip=["",spacer+"This option allows all members of the group to add records to the 'Psn type' table. A member who adds a record to the table becomes the 'owner' of that record."];

psn_type_view0Tip=["",spacer+"This option prohibits all members of the group from viewing any record in the 'Psn type' table."];
psn_type_view1Tip=["",spacer+"This option allows each member of the group to view only his own records in the 'Psn type' table."];
psn_type_view2Tip=["",spacer+"This option allows each member of the group to view any record owned by any member of the group in the 'Psn type' table."];
psn_type_view3Tip=["",spacer+"This option allows each member of the group to view all records in the 'Psn type' table."];

psn_type_edit0Tip=["",spacer+"This option prohibits all members of the group from modifying any record in the 'Psn type' table."];
psn_type_edit1Tip=["",spacer+"This option allows each member of the group to edit only his own records in the 'Psn type' table."];
psn_type_edit2Tip=["",spacer+"This option allows each member of the group to edit any record owned by any member of the group in the 'Psn type' table."];
psn_type_edit3Tip=["",spacer+"This option allows each member of the group to edit any records in the 'Psn type' table, regardless of their owner."];

psn_type_delete0Tip=["",spacer+"This option prohibits all members of the group from deleting any record in the 'Psn type' table."];
psn_type_delete1Tip=["",spacer+"This option allows each member of the group to delete only his own records in the 'Psn type' table."];
psn_type_delete2Tip=["",spacer+"This option allows each member of the group to delete any record owned by any member of the group in the 'Psn type' table."];
psn_type_delete3Tip=["",spacer+"This option allows each member of the group to delete any records in the 'Psn type' table."];

// county table
county_addTip=["",spacer+"This option allows all members of the group to add records to the 'County' table. A member who adds a record to the table becomes the 'owner' of that record."];

county_view0Tip=["",spacer+"This option prohibits all members of the group from viewing any record in the 'County' table."];
county_view1Tip=["",spacer+"This option allows each member of the group to view only his own records in the 'County' table."];
county_view2Tip=["",spacer+"This option allows each member of the group to view any record owned by any member of the group in the 'County' table."];
county_view3Tip=["",spacer+"This option allows each member of the group to view all records in the 'County' table."];

county_edit0Tip=["",spacer+"This option prohibits all members of the group from modifying any record in the 'County' table."];
county_edit1Tip=["",spacer+"This option allows each member of the group to edit only his own records in the 'County' table."];
county_edit2Tip=["",spacer+"This option allows each member of the group to edit any record owned by any member of the group in the 'County' table."];
county_edit3Tip=["",spacer+"This option allows each member of the group to edit any records in the 'County' table, regardless of their owner."];

county_delete0Tip=["",spacer+"This option prohibits all members of the group from deleting any record in the 'County' table."];
county_delete1Tip=["",spacer+"This option allows each member of the group to delete only his own records in the 'County' table."];
county_delete2Tip=["",spacer+"This option allows each member of the group to delete any record owned by any member of the group in the 'County' table."];
county_delete3Tip=["",spacer+"This option allows each member of the group to delete any records in the 'County' table."];

// country table
country_addTip=["",spacer+"This option allows all members of the group to add records to the 'Country' table. A member who adds a record to the table becomes the 'owner' of that record."];

country_view0Tip=["",spacer+"This option prohibits all members of the group from viewing any record in the 'Country' table."];
country_view1Tip=["",spacer+"This option allows each member of the group to view only his own records in the 'Country' table."];
country_view2Tip=["",spacer+"This option allows each member of the group to view any record owned by any member of the group in the 'Country' table."];
country_view3Tip=["",spacer+"This option allows each member of the group to view all records in the 'Country' table."];

country_edit0Tip=["",spacer+"This option prohibits all members of the group from modifying any record in the 'Country' table."];
country_edit1Tip=["",spacer+"This option allows each member of the group to edit only his own records in the 'Country' table."];
country_edit2Tip=["",spacer+"This option allows each member of the group to edit any record owned by any member of the group in the 'Country' table."];
country_edit3Tip=["",spacer+"This option allows each member of the group to edit any records in the 'Country' table, regardless of their owner."];

country_delete0Tip=["",spacer+"This option prohibits all members of the group from deleting any record in the 'Country' table."];
country_delete1Tip=["",spacer+"This option allows each member of the group to delete only his own records in the 'Country' table."];
country_delete2Tip=["",spacer+"This option allows each member of the group to delete any record owned by any member of the group in the 'Country' table."];
country_delete3Tip=["",spacer+"This option allows each member of the group to delete any records in the 'Country' table."];

// member_group table
member_group_addTip=["",spacer+"This option allows all members of the group to add records to the 'Member group' table. A member who adds a record to the table becomes the 'owner' of that record."];

member_group_view0Tip=["",spacer+"This option prohibits all members of the group from viewing any record in the 'Member group' table."];
member_group_view1Tip=["",spacer+"This option allows each member of the group to view only his own records in the 'Member group' table."];
member_group_view2Tip=["",spacer+"This option allows each member of the group to view any record owned by any member of the group in the 'Member group' table."];
member_group_view3Tip=["",spacer+"This option allows each member of the group to view all records in the 'Member group' table."];

member_group_edit0Tip=["",spacer+"This option prohibits all members of the group from modifying any record in the 'Member group' table."];
member_group_edit1Tip=["",spacer+"This option allows each member of the group to edit only his own records in the 'Member group' table."];
member_group_edit2Tip=["",spacer+"This option allows each member of the group to edit any record owned by any member of the group in the 'Member group' table."];
member_group_edit3Tip=["",spacer+"This option allows each member of the group to edit any records in the 'Member group' table, regardless of their owner."];

member_group_delete0Tip=["",spacer+"This option prohibits all members of the group from deleting any record in the 'Member group' table."];
member_group_delete1Tip=["",spacer+"This option allows each member of the group to delete only his own records in the 'Member group' table."];
member_group_delete2Tip=["",spacer+"This option allows each member of the group to delete any record owned by any member of the group in the 'Member group' table."];
member_group_delete3Tip=["",spacer+"This option allows each member of the group to delete any records in the 'Member group' table."];

/*
	Style syntax:
	-------------
	[TitleColor,TextColor,TitleBgColor,TextBgColor,TitleBgImag,TextBgImag,TitleTextAlign,
	TextTextAlign,TitleFontFace,TextFontFace, TipPosition, StickyStyle, TitleFontSize,
	TextFontSize, Width, Height, BorderSize, PadTextArea, CoordinateX , CoordinateY,
	TransitionNumber, TransitionDuration, TransparencyLevel ,ShadowType, ShadowColor]

*/

toolTipStyle=["white","#00008B","#000099","#E6E6FA","","images/helpBg.gif","","","","\"Trebuchet MS\", sans-serif","","","","3",400,"",1,2,10,10,51,1,0,"",""];

applyCssFilter();
