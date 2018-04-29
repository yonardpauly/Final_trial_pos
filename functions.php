<?php

function show_temp_transac_details_items ($pdo) {

	return query($pdo, 'SELECT * FROM temporary_transac_details');
}

function show_temp_transac_head_customers ($pdo) {

	return query($pdo, 'SELECT * FROM customer');
}

function compute_temp_transac_details_items_total ($pdo) {

	return query($pdo, 'SELECT SUM(list_item_qty_total) as Total FROM temporary_transac_details');
}

function add_item_to_temp_transac_details_list ( $pdo, $code ) {

	return query($pdo, "INSERT INTO temporary_transac_details ( list_item_code, list_name, list_price, list_qty, list_item_qty_total ) SELECT item_code, item_description, selling_price, list_item_quantity,(selling_price * list_item_quantity) as total FROM items WHERE `item_code` = ?", [$code]);
}

function select_item_code ( $pdo, $code ) {

	return query($pdo, "SELECT item_code FROM items WHERE item_code = ?", [$code]);
}

function select_list_item_code ( $pdo, $code ) {

	return query( $pdo, "SELECT list_item_code FROM temporary_transac_details WHERE list_item_code = ?", [$code]);
}

function compute_item_quantity_total_price ( $pdo, $code ) {

	return query( $pdo, "UPDATE `temporary_transac_details` SET list_item_qty_total = list_price * (list_qty + 1) WHERE list_item_code = ?", [$code]);
}

function add_item_qty ( $pdo, $code ) {

	return query($pdo, "UPDATE temporary_transac_details SET list_qty = list_qty + 1 WHERE list_item_code = ?", [$code]);
}

function add_customer ( $pdo, $name ) {

	return query($pdo, "SELECT customer_name, customer_points FROM customer WHERE customer_name = ?", [$name]);
}