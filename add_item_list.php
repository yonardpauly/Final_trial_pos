<?php

require_once 'db.php';
require_once 'functions.php';

$code = $_POST['code'];

$item_code = select_item_code ($pdo, $code);
$list_code = select_list_item_code ($pdo, $code);
compute_item_quantity_total_price ($pdo, $code);

if ( $item_code->rowCount() > 0 && $list_code->rowCount() > 0 ) {

   add_item_qty ($pdo, $code);

} elseif (  $item_code->rowCount() < 1 && $list_code->rowCount() < 1 ) {

   header( 'location: index.php?item_code=not_exists' );

} else {

   $add = add_item_to_temp_transac_details_list($pdo, $code);
}