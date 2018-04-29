<?php

	require_once 'db.php';
	require_once 'functions.php';
	$items = show_temp_transac_details_items($pdo);
	$customers = show_temp_transac_head_customers($pdo);
	$items_total = compute_temp_transac_details_items_total($pdo)->fetch(PDO::FETCH_COLUMN);
	var_dump($items_total);

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
   <title>Point of Sales</title>
</head>
<body>

	<section>
		<div class="container-fluid">
			<h1 align="center">Point of Sales</h1>
			<div class="row">
				<div class="col-md-8">
					<div class="card bg-light">
						<div class="card-header">
							<hr />
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="find-scan">Find/Scan Item</span>
                        </div>
                        <input id="find_scan" name="item_code" type="text" class="form-control item_list" aria-label="Find/Scan Item" autofocus>
							</div>
						</div>
						<div class="card-body">
							<div class="table-responsive">
                        <table class="table table-default">
                           <thead>
                              <tr>
                                 <th>Actions</th>
                                 <th>Item Code</th>
                                 <th>Item Name</th>
                                 <th>Item Price</th>
                                 <th>Item Quantity</th>
                                 <th>Total</th>
                              </tr>
                           </thead>
                           <tbody>
                           	<?php foreach( $items as $item ): ?>
										<tr>
											<div class="col-xs-2">
												<td>
													<button class="btn btn-sm btn-danger" type="submit">&times;</button>
												</td>
												<td>
													<div class="col-xs-2">
													<input type="text" class="form-control col-xs-2" value="<?= $item->list_item_code; ?>" readonly name="item_code">
													</div>
												</td>
												<td class="col-xs-2">
													<input type="text" class="form-control" value="<?= $item->list_name; ?>" readonly name="item_desc">
												</td>
												<td class="col-xs-2">
													<input type="text" class="form-control" value="<?= $item->list_price; ?>" readonly
													name="item_price">
												</td>
												<td class="col-xs-2">
													<input type="text" class="form-control" value="<?= $item->list_qty; ?>" name="item_qty">
												</td>
												<td class="col-xs-2">
													<input type="text" class="form-control" value="<?= $item->list_item_qty_total; ?>" readonly name="total">
												</td>
											</div>
										</tr>
										<?php endforeach; ?>
                           </tbody>
                        </table>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<form>
						<div class="card bg-light">
							<div class="card-header">
								<div class="input-group mb-3 text-center">
									<div class="input-group">
										<div class="input-group-prepend mb-3">
											<select name="customer_id" class="custom-select" id="customer_area">
												<option value="Choose Customer">Choose Customer</option>

												<?php foreach( $customers as $customer ): ?>
												<option value="<?= $customer->id; ?>"><?= $customer->customer_name; ?></option>
												<?php endforeach; ?>

												<input type="hidden" name="hidden_id" id="hidden_id" value="">
											</select>
											<span>&nbsp;&nbsp;&nbsp;</span>
											<!-- <button type="submit" name="set_customer" id="set_cust" class="btn btn-secondary">Set this Customer</button> -->
										</div>
										<table class="table table-bordered">
											<tr>
												<th>
													Customer Name
												</th>
												<td id="customer_id"><?= (isset($_GET['customer'])) ? $customerName->customer_name : ''; ?></td>
											</tr>
											<tr>
												<th>
													Your Total Points
												</th>
												<td id="customer_points"><?= (isset($_GET['customer'])) ? $customerName->customer_points : ''; ?></td>
											</tr>
											<input type="hidden" id="customer_hidden_id" value="">
										</table>
									</div>
								</div>
								<hr />
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-hover">
										<tr>
											<th>Sub Total</th>
											<td>
												<input class="form-control" type="number" id="subtotal" value="<?= $items_total; ?>"  name="sub_total" readonly>
											</td>
										</tr>
										<tr>
											<th>Total</th>
											<td>
												<input class="form-control" type="number" name="total" id="total" readonly>
											</td>
										</tr>
										<tr>
											<th>
												<small style="font-weight:bold">Points to use</small>
											</th>
											<td>
												<div class="input-group mb-3">
													<input type="number" id="pts" value="200.25" class="form-control" aria-label="Points to use">
												</div>
											</td>
										</tr>
										<tr>
											<th>Change</th>
											<td>
												<input id="change" class="form-control" type="number" readonly>
											</td>
										</tr>
										<tr>
											<th>
												<small style="font-weight:bold">Amount Tendered</small>
											</th>
											<td>
												<input type="number" id="amount_tendered" class="form-control form-control-sm" name="tendered">
											</td>
										</tr>
									</table>
								</div>
							</div>
							<div class="card-footer d-flex justify-content-between">
								<button class="btn btn-sm btn-danger" type="submit" name="cancel_sale">Cancel Sale</button>
								<button class="btn btn-sm btn-primary" type="submit" name="complete_sale">Complete Sale</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<script src="jquery.js"></script>
	<script src="script.js"></script>
</body>
</html>