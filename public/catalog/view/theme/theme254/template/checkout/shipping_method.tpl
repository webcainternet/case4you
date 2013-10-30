<?php //echo "<pre>"; print_r($shipping_methods);  print_r($coupon_info); echo "</pre>";?>


    <div class="text-entrega">TIPO DE ENTREGA</div>
     <?php foreach ($shipping_methods as $shipping_method) { ?>
	<?php foreach ($shipping_method['quote'] as $quote) { ?>
	<?php if(isset($coupon_info) && $coupon_info['shipping'] == 1 && $coupon_info['uses_total'] >= $coupon_info['uses_customer']){ ?>
                    <?php	if(strtolower($quote['title']) == "frete grátis"){ ?>
                                    <input class="radio" type="radio" checked="checked" 
                                            value="<?php echo strtolower($quote['title']); ?>" name="type_shipping">
                                    <div class="tex" style="width:none;">
                                            <?php echo $quote['title']; ?>
                                    </div>
                    <?php	}else if(strtolower($quote['title']) == "sedex"){ ?>
                                    <input class="radio" type="radio" 
                                            value="<?php echo strtolower($quote['title']); ?>" name="type_shipping">
                                    <div class="tex" style="width:none;">
                                            <?php echo $quote['title']; ?>
                                    </div>
                    <?php	} ?>
            <?php   }else if(!isset($coupon_info) || $coupon_info['shipping'] == 0){ ?>
            <?php               if(strtolower($quote['title']) == "sedex"){ ?>
                                    <input class="radio" type="radio" checked="checked"
                                            value="<?php echo strtolower($quote['title']); ?>" name="type_shipping">
                                    <div class="tex" style="width:none;">
                                            <?php echo $quote['title']; ?>
                                    </div>
                            <?php }else if(strtolower($quote['title']) == "pac"){ ?>
                                    <input class="radio" type="radio" checked="checked"
                                            value="<?php echo strtolower($quote['title']); ?>" name="type_shipping">
                                    <div class="tex" style="width:none;">
                                            <?php echo $quote['title']; ?>
                                    </div>
                            <?php } ?>
            <?php } ?>
   	<?php } ?>
    <?php } ?>

