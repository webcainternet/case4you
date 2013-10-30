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
  </h1> 
 <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form_carrinho">
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
            <td valign="middle" ><input type="text" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" class="qnt" />
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
    
  <div class="cep">
  	<div class="campos-frete">
            <div class="text-entrega">CALCULE O FRETE</div>
            <input name="insira" class="insira" type="text" />
            <input name="digito" class="digito" type="text" />
            <input name="ok-entrega" class="ok-entrega" type="button" value="OK" />
            <a class="text naoSeiCep">> Não sei meu CEP</a>
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
        <div style="clear:both"></div>
        <div class="encontreCep hide">
            <label for="enc_cep_uf">UF:</label>
            <select name="uf" id="enc_cep_uf">
                <option value="NULL">---Selecione---</option>
                <?php foreach($zones as $zone) { ?>                    
                    <option value="<?php echo strtolower($zone['code']); ?>" rel="<?php echo $zone['zone_id']; ?>"><?php echo strtoupper($zone["code"]); ?></option>
                <?php } ?>
            </select><br />
            <label for="enc_cep_cidade">Cidade:</label>
            <select name="cidade" id="enc_cep_cidade">
                <option value="NULL">---Selecione---</option>
            </select><br />
            <!-- <input type="text" name="cidade" id="enc_cep_cidade" /><br /> -->
            <label for="enc_cep_logradouro">Logradouro:</label>
            <input type="text" name="logradouro" id="enc_cep_logradouro" /><br />
            <input type="button" id="enc_cep_button" value="Encontrar" />
        </div>     
    <div class="prazo"></div>
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
                function calcula_parcela_pagseguro($valor, $nParcelas) {
                    $indice = array(1.00000,0.51875,0.35007,0.26575,0.21518,0.18148,0.15743,0.13941,0.12540,0.11420,0.10505,0.09743,0.09099,0.08548,0.08071,0.07654,0.07287,0.06961);

                    return number_format((float) $valor * $indice[$nParcelas - 1], 2, ".", "");
                }
            
                $real_valor = str_replace(".", "", substr($total['text'], 2));
                $real_valor = str_replace(",", ".", $real_valor);
                $valor = substr($real_valor, 0, -3);
                $decimos = substr($real_valor, -2);
            ?>
            <div class="text-nember"><?php echo $valor;?>,<span><?php echo $decimos; ?></span></div>
            <?php } ?>
        <?php } ?>
        <div class="text-obs">Ou em 12x de R$ <?php echo number_format((calcula_parcela_pagseguro($real_valor, 12)), 2, ",","."); ?></div>
    </div>
  </div>
  
  <div class="login">
  	<div class="titu">1 - LOGIN</div>
        <?php if (!$logged) { ?>
            <div id="login" class="right login">
                <h2>Já sou cliente</h2>
                <p>Acesse sua conta</p>
                <b>E-mail:</b><br />
                <input type="text" name="email" value="" />
                <br />
                <br />
                <b>Senha:</b><br />
                <input type="password" name="password" value="" />
                <br />
                <a href="index.php?route=account/forgotten" class="esqueci">Esqueceu sua senha?<br />Clique aqui para recuperar.</a><br />
                <br />
                <input type="button" value="Acessar" id="button-login" class="button" /><br />
                <br />
                <a href="index.php?route=account/register" target="_blank" class="voltar-carrinho">CADASTRE-SE</a>
            </div>
            <div class="pos_login hide">
                <div class="nome">Bem Vindo(a), <br /><a href="index.php?route=account/account"><?php echo $first_name; ?></a></div>
                <div class="nao-e-vc"><a href="index.php?route=account/logout">Não é você? Sair</a></div>            
                <a href="<?php echo $continue; ?>" class="voltar-carrinho">CONTINUAR COMPRANDO</a>
            </div>
        <?php } else { ?>
            <div class="nome">Bem Vindo(a), <br /><a href="index.php?route=account/account"><?php echo $first_name; ?></a></div>
            <div class="nao-e-vc"><a href="index.php?route=account/logout">Não é você? Sair</a></div>            
            <a href="<?php echo $continue; ?>" class="voltar-carrinho">CONTINUAR COMPRANDO</a>
        <?php } ?>
  </div>
  <div class="endereco"<?php if (!$logged) { ?> style="display:none;"<?php } ?>>
  	<div class="titu">2 - ENDEREÇO</div>
        <form action="" method="get" style="<?php if(empty($address["description"])) { ?>visibility:hidden<?php } ?>">
            <label for="endereco">Endereço de cobrança</label><input type="button" id="seta_cobranca" class="botao_endereco" />
            <ul class="hide listagem_endereco" id="list_end_cobranca"><li>Carregando</li></ul>
            <input name="endereco"  id="endereco" type="text" value="<?php if(!empty($address['description'])) { ?><?php echo $address['description']; ?><?php } ?>" disabled="disabled"/>
            <a class="cadastrarNovoEndereco" rel="payment">CADASTRE UM NOVO ENDEREÇO</a>
            <div style="clear:both;"></div>
            <label for="entrega">Endereço de entrega</label><input type="button" id="seta_entrega" class="botao_endereco" />
            <ul class="hide listagem_endereco" id="list_end_entrega"><li>Carregando</li></ul>
            <div id="entrega">
                <?php if(!empty($address["description"])) { ?>
                <strong><?php echo $address["description"]; ?></strong><br/>
                <span class="destinatorio">Destinat&aacute;rio: <?php echo $address["firstname"]; ?></span><br/>
                <span class="logradouro"><?php echo $address["address_1"]; ?></span><br/>
                <span class="cidade"><?php echo $address["city"]; ?></span><br/>
                <span class="postcode">CEP: <?php echo $address["postcode"]; ?></span><br/>
                <input type="hidden" name="hd_cep" class="hd_cep" value="<?php echo $address['postcode']; ?>" />
                <?php } ?>
            </div>
            <a class="cadastrarNovoEndereco" rel="shipping">CADASTRE UM NOVO ENDEREÇO</a>
            <div class="box-text">
                Seu pedido será entregue em até <br />
                10 dia(s) útil(eis) após a confirmação
                do pagamento.<br />
            </div>
         </form>
         <div class="novoEndereco hide">
            <input type="hidden" name="ref" class="ref" value="" />
            <span class="required">*</span> <label for="formEndDescription">Legenda:</label>
            <input type="text" class="large-field" value="" name="description" id="formEndDescription" /><br />
            <span class="required">*</span> <label for="formEndFirstname">Nome:</label>
            <input type="text" class="large-field" value="" name="firstname" id="formEndFirstname" /><br />
            <span class="required">*</span> <label for="formEndLastname">Sobrenome:</label>
            <input type="text" class="large-field" value="" name="lastname" id="formEndLastname" /><br />
            <div class="hide">
                <label for="formEndCompany">Companhia:</label>
                <input type="hidden" class="large-field" value=" " name="company" id="formEndCompany" /><br />
                <span class="required" style="display: none;">*</span> <label for="formEndCompanyId">ID Companhia:</label>
                <input type="hidden" class="large-field" value=" " name="company_id" id="formEndCompanyId" /><br />
                <span class="required" style="display: none;">*</span> <label for="formEndTaxId">ID Imposto:</label>
                <input type="hidden" class="large-field" value=" " name="tax_id" id="formEndTaxId" /><br />
            </div>
            <span class="required">*</span> <label for="formEndCountryId">País:</label>
            <select class="large-field" name="country_id" id="formEndCountryId">
                <option value=""> --- Selecione --- </option>
                <option selected="selected" value="30">Brasil</option>
            </select>
            <span class="required">*</span> <label for="formEndZoneId">Estado:</label>
            <select class="large-field" name="zone_id" id="formEndZoneId">
                <option value=""> --- Selecione --- </option>
                <?php foreach($zones as $zone) { ?>
                    <option value="<?php echo $zone['zone_id']; ?>"><?php echo $zone["name"]; ?></option>
                <?php } ?>
            </select>
            <span class="required">*</span> <label for="formEndAddress1">Endereço, número:</label>
            <input type="text" class="large-field" value="" name="address_1" id="formEndAddress1" /><br />
            <label for="formEndAddress2">Bairro:</label>
            <input type="text" class="large-field" value="" name="address_2" id="formEndAddress2" /><br />
            <span class="required">*</span> <label for="formEndCity">Cidade:</label>
            <input type="text" class="large-field" value="" name="city" id="formEndCity" /><br />
            <span class="required" id="payment-postcode-required">*</span> <label for="formEndPostcode">CEP:</label>
            <input type="text" class="large-field" value="" name="postcode" id="formEndPostcode" /><br />
            <input type="hidden" value="new" name="payment_address" />
            <input type="button" class="submitNovoEnd" id="button-payment-address" value="CADASTRAR" />
         </div>
  </div>
    
