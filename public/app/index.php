<?php
session_start();

if (isset($_SESSION["userid"])) {
  $idcsession = $_SESSION["userid"];
}
else {
  //Randomiza nome do arquivo
  $date1 = date_create();
  $timestamp1 = date_timestamp_get($date1);
  $ramdomico4 = rand(1000,9999);
  $idsession = $timestamp1."".$ramdomico4;
  $_SESSION["userid"] = $idsession;
  $idcsession = $idsession;
}
?>

<html>

<head>
	<meta charset="utf-8" />
	<title>Case4You - Monte sua capinha</title>

	<!-- libs -->
	<link rel="stylesheet" href="lib/jquery-ui.css" />
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>


	<!-- Case4you -->
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<script src="js/acordion.js"></script>
	<script src="js/montacapa.js"></script>
	<script src="js/montapreview.js"></script>

	<!-- upload -->

	<script type="text/javascript" src="/case4you/4/scripts/jquery.wallform.js"></script>
	<script type="text/javascript" >
	  $(document).ready(function() { 
        $('#photoimg').die('click').live('change', function()			{ 
		           //$("#preview").html('');
			$("#imageform").ajaxForm({target: '#preview', 
			     beforeSubmit:function(){ 
				console.log('v');
				$("#imageloadstatus").show();
				 $("#imageloadbutton").hide();
				 }, 
				success:function(){ 
				console.log('z');
				 $("#imageloadstatus").hide();
				 $("#imageloadbutton").show();
				}, 
				error:function(){ 
						console.log('d');
				 $("#imageloadstatus").hide();
				$("#imageloadbutton").show();
				} }).submit();
			});
	    }); 
	</script>

</head>

