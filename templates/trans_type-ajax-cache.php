<script>
	$j(function(){
		var tn = 'trans_type';

		/* data for selected record, or defaults if none is selected */
		var data = {
			acc_type: { id: '<?php echo $rdata['acc_type']; ?>', value: '<?php echo $rdata['acc_type']; ?>', text: '<?php echo $jdata['acc_type']; ?>' }
		};

		/* initialize or continue using AppGini.cache for the current table */
		AppGini.cache = AppGini.cache || {};
		AppGini.cache[tn] = AppGini.cache[tn] || AppGini.ajaxCache();
		var cache = AppGini.cache[tn];

		/* saved value for acc_type */
		cache.addCheck(function(u, d){
			if(u != 'ajax_combo.php') return false;
			if(d.t == tn && d.f == 'acc_type' && d.id == data.acc_type.id)
				return { results: [ data.acc_type ], more: false, elapsed: 0.01 };
			return false;
		});

		cache.start();
	});
</script>

