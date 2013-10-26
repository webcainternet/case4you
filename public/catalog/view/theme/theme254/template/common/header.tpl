<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />

	
<style type="text/css">
@font-face {
  font-family: "c4y1";
  src: url(http://capamaniacos.com.br/css/fontes/alrightsans-regularitalic-v3.ttf);
}
@font-face {
  font-family: "c4y2";
  src: url(http://capamaniacos.com.br/css/fontes/alrightsans-bolditalic-v3.ttf);
}
.fontc4y1 { 
  font-family: "c4y1", Arial, Verdana;
  font-size: 12px;
}

.fontc4y2 { 
  font-family: "c4y2", Arial, Verdana;
  font-size: 14px;
  color: #6aa11a;
}
body, p {
font-family: "c4y1", Arial, Verdana;
margin:0px; padding:0px;
background-color: transparent;
}

</style>


<link rel="stylesheet" type="text/css" href="/catalog/view/theme/theme254/shadowbox/shadowbox.css">
<script type="text/javascript" src="/catalog/view/theme/theme254/shadowbox/shadowbox.js"></script>
<script type="text/javascript">
Shadowbox.init();
</script>

<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template');?>/stylesheet/stylesheet.css" />
<link href="catalog/view/theme/<?php echo $this->config->get('config_template');?>/stylesheet/cloud-zoom.css" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/<?php echo $this->config->get('config_template');?>/stylesheet/superfish.css" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/<?php echo $this->config->get('config_template');?>/stylesheet/slideshow.css" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/<?php echo $this->config->get('config_template');?>/stylesheet/jquery.prettyPhoto.css" rel="stylesheet" type="text/css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.jcarousel.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.cycle.js"></script>
<link href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/skin.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

<!--[if IE]>
<script type="text/javascript" src="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4-iefix.js"></script>
<![endif]-->
<!--[if lt IE 8]><div style='clear:both;height:59px;padding:0 15px 0 15px;position:relative;z-index:10000;text-align:center;'><a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." /></a></div><![endif]-->
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/easyTooltip.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jQuery.equalHeights.js"></script>
<script type="text/JavaScript" src="catalog/view/javascript/cloud-zoom.1.0.2.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jscript_zjquery.anythingslider.js"></script>
<script type="text/javascript" src="catalog/view/javascript/superfish.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery.bxSlider.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/script.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/nivo-slider/jquery.nivo.slider.pack.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if  IE 8]>
	<style>
		.success, #header #cart .content  { border:1px solid #e7e7e7;}
	</style>
<![endif]-->

<!--[if  IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template');?>/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template');?>/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template');?>/stylesheet/livesearch.css"/>

<script type="text/javascript" src="catalog/view/theme/theme254/coin-slider/coin-slider.min.js"></script>
<link rel="stylesheet" href="catalog/view/theme/theme254/coin-slider/coin-slider-styles.css" type="text/css" />

<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<?php echo $google_analytics; ?>


<!--Start of Zopim Live Chat Script-->
<script type="text/javascript">
window.$zopim||(function(d,s){var z=$zopim=function(c){z._.push(c)},$=z.s=
d.createElement(s),e=d.getElementsByTagName(s)[0];z.set=function(o){z.set.
_.push(o)};z._=[];z.set._=[];$.async=!0;$.setAttribute('charset','utf-8');
$.src='//v2.zopim.com/?1SIkgAVAM1gul2RCXO1TxM2ZRaoi24Zt';z.t=+new Date;$.
type='text/javascript';e.parentNode.insertBefore($,e)})(document,'script');
</script>
<!--End of Zopim Live Chat Script-->

</head>
<body class="<?php echo empty($this->request->get['route']) ? 'common-home' : str_replace('/', '-', $this->request->get['route']); ?>">
<div class="bg-1">
<div class="main-shining">
<div class="row-1">
<div id="header">
	<div class="toprow">
		<div class="outer">
			<?php echo $language; ?>
			<?php echo $currency; ?>
			<ul class="links">
				<li><a class="<?php if (isset($this->request->get['route']) && $this->request->get['route']=="account/wishlist") {echo "active";} ?>" href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></li>
				<li><a class="<?php if (isset($this->request->get['route']) && $this->request->get['route']=="account/account") {echo "active";} ?>" href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
				<li><a class="<?php if (isset($this->request->get['route']) && $this->request->get['route']=="checkout/cart") {echo "active";} ?>" href="<?php echo $shopping_cart; ?>"><?php echo $text_shopcart; ?></a></li>
				<li><a class="<?php if (isset($this->request->get['route']) && $this->request->get['route']=="checkout/checkout") {echo "active";} ?>" href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
			</ul>

			<div style="float: left; width: 95px; height: 20px;">
				<iframe src="//www.facebook.com/plugins/like.php?href=https%3A%2F%2Fwww.facebook.com%2Fpages%2FCase4You%2F173492216171488%3Fref%3Dhl&amp;width=200&amp;height=20&amp;colorscheme=light&amp;layout=button_count&amp;action=like&amp;show_faces=true&amp;send=true&amp;appId=363972257064181" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:200px; height:20px;" allowTransparency="true"></iframe>
			</div>
			<div id="welcome">
	
				<?php if (!$logged) { ?>
				<?php echo $text_welcome; ?>
				<?php } else { ?>
				<?php echo $text_logged; ?>
				<?php } ?>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div class="outer">
	
	<?php if ($logo) { ?>
	<div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" style="height: 120px;" /></a></div>
	
	
	<div style="float: left;margin-top: 78px;margin-left: 144px;"><img src="/image/data/indique2.png" style="width: 220px;" alt="Indique!">

		<div class="fontc4y1">dwdwd</div>
	</div>


	
	<?php } ?>
	<div class="header-top1"> 
		<div class="cart-position">
			<div class="cart-inner"><?php echo $cart; ?></div>
		</div>
		<div class="banner-top"></div>
		<div class="clear"></div>
		</div>
	<div class="clear"></div>
	</div>
	<div class="clear"></div>
</div>
<div class="clear"></div>

	<div class="topmenu">
		<div class="topmenu2">
			<div id="search">
				<div class="button-search"></div>
				<input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
			</div>
			<ul class="menu">
				<li>
					<a class="" rel="shadowbox[Mixed];width=796;height=755"  href="http://case4you.com.br/case4you/0/?m=0">Crie Sua Capa</a>
					<ul style="position: absolute; z-index:1000;">
						<li><a class="" rel="shadowbox[Mixed];width=796;height=755"  href="http://case4you.com.br/case4you/0/?m=0">Iphone 4</a></li>
						<li><a class="" rel="shadowbox[Mixed];width=796;height=755"  href="http://case4you.com.br/case4you/0/?m=1">Iphone 5</a></li>
						<li><a class="" rel="shadowbox[Mixed];width=796;height=755"  href="http://case4you.com.br/case4you/0/?m=2">Galaxy S3</a></li>
						<li><a class="" rel="shadowbox[Mixed];width=796;height=755"  href="http://case4you.com.br/case4you/0/?m=3">Galaxy S4</a></li>
					</ul>
				</li>
				<li>
					<a class="" href="capas-prontas">Produtos</a>
					<ul style="position: absolute; z-index:1000;">
						<li><a class="" href="#">Capas prontas</a></li>
						<li><a class="" href="#">Acessórios</a></li>
					</ul>
				</li>
				<li><a class="" href="/quem-somos">Quem Somos</a></li>
				<li><a class="" href="/duvidas">D&uacute;vidas</a></li>
				<li><a class="" href="/fale-conosco">Fale Conosco</a></li>

				<?php /*
				<?php if (!isset($this->request->get['route'])) { $route='active'; }  else {$route='';}?> <li class="first"><a class="<?php echo $route; if (isset($this->request->get['route']) && $this->request->get['route']=="common/home") {echo "active";} ?>" href="<?php echo $home; ?>"><span></span></a></li>
				<?php $i=0; foreach ($informations as $information) {$i++ ?>
				<li class="info info-<?php echo $i; ?>"><a class="<?php if ($this->request->get['route']=="information/information") {echo "active";} ?>" href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
				<?php } ?>
				*/ ?>
				<?php /* <li><a class="<?php if ($this->request->get['route']=="product/special") {echo "active";} ?>" href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li> */ ?>
				<?php /* <li><a class="<?php if ($this->request->get['route']=="information/sitemap") {echo "active";} ?>" href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li> */ ?>
				
			</ul>
			<div class="clear"></div>
		</div>
	</div>

<div class="clear"></div>
<?php if ($categories) { ?>
<div id="menu">
  <script type="text/javascript">
		$(document).ready(function(){
			$('.menu ul li').last().addClass('last');
			$('.menu ul li li').last().addClass('last');
		});
		
	</script>
  <ul  class="menu">
	<?php $cv=0;?>
	<?php foreach ($categories as $category) { $cv++; ?>
	<?php if ($category['category_id'] == $category_id) { ?>
	<li class="active cat_<?php echo $cv ?>">
	  <?php } else { ?>
	<li class="cat_<?php echo $cv ?>">
	  <?php } ?>
	  <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
	  <?php if ($category['children']) { ?>

			<?php for ($i = 0; $i < count($category['children']);) { ?>
			<ul>
			  <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
			  <?php for (; $i < $j; $i++) { ?>
			  <?php if (isset($category['children'][$i])) { ?>
			  <?php $id=$category['children'][$i]['category_id'];?>
			  <?php if ( $id == $child_id) { ?>
			  <li class="active">
				<?php } else { ?>
			  <li>
				<?php } ?>
				<?php if ($category['children'][$i]['children3']) {?>
				<a class="screenshot1"  href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name'];?></a>
				<ul>
				  <?php foreach ($category['children'][$i]['children3'] as $ch3) { ?>
				  <li>
					<?php if ($ch3['category_id'] == $ch3_id) { ?>
					<a href="<?php echo $ch3['href']; ?>" class="active"><?php echo $ch3['name']; ?></a>
					<?php } else { ?>
					<a href="<?php echo $ch3['href']; ?>"><?php echo $ch3['name']; ?></a>
					<?php } ?>
				  </li>
				  <?php } ?>
				</ul>
				<?php } else {?>
				<a class="screenshot1"  href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name'];?></a>
			  <?php }?>
			  </li>
			  <?php } ?>
			  <?php } ?>
			</ul>
			<?php } ?>
	  <?php } ?>
	</li>
	<?php } ?>
  </ul>
  
  <div class="clear"></div>
</div>
<?php } ?>
</div>
<div class="clear"></div>

<?php if ($modules) {?>
<div class="header-modules">
  <?php foreach ($modules as $module) { ?>
  <?php echo $module; ?>
  <?php } ?>
  <div class="clear"></div>
</div>
<div class="clear"></div>
<?php }?>
<div class="main-container">
<p id="back-top"> <a href="#top"><span></span></a> </p>
<div id="container">
<div id="notification"> </div>


