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

<div class="navbar-fixed-bottom hidden-print alert alert-info">
	<?php echo date('D, j M Y h:m:s a T'); ?>
</div>
