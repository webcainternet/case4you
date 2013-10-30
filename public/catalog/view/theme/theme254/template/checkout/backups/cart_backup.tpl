<?php echo $header; ?>
<?php if ($attention) { ?>
<div class="attention"><?php echo $attention; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
    <div class="carrinho_compra"></div>
  <h1><?php echo $heading_title; ?>
    <?php if ($weight) { ?>
    &nbsp;(<?php echo $weight; ?>)
    <?php } ?>
  </h1> 
 <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <div class="cart-info">
      <table>
        <thead>
          <tr>
            <td class="image"><?php echo $column_image; ?></td>
            <td class="name"><?php echo $column_name; ?></td>
            <!-- td class="model"><?php echo $column_model; ?></td -->
            <td class="quantity"><?php echo $column_quantity; ?></td>
            <td class="price"><?php echo $column_price; ?></td>
            <td class="total"><?php echo $column_total; ?></td>
            <td class="excluir">Excluir</td>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($products as $product) { ?>
          <tr>
            <td valign="middle" class="image"><?php if ($product['thumb']) { ?>
              <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
              <?php } ?></td>
            <td valign="middle" class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
              <?php if (!$product['stock']) { ?>
              <span class="stock">***</span>
              <?php } ?>
              <div>
                <?php foreach ($product['option'] as $option) { ?>
                - <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small><br />
                <?php } ?>
              </div>
              <?php if ($product['reward']) { ?>
              <small><?php echo $product['reward']; ?></small>
            <?php } ?></td>
            <!-- td valign="middle" class="model"><?php echo $product['model']; ?></td -->
            <td valign="middle" ><input type="text" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" />
            <td valign="middle" class="price"><?php echo $product['price']; ?></td>
            <td valign="middle" class="total"><?php echo $product['total']; ?></td>
            <td valign="middle" class="quantity">
             <!-- &nbsp;
              <input type="image" src="catalog/view/theme/default/image/update.png" alt="<?php echo $button_update; ?>" title="<?php echo $button_update; ?>" />
            &nbsp; --><a class="remover" href="<?php echo $product['remove']; ?>"> X<!-- <img src="catalog/view/theme/default/image/excluir.jpg" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" / --></a></td>
          </tr>
          <?php } ?>
          <?php foreach ($vouchers as $vouchers) { ?>
          <tr>
            <td valign="middle" class="image"></td>
            <td valign="middle" class="name"><?php echo $vouchers['description']; ?></td>
            <td valign="middle" class="model"></td>
            
              &nbsp;<a href="<?php echo $vouchers['remove']; ?>"><img src="catalog/view/theme/default/image/remove.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" /></a><td valign="middle"></td>
            <td valign="middle" class="price"><?php echo $vouchers['amount']; ?></td>
            <td valign="middle" class="total"><?php echo $vouchers['amount']; ?></td>
            <td valign="middle" class="quantity"><input type="text" name="" value="1" size="1" disabled="disabled" />
          </tr>
          <?php } ?>
        </tbody>
      </table>
    </div>
  </form>
  <?php if ($coupon_status || $voucher_status || $reward_status || $shipping_status) { ?>
  <h2><?php echo $text_next; ?></h2>
  <div class="content">
    <p><?php echo $text_next_choice; ?></p>
    <table class="radio">
      <?php if ($coupon_status) { ?>
      <tr class="highlight">
        <td><?php if ($next == 'coupon') { ?>
          <input type="radio" name="next" value="coupon" id="use_coupon" checked="checked" />
          <?php } else { ?>
          <input type="radio" name="next" value="coupon" id="use_coupon" />
          <?php } ?></td>
        <td><label for="use_coupon"><?php echo $text_use_coupon; ?></label></td>
      </tr>
      <?php } ?>
      <?php if ($voucher_status) { ?>
      <tr class="highlight">
        <td><?php if ($next == 'voucher') { ?>
          <input type="radio" name="next" value="voucher" id="use_voucher" checked="checked" />
          <?php } else { ?>
          <input type="radio" name="next" value="voucher" id="use_voucher" />
          <?php } ?></td>
        <td><label for="use_voucher"><?php echo $text_use_voucher; ?></label></td>
      </tr>
      <?php } ?>
      <?php if ($reward_status) { ?>
      <tr class="highlight">
        <td><?php if ($next == 'reward') { ?>
          <input type="radio" name="next" value="reward" id="use_reward" checked="checked" />
          <?php } else { ?>
          <input type="radio" name="next" value="reward" id="use_reward" />
          <?php } ?></td>
        <td><label for="use_reward"><?php echo $text_use_reward; ?></label></td>
      </tr>
      <?php } ?>
      <?php if ($shipping_status) { ?>
      <tr class="highlight">
        <td><?php if ($next == 'shipping') { ?>
          <input type="radio" name="next" value="shipping" id="shipping_estimate" checked="checked" />
          <?php } else { ?>
          <input type="radio" name="next" value="shipping" id="shipping_estimate" />
          <?php } ?></td>
        <td><label for="shipping_estimate"><?php echo $text_shipping_estimate; ?></label></td>
      </tr>
      <?php } ?>
    </table>
  </div>
  <div class="cart-module">
    <div id="coupon" class="content" style="display: <?php echo ($next == 'coupon' ? 'block' : 'none'); ?>;">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <?php echo $entry_coupon; ?>&nbsp;
        <input type="text" name="coupon" value="<?php echo $coupon; ?>" />
        <input type="hidden" name="next" value="coupon" />
        &nbsp;
        <input type="submit" value="<?php echo $button_coupon; ?>" class="button" />
      </form>
    </div>
    <div id="voucher" class="content" style="display: <?php echo ($next == 'voucher' ? 'block' : 'none'); ?>;">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <?php echo $entry_voucher; ?>&nbsp;
        <input type="text" name="voucher" value="<?php echo $voucher; ?>" />
        <input type="hidden" name="next" value="voucher" />
        &nbsp;
        <input type="submit" value="<?php echo $button_voucher; ?>" class="button" />
      </form>
    </div>
    <div id="reward" class="content" style="display: <?php echo ($next == 'reward' ? 'block' : 'none'); ?>;">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <?php echo $entry_reward; ?>&nbsp;
        <input type="text" name="reward" value="<?php echo $reward; ?>" />
        <input type="hidden" name="next" value="reward" />
        &nbsp;
        <input type="submit" value="<?php echo $button_reward; ?>" class="button" />
      </form>
    </div>
    <div id="shipping" class="content" style="display: <?php echo ($next == 'shipping' ? 'block' : 'none'); ?>;">
      <p><?php echo $text_shipping_detail; ?></p>
      <table>
        <tr>
          <td><span class="required">*</span> <?php echo $entry_country; ?></td>
          <td><select name="country_id">
              <option value=""><?php echo $text_select; ?></option>
              <?php foreach ($countries as $country) { ?>
              <?php if ($country['country_id'] == $country_id) { ?>
              <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
              <?php } ?>
              <?php } ?>
            </select></td>
        </tr>
        <tr>
          <td><span class="required">*</span> <?php echo $entry_zone; ?></td>
          <td><select name="zone_id">
            </select></td>
        </tr>
        <tr>
          <td><span id="postcode-required" class="required">*</span> <?php echo $entry_postcode; ?></td>
          <td><input type="text" name="postcode" value="<?php echo $postcode; ?>" /></td>
        </tr>
      </table>
      <input type="button" value="<?php echo $button_quote; ?>" id="button-quote" class="button" />
    </div>
  </div>
  <?php } ?>
  <div class="cart-total">
    <table id="total">
      <?php foreach($totals as $total) { ?>
        <?php if(strtoupper($total["title"]) == "SUB TOTAL DE PRODUTOS") { ?>
        <tr>
            <td class="right"><b><?php echo $total['title']; ?> :</b></td>
            <td class="right"><?php echo $total['text']; ?></td>
        </tr>
        <?php } ?>
      <?php } ?>
    </table>
  </div>
  
  <div class="cep">
  	<div class="campos-frete">
    	<div class="text-entrega">CALCULE O FRETE</div>
        <input name="insira" class="insira" type="text" />
        <input name="digito" class="digito" type="text" />
        <input name="ok-entrega" class="ok-entrega" type="button" value="OK" />
        <div class="text">> Não sei meu CEP</div>
    </div>
    <div class="tipo-entrega">
    	<div class="text-entrega">TIPO DE ENTREGA</div>
        <input name="type_shipping" type="radio" value="sedex" checked="checked" class="radio" />
        <div class="tex">Sedex</div>
        <input name="type_shipping" type="radio" value="pac" class="radio" />
        <div class="tex">PAC</div>      
    </div>
    <div class="total-frete">
    	<div class="preco hide">FRETE <b></b></div>
    </div>
      
    <div class="prazo"></div>
  </div>
  <div class="cupom">
    <form method="post">
        <div class="campos-cupom">
            <div class="text-cupom">CUPOM DESCONTO</div>
            <input name="coupon" class="desconto" type="text" />
            <input type="hidden" name="next" value="coupon" />
            <input name="ok-desconto" class="ok-desconto" type="submit" value="OK" />
        </div>
        <div class="total-cupom">
            <?php foreach($totals as $total) { ?>
                <?php if(strtoupper(substr($total["title"], 0, 5)) == "CUPOM") { ?>
                <div class="preco-cupom">DESCONTO <b><?php echo str_replace("-", "", $total['text']); ?></b></div>
                <?php } ?>
            <?php } ?>
        </div>
    </form>
  </div>
  
  <div class="total_compra">
  <div class="campos-total">
        <div class="text-total">TOTAL DA COMPRA</div>
        <div class="text-descricao">
      Obs: O prazo começa a contar a partir da aprovação do pedido.<br />
	  Pedidos pagos por boleto bancário tem<strong> 3 dias úteis</strong> acrescidos ao prazo de entrega. </div>
      </div>
    <div class="total-total">
    	<div class="text-total">VALOR TOTAL</div>        
        <div class="text-r">R$</div>
        <?php foreach($totals as $total) { ?>
            <?php if(strtoupper(substr($total["title"], 0, 5)) == "TOTAL") { ?>
            <?php            
                $real_valor = str_replace(",", ".", substr($total['text'], 2));
                $valor = substr($real_valor, 0, -3);
                $decimos = substr($real_valor, -2);
            ?>
            <div class="text-nember"><?php echo $valor;?>,<span><?php echo $decimos; ?></span></div>
            <?php } ?>
        <?php } ?>        
        <div class="text-obs">Ou em 6x sem juros de R$ <?php echo number_format(($real_valor / 6), 2, ",","."); ?></div>
    </div>
  </div>
  
  <div class="login">
  	<div class="titu">1 - LOGIN</div>
    <div class="nome">Bem Vindo, <br /><span>Diego Hernandez de Lima</span></div>
    <div class="nao-e-vc"><a href="#">Não é você? Sair</a></div>
  	<a href="<?php echo $continue; ?>" class="voltar-carrinho">VOLTAR PARA O CARRINHO</a>
  </div>
  <div class="endereco">
  	<div class="titu">1 - LOGIN</div>
    <form action="" method="get">
    <label for="endereco">Endereço de cobrança</label>
    <input name="endereco"  id="endereco"type="text" value="Casa" />
    
    <label for="entrega">Endereço de entrega</label>
	<textarea name="entrega" cols="" rows="" id="entrega">Casa</textarea>
   <div class="box-text"> 
    Seu pedido será entregue em até <br />
    10 dia(s) útil(eis) após a confirmação
    do pagamento.<br />
    </div>
    </form>
  </div>
  <div class="pagamento">
  	<div class="titu">3 - PAGAMENTO</div>
    <div class="text-pagamento">
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque porta ornare risus vel dictum.
    </div>

    <?php $ind = 0; ?>
    <?php foreach($totals as $total) { ?>
        <?php if($ind == 1) { ?>
        <div class="linha hide" id="frete">
            <div class="calula1">Frete</div>
            <div class="calula2"></div>
        </div>
        <?php } ?>
        <?php if(strtoupper($total["title"]) == "SUB TOTAL DE PRODUTOS") { ?>
        <div class="linha">
            <div class="calula1">Preço Total</div>
            <div class="calula2"><?php echo $total["text"]; ?></div>
        </div>
        <?php } else if(strtoupper(substr($total["title"], 0, 5)) == "CUPOM") { ?>
        <div class="linha">
            <div class="calula1">Desconto</div>
            <div class="calula2"><?php echo $total["text"]; ?></div>
        </div>
        <?php } else if(strtoupper($total["title"]) == "TOTAL") { ?>
        <div class="linha">
            <div class="calula1">Total</div>
            <div class="calula2"><?php echo $total["text"]; ?></div>
        </div>        
        <?php } ?>
        <?php $ind += 1; ?>
    <?php } ?>
  </div>
  
   <div class="pagamento-seguro">
   	  <div class="titu">
        EFETUE O PAGAMENTO<br />
        <span>Zona segura</span></div>
   </div>
  
  
  
  <div class="buttons">
    <div class="right"><a href="<?php echo $checkout; ?>" class="button_cart"><?php echo $button_checkout; ?></a></div>
    <!-- div class="center"><a href="<?php echo $continue; ?>" class="button_cart"><?php echo $button_shopping; ?></a></div -->
  </div>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$('input[name=\'next\']').bind('change', function() {
	$('.cart-module > div').hide();
	
	$('#' + this.value).show();
});
//--></script>
<?php if ($shipping_status) { ?>
<script type="text/javascript"><!--
$('#button-quote').live('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/quote',
		type: 'post',
		data: 'country_id=' + $('select[name=\'country_id\']').val() + '&zone_id=' + $('select[name=\'zone_id\']').val() + '&postcode=' + encodeURIComponent($('input[name=\'postcode\']').val()),
		dataType: 'json',		
		beforeSend: function() {
			$('#button-quote').attr('disabled', true);
			$('#button-quote').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('#button-quote').attr('disabled', false);
			$('.wait').remove();
		},		
		success: function(json) {
			$('.success, .warning, .attention, .error').remove();			
						
			if (json['error']) {
				if (json['error']['warning']) {
					$('#notification').html('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
					$('.warning').fadeIn('slow');
					
					$('html, body').animate({ scrollTop: 0 }, 'slow'); 
				}	
							
				if (json['error']['country']) {
					$('select[name=\'country_id\']').after('<span class="error">' + json['error']['country'] + '</span>');
				}	
				
				if (json['error']['zone']) {
					$('select[name=\'zone_id\']').after('<span class="error">' + json['error']['zone'] + '</span>');
				}
				
				if (json['error']['postcode']) {
					$('input[name=\'postcode\']').after('<span class="error">' + json['error']['postcode'] + '</span>');
				}					
			}
			
			if (json['shipping_method']) {
				html  = '<h2><?php echo $text_shipping_method; ?></h2>';
				html += '<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">';
				html += '  <table class="radio">';
				
				for (i in json['shipping_method']) {
					html += '<tr>';
					html += '  <td colspan="3"><b>' + json['shipping_method'][i]['title'] + '</b></td>';
					html += '</tr>';
				
					if (!json['shipping_method'][i]['error']) {
						for (j in json['shipping_method'][i]['quote']) {
							html += '<tr class="highlight">';
							
							if (json['shipping_method'][i]['quote'][j]['code'] == '<?php echo $shipping_method; ?>') {
								html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" checked="checked" /></td>';
							} else {
								html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" /></td>';
							}
								
							html += '  <td><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['title'] + '</label></td>';
							html += '  <td style="text-align: right;"><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['text'] + '</label></td>';
							html += '</tr>';
						}		
					} else {
						html += '<tr>';
						html += '  <td colspan="3"><div class="error">' + json['shipping_method'][i]['error'] + '</div></td>';
						html += '</tr>';						
					}
				}
				
				html += '  </table>';
				html += '  <br />';
				html += '  <input type="hidden" name="next" value="shipping" />';
				
				<?php if ($shipping_method) { ?>
				html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" />';	
				<?php } else { ?>
				html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" disabled="disabled" />';	
				<?php } ?>
							
				html += '</form>';
				
				$.colorbox({
					overlayClose: true,
					opacity: 0.5,
					width: '600px',
					height: '400px',
					href: false,
					html: html
				});
				
				$('input[name=\'shipping_method\']').bind('change', function() {
					$('#button-shipping').attr('disabled', false);
				});
			}
		}
	});
});

