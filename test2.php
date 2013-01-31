<?php

require("SOAP/Client.php");
header('Content-Type: text/xml'); 
$client = new SoapClient('/home/dwilkins/source/magapi/public/v2_soap.xml',array('soap_version' => SOAP_1_2, 'trace' => true));

// If somestuff requires api authentification,
// then get a session token
$session = $client->login('apiUser', 'apiKey');
$client->__getLastRequest();
$client->__getLastRequestHeaders();

$result = $client->call($session, 'catalog_product.list');
var_dump($result);

// If you don't need the session anymore
//$client->endSession($session);