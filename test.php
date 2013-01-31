<?php

require("SOAP/Client.php");

$client = new SoapClient('/home/dwilkins/source/magapi/public/v2_soap.xml',array('soap_version' => SOAP_1_2, 'trace' => true));

// If some stuff requires api authentification,
// then get a session token
$session = 'not valid';
try {
  $session = $client->login(array('username' => 'dwilkins','apiKey' => 'i82much'));
} catch (Exception $e) {
  echo "Errors was " . $e;
//  $client->__getLastRequest();
  $client->__getLastRequestHeaders();
}
$complexFilter = array(
    'filter' => array('key' => 'sku', 'value' => '28417090'),
    'complex_filter' => array(
        array(
            'key' => 'sku',
            'value' => array('key' => 'in', 'value' => '28417090')
        )
    )
);
$session = $session->result;

$result = '';
print_r($complexFilter);
print_r($session);
// $result = $client->catalogProductList(array('sessionId' => $session,'filter' => $complexFilter,'storeView' => NULL));
$result = $client->catalogProductList(array('sessionId' => $session,'filters' => $complexFilter,'storeView' => NULL));
print_r($client->__getLastRequest());

print_r($result);