<script>
	$j(function(){
		var tn = 'partner';

		/* data for selected record, or defaults if none is selected */
		var data = {
			title: { id: '<?php echo $rdata['title']; ?>', value: '<?php echo $rdata['title']; ?>', text: '<?php echo $jdata['title']; ?>' },
			address_id: { id: '<?php echo $rdata['address_id']; ?>', value: '<?php echo $rdata['address_id']; ?>', text: '<?php echo $jdata['address_id']; ?>' },
			type1: { id: '<?php echo $rdata['type1']; ?>', value: '<?php echo $rdata['type1']; ?>', text: '<?php echo $jdata['type1']; ?>' },
			type2: { id: '<?php echo $rdata['type2']; ?>', value: '<?php echo $rdata['type2']; ?>', text: '<?php echo $jdata['type2']; ?>' },
			type3: { id: '<?php echo $rdata['type3']; ?>', value: '<?php echo $rdata['type3']; ?>', text: '<?php echo $jdata['type3']; ?>' },
			membergroupid: { id: '<?php echo $rdata['membergroupid']; ?>', value: '<?php echo $rdata['membergroupid']; ?>', text: '<?php echo $jdata['membergroupid']; ?>' }
		};

		/* initialize or continue using AppGini.cache for the current table */
		AppGini.cache = AppGini.cache || {};
		AppGini.cache[tn] = AppGini.cache[tn] || AppGini.ajaxCache();
		var cache = AppGini.cache[tn];

		/* saved value for address_id */
		cache.addCheck(function(u, d){
			if(u != 'ajax_combo.php') return false;
			if(d.t == tn && d.f == 'address_id' && d.id == data.address_id.id)
				return { results: [ data.address_id ], more: false, elapsed: 0.01 };
			return false;
		});

		/* saved value for type1 */
		cache.addCheck(function(u, d){
			if(u != 'ajax_combo.php') return false;
			if(d.t == tn && d.f == 'type1' && d.id == data.type1.id)
				return { results: [ data.type1 ], more: false, elapsed: 0.01 };
			return false;
		});

		/* saved value for type2 */
		cache.addCheck(function(u, d){
			if(u != 'ajax_combo.php') return false;
			if(d.t == tn && d.f == 'type2' && d.id == data.type2.id)
				return { results: [ data.type2 ], more: false, elapsed: 0.01 };
			return false;
		});

		/* saved value for type3 */
		cache.addCheck(function(u, d){
			if(u != 'ajax_combo.php') return false;
			if(d.t == tn && d.f == 'type3' && d.id == data.type3.id)
				return { results: [ data.type3 ], more: false, elapsed: 0.01 };
			return false;
		});

		/* saved value for membergroupid */
		cache.addCheck(function(u, d){
			if(u != 'ajax_combo.php') return false;
			if(d.t == tn && d.f == 'membergroupid' && d.id == data.membergroupid.id)
				return { results: [ data.membergroupid ], more: false, elapsed: 0.01 };
			return false;
		});

		cache.start();
	});
</script>