<div style="width:300px; float:left;">
  <div class="pagamento">
  	<div class="titu">3 - PAGAMENTO</div>
    <div class="text-pagamento">
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque porta ornare risus vel dictum.
    </div>

    <?php $ind = 0; ?>
    <?php foreach($totals as $total) { ?>
        <?php if($ind == 1) { ?>
        <div class="linha hide" id="linha_frete">
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
        <div class="linha" id="linha_total">
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
      <span>Zona segura</span>
    </div>
  </div>
</div>
  <div class="hide" id="engloba_retorno"></div>

  <div class="buttons" id="payment-method">
    <input type="hidden" value="1"  name="agree" />
    <input type="hidden" value="" name="comment" />
    <input type="hidden" value="pagseguro" name="payment_method" />
    <div class="right"><a class="button_cart" id="button-payment-method"><?php echo $button_checkout; ?></a></div>
    <!-- <div class="right"><a href="<?php echo $checkout; ?>" class="button_cart"><?php echo $button_checkout; ?></a></div> -->
    <!-- div class="center"><a href="<?php echo $continue; ?>" class="button_cart"><?php echo $button_shopping; ?></a></div -->
  </div>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$('input[name=\'next\']').bind('change', function() {
	$('.cart-module > div').hide();
	
	$('#' + this.value).show();
});
//--></script>
<script type="text/javascript">
var customer_id = <?php echo $customer_id; ?>;
var enderecos;

// Login
$('#button-login').live('click', function() {
    efetuarLogin();
});

$(".login").find("input[type='password']").live("keypress", function(evento){
    var n_char = $(".insira").val().length;
    var key_code = evento.keyCode || evento.charCode || evento.which;
    
    var caractere = String.fromCharCode(key_code);
    if(key_code == 13) {
        efetuarLogin();
    }
});

function efetuarLogin() {
    $.ajax({
        url: 'index.php?route=checkout/login/validate',
        type: 'post',
        data: $('#login :input'),
        dataType: 'json',
        beforeSend: function() {
            $('#button-login').attr('disabled', true);
            $('#button-login').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
        },
        complete: function() {
            $('#button-login').attr('disabled', false);
            $('.wait').remove();
        },
        success: function(json) {
            $('.warning, .error').remove();

            customer_id = json.data.customer_id;

            $("#login.login").hide();
            $(".pos_login").find(".nome").find("a").html(json.data.firstname);
            $(".pos_login").fadeIn(300);
            var ende = json.address;
            $(".endereco").fadeIn(300);
            $(".endereco").find("form").find("#endereco").val(ende.description);

            var htmlEntrega = '<strong>' + ende.description + '</strong><br/>';
            htmlEntrega += '<span class="destinatorio">Destinat&aacute;rio: ' + ende.firstname + '</span><br/>';
            htmlEntrega += '<span class="logradouro">' + ende.address_1 + '</span><br/>';
            htmlEntrega += '<span class="cidade">' + ende.city + '</span><br/>';
            htmlEntrega += '<span class="postcode">CEP: ' + ende.postcode + '</span><br/>';
            htmlEntrega += '<input type="hidden" name="hd_cep" class="hd_cep" value="' + ende.postcode + '" />';

            $(".endereco").find("form").find("#entrega").html(htmlEntrega);
            $(".endereco").find("form").fadeIn(300);
            $(".endereco").find("form").removeAttr("style");
        },
        error: function(xhr, ajaxOptions, thrownError) {
            //alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
}

function getEnderecos(callback){
    $.ajax({
        url: 'index.php?route=checkout/login/getAddresses',
        type: 'post',
        data: {
            customer_id : customer_id
        },
        beforeSend: function() {
            $(".botao_endereco").attr("disabled", "disabled");
        },
        complete: function() {
            $(".botao_endereco").removeAttr("disabled");
        },
        dataType: 'json',
        success: function(json) {
            enderecos = json.addresses;
            callback(json);
        }
    });
}

$("#seta_cobranca").live("click", function() {
    if($("#list_end_cobranca").is(":visible")) {
        $("#list_end_cobranca").slideUp(300);
    } else {
        getEnderecos(function (json) {
            var html = "";
            $(json.addresses).each(function(ind, item){
                html += "<li><a rel='" + ind + "'>" + item.description + "</a></li>";
            });
            $("#list_end_cobranca").html(html);
            $("#list_end_cobranca").slideDown(500);
        });
    }
});

$("#seta_entrega").live("click", function () {
    if($("#list_end_entrega").is(":visible")) {
        $("#list_end_entrega").slideUp(300);
    } else {
        getEnderecos(function (json) {
            var html = "";
            $(json.addresses).each(function(ind, item){
                html += "<li><a rel='" + ind + "'>" + item.description + "</a></li>";
            });
            $("#list_end_entrega").html(html);
            $("#list_end_entrega").slideDown(300);
        });
    }
});

$("#list_end_cobranca li a").live("click", function() {
    var ind = $(this).attr("rel");
    var ende = $(enderecos[ind])[0];
    $("#list_end_cobranca").slideUp(300);
    $("#endereco").val(ende.description);
});

$("#list_end_entrega li a").live("click", function() {
    var ind = $(this).attr("rel");
    var ende = $(enderecos[ind])[0];
    $("#list_end_entrega").slideUp(300);
    var htmlEntrega = '<strong>' + ende.description + '</strong><br/>';
    htmlEntrega += '<span class="destinatorio">Destinat&aacute;rio: ' + ende.firstname + '</span><br/>';
    htmlEntrega += '<span class="logradouro">' + ende.address_1 + '</span><br/>';
    htmlEntrega += '<span class="cidade">' + ende.city + '</span><br/>';
    htmlEntrega += '<span class="postcode">CEP: ' + ende.postcode + '</span><br/>';
    htmlEntrega += '<input type="hidden" name="hd_cep" class="hd_cep" value="' + ende.postcode + '" />';    
    $(".endereco").find("form").find("#entrega").html(htmlEntrega);
    calcularFrete(ende.postcode, "sedex", function() {});
});

$(".endereco").find(".cadastrarNovoEndereco").live("click", function(){
    var ref = $(this).attr("rel");
    $(".endereco").find("form").slideUp(300, function () {
        $(".endereco").find(".ref").val(ref);
        $(".endereco").find(".novoEndereco").slideDown(300);
    });
});

// Payment Address	
$('#button-payment-address').live('click', function() {
        var description = $("#formEndDescription").val();
        var firstname = $("#formEndFirstname").val();
        var lastname = $("#formEndLastname").val();
        var company = $("#formEndCompany").val();
        var company_id = $("#formEndCompanyId").val();
        var tax_id = $("#formEndTaxId").val();
        var address_1 = $("#formEndAddress1").val();
        var address_2 = $("#formEndAddress2").val();
        var city = $("#formEndCity").val();
        var postcode = $("#formEndPostcode").val();
        var country_id = $("#formEndCountryId").val();
        var zone_id = $("#formEndZoneId").val();
        
        if(description != "") {
            $.ajax({
                    url: 'index.php?route=checkout/payment_address/validate',
                    type: 'post',
                    data: $('.novoEndereco input[type=\'text\'], .novoEndereco input[type=\'password\'], .novoEndereco input[type=\'checkbox\']:checked, .novoEndereco input[type=\'radio\']:checked, .novoEndereco input[type=\'hidden\'], .novoEndereco select, .novoEndereco .ref'),
                    dataType: 'json',
                    beforeSend: function() {
                            $('#button-payment-address').attr('disabled', true);
                            $('#button-payment-address').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
                          
                    },	
                    complete: function() {
                            $('#button-payment-address').attr('disabled', false);
                            $('.wait').remove();
//                            $("#loading_background").fadeOut(300);
//                            $("#loading_logo").fadeOut(300);
                    },			
                    success: function(json) {
                        $('.warning, .error').remove();

                        var ref = $(".ref").val();
                        var description = $("#formEndDescription").val();
                        var firstname = $("#formEndFirstname").val();
                        var lastname = $("#formEndLastname").val();
                        var company = $("#formEndCompany").val();
                        var company_id = $("#formEndCompanyId").val();
                        var tax_id = $("#formEndTaxId").val();
                        var address_1 = $("#formEndAddress1").val();
                        var address_2 = $("#formEndAddress2").val();
                        var city = $("#formEndCity").val();
                        var postcode = $("#formEndPostcode").val();
                        var country_id = $("#formEndCountryId").val();
                        var zone_id = $("#formEndZoneId").val();			

                        if(ref == "payment") {
                            $(".endereco").find("form").find("#endereco").val(description);
                        } else {
                            var htmlEntrega = '<strong>' + description + '</strong><br/>';
                            htmlEntrega += '<span class="destinatorio">Destinat&aacute;rio: ' + firstname + '</span><br/>';
                            htmlEntrega += '<span class="logradouro">' + address_1 + '</span><br/>';
                            htmlEntrega += '<span class="cidade">' + city + '</span><br/>';
                            htmlEntrega += '<span class="postcode">CEP: ' + postcode + '</span><br/>';
                            htmlEntrega += '<input type="hidden" name="hd_cep" class="hd_cep" value="' + postcode + '" />';

                            $(".endereco").find("form").find("#entrega").html(htmlEntrega);
                        }
                        $(".endereco").find(".novoEndereco").slideUp(300, function () {
                            $(".endereco").find("form").slideDown(300);
                        });
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                            //alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
            });
        } else {
            alert("Por Favor insira uma legenda para o novo Endereço");
        }
});

//Payment Method
$('#button-payment-method').live('click', function() {
    var cep = $(".hd_cep").val();
    $("#loading_background").fadeIn(300);
    $("#loading_logo").fadeIn(300);  
    calcularFrete(cep, $(".tipo-entrega .radio:checked").val(), function() {
        setTimeout("finalizaPagamento()", 1000);
    });    
});

function finalizaPagamento() {
    $.ajax({
        url: 'index.php?route=checkout/payment_method',
        type: 'post',
        success: function() {
            $.ajax({
                url: 'index.php?route=checkout/payment_method/validate',
                type: 'post',
                data: $('#payment-method input[type=\'radio\']:checked, #payment-method input[type=\'checkbox\']:checked, #payment-method textarea, #payment-method input[type=\'hidden\']'),
                dataType: 'json',
                beforeSend: function() {
                    $('#button-payment-method').attr('disabled', true);
                    $('#button-payment-method').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
                },
                complete: function() {
                    $('#button-payment-method').attr('disabled', false);
                    $('.wait').remove();
                },
                success: function(json) {
                    $('.warning, .error').remove();

                    if (json['redirect']) {
                        //location = json['redirect'];
                    } else if (json['error']) {
                        if (json['error']['warning']) {
                            $('#payment-method .checkout-content').prepend('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');

                            $('.warning').fadeIn('slow');
                        }
                    } else {
                        $.ajax({
                            url: 'index.php?route=checkout/confirm',
                            dataType: 'html',
                            success: function(html) {
                                $('#engloba_retorno').html(html);
                                $('#button-confirm').click();
                            },
                            error: function(xhr, ajaxOptions, thrownError) {
                                $("#loading_background").fadeOut(300);
                                $("#loading_logo").fadeOut(300);
                                alert("Favor confirmar os dados preenchidos.");
                                //alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                            }
                        });					
                    }
                },
                error: function(xhr, ajaxOptions, thrownError) {
                    //alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                }
            });	            
        }
    });
}
</script>

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
                        $("#loading_background").fadeOut(300);
                        $("#loading_logo").fadeOut(300);
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

$('.ok-entrega, .tipo-entrega .radio').live('click', function() {
    var cep = (($(".insira").val()) + "-" + ($(".digito").val()));
    var tipo = $(".radio:checked").val();

    calcularFrete(cep, tipo, function() {});
});

/*
$('.digito').live('click', function() {
    var cep = (($(".insira").val()) + "-" + ($(".digito").val()));
    var tipo = $(".radio:checked").val();

    calcularFrete(cep, tipo, function() {});
});
*/

function calcula_parcela_pagseguro(valor, nParcelas) {
    var indice = [1.00000,0.51875,0.35007,0.26575,0.21518,0.18148,0.15743,0.13941,0.12540,0.11420,0.10505,0.09743,0.09099,0.08548,0.08071,0.07654,0.07287,0.06961];
    
    return valor * indice[nParcelas - 1];
}

var _valor_total = <?php echo $real_valor; ?>;

function calcularFrete(cep, tipo, callback) {
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
                    $('.ok-entrega').attr('disabled', false);
                    $('.wait').remove();
            },		
            success: function(json) {
                $('.success, .warning, .attention, .error').remove();
                
                var fretes = json.shipping_method.correios.quote;                    

                if(fretes[40010] != undefined) {
                    var item = fretes[40010];
                } else if(fretes[41106] != undefined){
                    var item = fretes[41106];
                }
                
                $("#linha_frete").find(".calula2").html(item.text);
                $("#linha_frete").fadeIn(300);
                $(".preco").find("b").html(item.text);
                $(".cep").find(".prazo").html(item.title);
                
                var valor_total = _valor_total;
                valor_total += item.cost;                
                var valor_parcela = (calcula_parcela_pagseguro(valor_total, 12)).toFixed(2);
                valor_parcela = new String(valor_parcela);
                valor_parcela = valor_parcela.replace(".", ",");
                
                valor_total = new String(valor_total.toFixed(2));
                valor_total = valor_total.replace(".", ",");
                $("#linha_total").find(".calula2").html("R$" + valor_total);
                $(".total-total").find(".text-nember").html(valor_total.replace(",", "<span>,") + "</span>");
                $(".total-total").find(".text-obs").html("Ou em 12x de R$ " + valor_parcela);

                $(".preco").show();
                
                callback();
            }
    });
}
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

$(".naoSeiCep").live("click", function(){
    $(this).fadeOut(300);
    $(".encontreCep").fadeIn(300);
});

$("#enc_cep_uf").live("change", function () {
    var uf = $(this).val();
    var id_estado = $("#enc_cep_uf option:selected").attr("rel");
    if(uf != "NULL") {        
        $.ajax({
            url: 'index.php?route=checkout/cart/getCidades&uf=' + uf + '&estado=' + id_estado,
            dataType: 'json',
            success: function(json) {
                var nHtml = '<option value="NULL">---Selecione---</option>';

                $(json).each(function (ind, item){
                    nHtml += '<option value="' + item.name + '">' + item.name + '</option>';
                });

                $("#enc_cep_cidade").html(nHtml);
                $(".setarCidade").remove();
                $("#enc_cep_cidade").after('<a class="setarCidade">Outra<a>');
            }
        });
    }
});

$(".setarCidade").live("click", function () {
    $("#enc_cep_cidade").remove();
    $(this).before('<input type="text" name="cidade" id="enc_cep_cidade" />');
});

$("#enc_cep_button").live("click", function(){
    var uf = $("#enc_cep_uf").val();
    var cidade = $("#enc_cep_cidade").val();
    var logradouro = $("#enc_cep_logradouro").val();

    $.ajax({
        url: 'index.php?route=checkout/cart/getCep&estado=' + uf + "&cidade=" + cidade + "&logradouro=" + logradouro,
        dataType: 'json',
        beforeSend: function() {
            $("#enc_cep_button").attr("disabled", "disabled");
        },
        complete: function() {
            $("#enc_cep_button").removeAttr("disabled");
        },
        success: function(json) {
            var nHtml = "<table cellpadding='0' cellspacing='0' id='tabela_ceps'>";
            
            var htmlHeader = "  <tr>";
            htmlHeader += "         <th>Cidade</th>";
            htmlHeader += "         <th>Bairro</th>";
            htmlHeader += "         <th>Logradouro</th>";
            htmlHeader += "         <th>Cep</th>";
            htmlHeader += "     </tr>";
            
            var htmlFooter = htmlHeader;            
            
            htmlHeader = "<thead>" + htmlHeader + "</thead>";
            htmlFooter = "<tfoot>" + htmlFooter + "</tfoot>";
            nHtml += htmlHeader;
            nHtml += "<tbody>";

            $(json).each(function (ind, item) {
                nHtml += "<tr rel='" + item.cep + "'>";
                nHtml += "  <td><a class='setCep'>" + item.cidade + "</a></td>";
                nHtml += "  <td><a class='setCep'>" + item.bairro + "</a></td>";
                nHtml += "  <td><a class='setCep'>" + item.tp_logradouro + " " + item.logradouro + "</a></td>";
                nHtml += "  <td><a class='setCep'>" + item.cep + "</a></td>";
                nHtml += "</tr>";
            });
            
            nHtml += "</tbody>";
            
            nHtml += htmlFooter;
            
            nHtml += "</table>";
            $(".encontreCep").html(nHtml);
        }
    });
});

$(".setCep").live("click", function() {
    var cep = $(this).parent().parent().attr("rel");
    var cacos = cep.split("-");
    var cep1 = cacos[0];
    var cep2 = cacos[1];

    $(".campos-frete").find(".insira").val(cep1);
    $(".campos-frete").find(".digito").val(cep2);
    
    $(".ok-entrega").click();
    
    $(".encontreCep").fadeOut(300);
});

$(".insira").live("keypress", function (evento) { 
    var n_char = $(".insira").val().length;
    var key_code = evento.keyCode || evento.charCode || evento.which;
    
    var caractere = String.fromCharCode(key_code);
    if(key_code != 13) {
        if(caractere > -1) {
            if(n_char == 5) {
                evento.preventDefault();
                var valor = $(".digito").val();
                $(".digito").val(valor + caractere);
            }
        } else if (key_code != 8 && key_code != 9 && key_code != 46 && (key_code < 37  || key_code > 40)) {
            evento.preventDefault();
        }
    } else {
        var cep = (($(".insira").val()) + "-" + ($(".digito").val()));
        var tipo = $(".radio:checked").val();

        calcularFrete(cep, tipo, function() {});
    }
});

$(".qnt").live("change", function() {
    $("#form_carrinho").submit();
});
//--></script>
<?php } ?>
<div id="loading_background">
    <div id="loading_logo">&nbsp;</div>
</div>
<?php echo $footer; ?>
