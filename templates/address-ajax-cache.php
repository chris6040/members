<script>
	$j(function(){
		var tn = 'address';

		/* data for selected record, or defaults if none is selected */
		var data = {
			county: { id: '<?php echo $rdata['county']; ?>', value: '<?php echo $rdata['county']; ?>', text: '<?php echo $jdata['county']; ?>' },
			country: { id: '<?php echo $rdata['country']; ?>', value: '<?php echo $rdata['country']; ?>', text: '<?php echo $jdata['country']; ?>' }
		};

		/* initialize or continue using AppGini.cache for the current table */
		AppGini.cache = AppGini.cache || {};
		AppGini.cache[tn] = AppGini.cache[tn] || AppGini.ajaxCache();
		var cache = AppGini.cache[tn];

		/* saved value for county */
		cache.addCheck(function(u, d){
			if(u != 'ajax_combo.php') return false;
			if(d.t == tn && d.f == 'county' && d.id == data.county.id)
				return { results: [ data.county ], more: false, elapsed: 0.01 };
			return false;
		});

		/* saved value for country */
		cache.addCheck(function(u, d){
			if(u != 'ajax_combo.php') return false;
			if(d.t == tn && d.f == 'country' && d.id == data.country.id)
				return { results: [ data.country ], more: false, elapsed: 0.01 };
			return false;
		});

		cache.start();
	});
</script>

