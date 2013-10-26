<?php
	require 'facebook_sdk/facebook.php';
	$facebook = new Facebook(array(
		'appId'  => '363972257064181',
		'secret' => '12c8083874ef0352cca1108a2a104d14'
	));


$access = $facebook->getAccessToken();
$user = $facebook->getUser();
echo $access;
if(!$user)
{
$loginUrl = $facebook->getLoginUrl();
//header("Location:".$loginUrl);
}
$userWall = $facebook->api('/me/feed',array('access_token'=>$access))   ;
var_dump($userWall);