$('.ok-entrega').live('click', function() {
        var cep = (($(".insira").val()) + "-" + ($(".digito").val()));
        var tipo = $(".radio:checked").val();
        
	$.ajax({
		url: 'index.php?route=checkout/cart/quote_by_cep',
		type: 'post',
		data: '&postcode=' + encodeURIComponent(cep) + '&type=' + encodeURIComponent(tipo),
		dataType: 'json',
		beforeSend: function() {
			$('.ok-entrega').attr('disabled', true);
			$('.ok-entrega').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.ok_entrega').attr('disabled', false);
			$('.wait').remove();
		},		
		success: function(json) {
                    $('.success, .warning, .attention, .error').remove();
                    
                    var fretes = json.shipping_method.correios.quote;                    
                    
                    if(fretes[40010] != []) {
                        var item = fretes[40010];
                        $(".preco").find("b").html(item.text);
                        $(".cep").find(".prazo").html(item.title);
                    } else if(fretes[41106] != []){
                        var item = fretes[41106];
                        $(".preco").find("b").html(item.text);
                        $(".cep").find(".prazo").html(item.title);
                    }
                    $(".preco").show();
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#postcode-required').show();
			} else {
				$('#postcode-required').hide();
			}
			
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
        			html += '<option value="' + json['zone'][i]['zone_id'] + '"';
	    			
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
	      				html += ' selected="selected"';
	    			}
	
	    			html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script>
<?php } ?>
<?php echo $footer; ?>
