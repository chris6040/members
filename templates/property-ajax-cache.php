<script>
	$j(function(){
		var tn = 'property';

		/* data for selected record, or defaults if none is selected */
		var data = {
			partner_id: { id: '<?php echo $rdata['partner_id']; ?>', value: '<?php echo $rdata['partner_id']; ?>', text: '<?php echo $jdata['partner_id']; ?>' },
			referer: { id: '<?php echo $rdata['referer']; ?>', value: '<?php echo $rdata['referer']; ?>', text: '<?php echo $jdata['referer']; ?>' },
			address_id: { id: '<?php echo $rdata['address_id']; ?>', value: '<?php echo $rdata['address_id']; ?>', text: '<?php echo $jdata['address_id']; ?>' }
		};

		/* initialize or continue using AppGini.cache for the current table */
		AppGini.cache = AppGini.cache || {};
		AppGini.cache[tn] = AppGini.cache[tn] || AppGini.ajaxCache();
		var cache = AppGini.cache[tn];

		/* saved value for partner_id */
		cache.addCheck(function(u, d){
			if(u != 'ajax_combo.php') return false;
			if(d.t == tn && d.f == 'partner_id' && d.id == data.partner_id.id)
				return { results: [ data.partner_id ], more: false, elapsed: 0.01 };
			return false;
		});

		/* saved value for referer */
		cache.addCheck(function(u, d){
			if(u != 'ajax_combo.php') return false;
			if(d.t == tn && d.f == 'referer' && d.id == data.referer.id)
				return { results: [ data.referer ], more: false, elapsed: 0.01 };
			return false;
		});

		/* saved value for address_id */
		cache.addCheck(function(u, d){
			if(u != 'ajax_combo.php') return false;
			if(d.t == tn && d.f == 'address_id' && d.id == data.address_id.id)
				return { results: [ data.address_id ], more: false, elapsed: 0.01 };
			return false;
		});

		cache.start();
	});
</script>

