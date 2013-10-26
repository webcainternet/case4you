<?php
        require 'facebook_sdk/facebook.php';
        $facebook = new Facebook(array(
                'appId'  => '363972257064181',
                'secret' => '12c8083874ef0352cca1108a2a104d14'
        ));

	$user = $facebook->getUser();
        $albums_str = "Here goes: ";
        if ($user) {
            try {
echo "1";
                $albums = $facebook->api('/me/albums');

                foreach ($albums['data'] as $album) {

                    $cover = "https://graph.facebook.com/{$album['id']}/picture? type=album&access_token={$facebook->getAccessToken()}";

                    // echo $album['name'];

                    $albums_str .= $album['name'];
                    // echo "<img src='https://graph.facebook.com/cover_photo/picture?type=normal'/>";
                }
            } catch (FacebookApiException $e) {
                error_log($e);
                $user = null;
                $albums_str .= '--Errorr--';
            }

echo "1";

?>
