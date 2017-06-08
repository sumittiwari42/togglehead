<?php
/*
 * Template Name: News
 * Description: Page template without sidebar
 */

get_header(); 

require_once("path/to/vendor/autoload.php");
\EasyPost\EasyPost::setApiKey('ITCWIsaODYihI1nS2m8Amg');

$to_address = \EasyPost\Address::create(
    array(
        "name"    => "Dr. Steve Brule",
        "street1" => "179 N Harbor Dr",
        "city"    => "Redondo Beach",
        "state"   => "CA",
        "zip"     => "90277",
        "phone"   => "310-808-5243"
    )
);
$from_address = \EasyPost\Address::create(
    array(
        "company" => "EasyPost",
        "street1" => "118 2nd Street",
        "street2" => "4th Floor",
        "city"    => "San Francisco",
        "state"   => "CA",
        "zip"     => "94105",
        "phone"   => "415-456-7890"
    )
);
$parcel = \EasyPost\Parcel::create(
    array(
        "predefined_package" => "LargeFlatRateBox",
        "weight" => 76.9
    )
);
$shipment = \EasyPost\Shipment::create(
    array(
        "to_address"   => $to_address,
        "from_address" => $from_address,
        "parcel"       => $parcel
    )
);

$shipment->buy($shipment->lowest_rate());

$shipment->insure(array('amount' => 100));

echo $shipment->postage_label->label_url;

 get_footer(); ?>
?>



    
