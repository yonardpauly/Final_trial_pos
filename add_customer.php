<?php

$name = $_POST['name'];

header('location: index.php?customer='. $name);