<body>

	<div class="wrap-app">
		
		<div id="accordion" style="text-align: left; height: 700px; width: 400px; float: left;">
			<!-- passo 1 -->
			<h3>&nbsp;
    			<div class="tituloacc">Passo 1 - Modelo do seu celular</div>
    			<div class="descacc"><u>Voltar - Passo 1</u></div>
  			</h3>

  			<div>

  				<div class="c4ystepnumber">1</div>
  				<div class="fontc4y2 c4ysteptitle">SELECIONE O MODELO DE SEU CELULAR!</div>
				<div class="fontc4y1 c4ysteptext">AJUDA: Temos diversas opções como Iphone4/4S, Iphone5/5S, Galaxy S3, Galaxy S4, e em breve outros modelos!</div>

				<div style="float: left; text-align: left; width: 95px; margin-bottom: 20px; margin-left: 15px;">
						<div style="float: left; text-align: left">
							<input onChange="selecionarmodelo(this)" type="radio" name="modelo" id="miphone4" value="0">
						</div>
			          	<div style="float: left; text-align: left;padding-left: 5px; height: 90px;">
							<img style="width: 39px;" src="./img/iphone4.png" alt="">
			          	</div>
			          	<div class="fontc4y1" style="float: left; text-align: left; padding-left: 20px;margin-top: 5px;">
								Iphone4/4S
						</div>
				</div>

				<div style="float: left; text-align: left; width: 95px; margin-bottom: 20px; margin-left: 15px;">
				        <div style="float: left; text-align: left">
				                <input onChange="selecionarmodelo(this)" type="radio" name="modelo" id="miphone5" value="1">
				        </div>
				        <div style="float: left; text-align: left;padding-left: 5px; height: 90px;">
				                <img style="width: 49px;" src="./img/iphone5.png" alt="">
				        </div>
				        <div class="fontc4y1" style="float: left; text-align: left; padding-left: 20px;margin-top: 5px;">
				                Iphone5/5S
				        </div>
				</div>

				<div style="float: left; text-align: left; width: 95px; margin-bottom: 20px; margin-left: 15px;">
				        <div style="float: left; text-align: left">
				                <input onChange="selecionarmodelo(this)" type="radio" name="modelo" id="mgalaxy3" value="2">
				        </div>
				        <div style="float: left; text-align: left;padding-left: 5px; height: 90px;">
				                <img style="width: 45px;" src="./img/galaxys3.jpg" alt="">
				        </div>
				        <div class="fontc4y1" style="float: left; text-align: left; padding-left: 20px;margin-top: 5px;">
				                Galaxy S3
				        </div>
				</div>

				<div style="float: left; text-align: left; width: 95px; margin-bottom: 20px; margin-left: 15px;">
				        <div style="float: left; text-align: left">
				                <input onChange="selecionarmodelo(this)" type="radio" name="modelo" id="mgalaxy4" value="3">
				        </div>
				        <div style="float: left; text-align: left;padding-left: 5px; height: 90px;">
				                <img style="width: 45px;" src="./img/galaxys4.jpg" alt="">
				        </div>
				        <div class="fontc4y1" style="float: left; text-align: left; padding-left: 20px;margin-top: 5px;">
				                Galaxy S4
				        </div>
				</div>
			</div>











			<!-- passo 2 -->
			<h3>&nbsp;
    			<div class="tituloacc">Passo 2 - Escolha de layout</div>
    			<div class="descacc"><u>Voltar - Passo 2</u></div>
  			</h3>

  			<div>

  				<div class="c4ystepnumber">2</div>
  				<div class="fontc4y2 c4ysteptitle">ESCOLHA O TIPO DE LAYOUT!</div>
				<div class="fontc4y1 c4ysteptext">AJUDA: De acordo com o layout que for selecionado, você deverá escolher um determinado numero de fotos!<br />&nbsp;<br />Layout 1: 1 foto; <br />Layout 2: 2 fotos;<br />Layout 3: 15 fotos</div>

				<div style="float: left; margin-left: 20px;">
			      <p>
			        Selecione o layout de sua capinha: <br />&nbsp;<br />
			        
			        <input onChange="selecionalayout(this)" type="radio" name="layout" value="0" style="display: inline; float: none;position: relative; top: -50px;">
			          <img style="margin-left: 2px; margin-right: 15px;" src="./img/modelo-1.png" alt="">
			        
			        <input onChange="selecionalayout(this)" type="radio" name="layout" value="1" style="display: inline; float: none;position: relative; top: -50px;">
			          <img style="margin-left: 2px; margin-right: 15px;" src="./img/modelo-2.png" alt="">
			        
			        <input onChange="selecionalayout(this)" type="radio" name="layout" value="2" style="display: inline; float: none;position: relative; top: -50px;">
			          <img style="margin-left: 2px; margin-right: 15px;" src="./img/modelo-3.png" alt="">
			      </p>
			    </div>

			</div>





			<!-- passo 3 -->
			<h3>&nbsp;
    			<div class="tituloacc">Passo 3 - Selecionar Fotos</div>
    			<div class="descacc"><u>Voltar - Passo 3</u></div>
  			</h3>

  			<div>

  				<div class="c4ystepnumber">3</div>
  				<div class="fontc4y2 c4ysteptitle">SELECIONE SUAS FOTOS!</div>
				<div class="fontc4y1 c4ysteptext">AJUDA: Agora escolha de onde deseja buscar suas fotos: De seu computador, Facebook ou Instagram.</div>

				<div style="float: left; margin-left: 20px;">
					<input onchange="showcomputador()" type="radio" name="modelo" id="ishowcomp" value="" style="display: inline; float: none;position: relative; top: -23px;">
			          <img style="margin-left: 2px; margin-right: 15px; width: 35px;" src="./img/computador.png" alt="">
			        
			        <input onchange="showfacebook()" type="radio" name="modelo" id="ishowface" value="" style="display: inline; float: none;position: relative; top: -23px;">
			          <img style="margin-left: 2px; margin-right: 15px; width: 35px;" src="./img/facebook.png" alt="">
			        
			        <input onchange="showinstagram()" type="radio" name="modelo" id="ishowinst" value="" style="display: inline; float: none;position: relative; top: -23px;">
			          <img style="margin-left: 2px; margin-right: 15px; width: 35px;" src="./img/instagram.png" alt="">
				</div>

				<div style="float: left; width: 360px;">
					<div class="fontc4y1" style="float: left; width: 320px; margin-left: 20px; margin-top: 0px;">
						<form id="imageform" method="post" enctype="multipart/form-data" action='ajaximage.php'>
						<div id='imageloadstatus' style='display:none'>
							<img src="loader.gif" alt="Uploading...."/>
						</div>
						<div id='imageloadbutton'>
							<input type="file" name="photoimg" id="photoimg" />
						</div>
						</form>
					</div>


					<div style="height: 275px; float: left; width: 320px; overflow-x: hidden; margin-top: 10px;">
						<div id='preview'>
						</div>
					</div>


				</div>

			</div>





			<!-- passo 4 -->
			<h3>&nbsp;
    			<div class="tituloacc">Passo 4 - Aplicar filtros</div>
    			<div class="descacc"><u>Voltar - Passo 4</u></div>
  			</h3>

  			<div>

  				<div class="c4ystepnumber">4</div>
  				<div class="fontc4y2 c4ysteptitle">APLICAR FILTRO DE CORES!</div>
				<div class="fontc4y1 c4ysteptext">AJUDA: Clique no filtro para selecionar o efeito desejado!<br />&nbsp;<br />OBS: Para obter qualidade na impressão é importante o upload de imagens em alta qualidade. Recomendamos fotos com pelo menos 1900x1200 pixels e 300dpi.</div>

				<div style="float: left; margin-left: 20px; width: 250px;">
					<div style="float: left; text-align: left; width: 95px; margin-bottom: 20px; margin-left: 15px;">
					        <div style="float: left; text-align: left">
					                <input onchange="selecionarfiltro('0')" type="radio" name="filtro" id="fsepia" value="-sp.png">
					        </div>
					        <div style="float: left; text-align: left;padding-left: 5px; height: 80px;">
					                <img src="img/pic-n.png" style="width: 65px;border:" alt="">
					        </div>
					</div>

					<div style="float: left; text-align: left; width: 95px; margin-bottom: 20px; margin-left: 15px;">
					        <div style="float: left; text-align: left">
					                <input onchange="selecionarfiltro('2')" type="radio" name="filtro" id="fsepia" value="-sp.png">
					        </div>
					        <div style="float: left; text-align: left;padding-left: 5px; height: 80px;">
					                <img src="img/pic-s.png" style="width: 65px;border:" alt="">
					        </div>
					</div>

					<div style="float: left; text-align: left; width: 95px; margin-bottom: 20px; margin-left: 15px;">
					        <div style="float: left; text-align: left">
					                <input onchange="selecionarfiltro('1')" type="radio" name="filtro" id="fsepia" value="-sp.png">
					        </div>
					        <div style="float: left; text-align: left;padding-left: 5px; height: 80px;">
					                <img src="img/pic-p.png" style="width: 65px;border:" alt="">
					        </div>
					</div>

					<div style="float: left; text-align: left; width: 95px; margin-bottom: 20px; margin-left: 15px;">
					        <div style="float: left; text-align: left">
					                <input onchange="selecionarfiltro('3')" type="radio" name="filtro" id="fsepia" value="-sp.png">
					        </div>
					        <div style="float: left; text-align: left;padding-left: 5px; height: 80px;">
					                <img src="img/pic-c.png" style="width: 65px;border:" alt="">
					        </div>
					</div>
				</div>

			</div>





		</div>

		<div id="divcapinha" onmouseout="mostramascarasup()" style="width: 360px;
			float: left;
			margin-left: 10px;
			border: 1px solid #aaaaaa;
			border-radius: 5px;
			padding-top: 10px;
			padding-bottom: 10px;
			margin-top: 2px;">
			&nbsp;
		</div>

		<div id="divcapinhapreview" style="width: 360px;
			float: left;
			margin-left: 10px;
			border: 1px solid #aaaaaa;
			border-radius: 5px;
			padding-top: 10px;
			padding-bottom: 10px;
			margin-top: 2px;
			padding-left: 10px;
			display: none;">
			<iframe name="previewframe" src=""  width="340" height="540" scrolling="no" frameborder="0"></iframe>
		</div>

		<div id="ircheckout1"  style="width: 340px;
			float: left;
			margin-left: 10px;
			border: 1px solid #aaaaaa;
			border-radius: 5px;
			padding-top: 10px;
			padding-bottom: 10px;
			margin-top: 2px;
			padding-left: 10px;
			padding-right: 10px;
			display: none;
			text-align: right;
			font-size: 11px;">
			Voltar para a edição da capinha
			<img src="img/price.png" style="margin-top: 5px;">
			<img src="img/comprar.png" style="margin-top: 10px;">
		</div>

		<div id="ircheckout2"  style="width: 340px;
			float: left;
			margin-left: 10px;
			border: 1px solid #aaaaaa;
			border-radius: 5px;
			padding-top: 10px;
			padding-bottom: 10px;
			margin-top: 2px;
			padding-left: 10px;
			padding-right: 10px;
			display: block;
			text-align: right;
			font-size: 11px;">
			<a href="#" onclick="finalizar()"><img src="img/finalizar.png" style="margin-top: 5px;"></a>
		</div>

	</div>

<script>
	MontaCapa(0,0);
</script>

<input type="text" name="modelodocelular" id="modelodocelular" value="">
<input type="text" name="layoutdacapinha" id="layoutdacapinha" value="">
<input type="text" name="filtrocapinha" id="filtrocapinha" value="">
<input type="text" name="idsession" id="idsession" value="<?php echo $idcsession; ?>">



<div class="mascarasuperior" id="mascarasuperior" onmouseover="escondemascarasup()">
	&nbsp;
</div>

</body>

</html>
