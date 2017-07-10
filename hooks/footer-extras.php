<?php
	if($_SERVER['PHP_SELF'] == '/index.php' && isset ($_GET['signIn']))
	{
	?>
	<style>
		body{
			background: url("images/bgnd.jpg") no-repeat fixed center center / cover
		}
	</style>
	<?php
	}

	if($_SERVER['PHP_SELF'] == '/index.php' && isset ($_GET['loginFailed']))
	{
	?>
	<style>
		body{
			background: url("images/bgnd.jpg") no-repeat fixed center center / cover
		}
	</style>
	<?php
	}
?>
