window.onload = () => {

	var subtotal = document.getElementById('subtotal');
	var pts = document.getElementById('pts');
	var total = document.getElementById('total');
	var change = document.getElementById('change');
	var amount_tendered = document.getElementById('amount_tendered');

	amount_tendered.onkeyup = () => {

		total.value = subtotal.value - pts.value;
		change.value = amount_tendered.value - total.value;
	}

	pts.onkeyup = () => {

		total.value = subtotal.value - pts.value;
		change.value = amount_tendered.value - total.value;
	}

}

$(document).ready( () => {

   $('#find_scan').on('change', () => {
      var item_code = $('#find_scan').val();
      if ( item_code !== null ) {
         $.post(`add_item_list.php`, {
         	code: item_code

         }, (status) => {

         	alert(status);
         	window.location.reload();
         });
      }
   });

});