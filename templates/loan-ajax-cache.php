<script>
	$j(function(){
		var tn = 'loan';

		/* data for selected record, or defaults if none is selected */
		var data = {
			loan_type: { id: '<?php echo $rdata['loan_type']; ?>', value: '<?php echo $rdata['loan_type']; ?>', text: '<?php echo $jdata['loan_type']; ?>' },
			property_id: { id: '<?php echo $rdata['property_id']; ?>', value: '<?php echo $rdata['property_id']; ?>', text: '<?php echo $jdata['property_id']; ?>' },
			broker_id: { id: '<?php echo $rdata['broker_id']; ?>', value: '<?php echo $rdata['broker_id']; ?>', text: '<?php echo $jdata['broker_id']; ?>' },
			lender_id: { id: '<?php echo $rdata['lender_id']; ?>', value: '<?php echo $rdata['lender_id']; ?>', text: '<?php echo $jdata['lender_id']; ?>' }
		};

		/* initialize or continue using AppGini.cache for the current table */
		AppGini.cache = AppGini.cache || {};
		AppGini.cache[tn] = AppGini.cache[tn] || AppGini.ajaxCache();
		var cache = AppGini.cache[tn];

		/* saved value for loan_type */
		cache.addCheck(function(u, d){
			if(u != 'ajax_combo.php') return false;
			if(d.t == tn && d.f == 'loan_type' && d.id == data.loan_type.id)
				return { results: [ data.loan_type ], more: false, elapsed: 0.01 };
			return false;
		});

		/* saved value for property_id */
		cache.addCheck(function(u, d){
			if(u != 'ajax_combo.php') return false;
			if(d.t == tn && d.f == 'property_id' && d.id == data.property_id.id)
				return { results: [ data.property_id ], more: false, elapsed: 0.01 };
			return false;
		});

		/* saved value for broker_id */
		cache.addCheck(function(u, d){
			if(u != 'ajax_combo.php') return false;
			if(d.t == tn && d.f == 'broker_id' && d.id == data.broker_id.id)
				return { results: [ data.broker_id ], more: false, elapsed: 0.01 };
			return false;
		});

		/* saved value for lender_id */
		cache.addCheck(function(u, d){
			if(u != 'ajax_combo.php') return false;
			if(d.t == tn && d.f == 'lender_id' && d.id == data.lender_id.id)
				return { results: [ data.lender_id ], more: false, elapsed: 0.01 };
			return false;
		});

		cache.start();
	});
</script>

