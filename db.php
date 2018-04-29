<?php

$servername = 'localhost';
$username = 'root';
$password = '';
$dbname = 'mypos';   
$db_type = 'mysql';
$charset = 'utf8mb4';

$dsn = $db_type .':host='. $servername .';dbname='. $dbname .';charset='. $charset;
$options = [
   PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
   PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ,
   PDO::ATTR_EMULATE_PREPARES => false
];

try {
   
   $pdo = new PDO ( $dsn, $username, $password, $options );
   
} catch ( PDOException $e ) { $e->getMessage(); }

function query ( $pdo, $query, $params = array() ) {

	$stmt = $pdo->prepare($query);
	$stmt->execute($params);
	return $stmt;
}