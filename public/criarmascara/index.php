<?php
	$imagem = $_GET["imagem"];
?>

<html>

<style>

.image {
/* background: url(shadow-kpa.png) no-repeat bottom center; 
background-size: 250px; */
padding-bottom: 40px;
}
</style>

<body style="margin: 20px; padding: 20px;">

			<div style="margin: auto; width: 400px;">
				Iphone4/4S
				<div style="width:240px;">
                    <div class="image">
                        <div style="background: url(<?php echo $imagem; ?>) top center; height: 468px; background-size: 468px; width: 240px;border-radius: 46px;"></div>
                    </div>
                    <img src="mascara_iphone_4s.png" style="height: 468px;width: 240px;position: relative;top: -508px;margin: 0 0 -254px;   border-radius: 44px!important;" alt="">
                </div>
            </div>

</body>



</html>
