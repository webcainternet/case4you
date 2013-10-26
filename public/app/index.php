<?php
$mh2=0;
$mw2=0;
$mh15a=0;
$mw15a=0;
$mh15b=0;
$mw15b=0;

$qm=$_GET["m"];
$ql=$_GET["l"];

switch ($qm) {
    //IPHONE4 IPHONE4S
    case 0:
        $mimage = "mask-iphone4.png";
        $mw = "340";
        $mh = "490";
        break;

    //IPHONE5
    case 1:
        $mimage = "mask-iphone5.png";
        $mw = "340";
        $mh = "538";
        break;

    //GALAXYS3
    case 2:
        $mimage = "mask-galaxy3.png";
        $mw = "340";
        $mh = "527";
        break;

    //GALAXYS4
    case 3:
        $mimage = "mask-galaxy4.png";
        $mw = "340";
        $mh = "499";
        break;
}

switch ($ql) {
    //Layout 2 fotos
    case 1:
      switch ($qm) {
          //IPHONE4 IPHONE4S
          case 0:
              $mw2 = "338";
              $mh2 = "243";
              break;

          //IPHONE5
          case 1:
              $mw2 = "338";
              $mh2 = "267";
              break;

          //GALAXYS3
          case 2:
              $mw2 = "338";
              $mh2 = "261";
              break;

          //GALAXYS4
          case 3:
              $mw2 = "338";
              $mh2 = "247";
              break;
      }
        break;

    //Layout 15 fotos
    case 2:
                        switch ($qm) {
                            //IPHONE4 IPHONE4S
                            case 0:
                                $mw15a = "168";
                                $mh15a = "161";
                                $mw15b = "83";
                                $mh15b = "79";
                                break;

                            //IPHONE5
                            case 1:
                                $mw15a = "168";
                                $mh15a = "177";
                                $mw15b = "83";
                                $mh15b = "87";
                                break;

                            //GALAXYS3
                            case 2:
                                $mw15a = "168";
                                $mh15a = "173";
                                $mw15b = "83";
                                $mh15b = "85";
                                break;

                            //GALAXYS4
                            case 3:
                                $mw15a = "168";
                                $mh15a = "164";
                                $mw15b = "83";
                                $mh15b = "81";
                                break;
      }
        break;
    }
?>

<html>

<head>
<meta charset="utf-8" />

  <title>Case4You - Monte sua capinha</title>
  <link rel="stylesheet" href="./style.css" />
  <script src="./scripts.js"></script>

  <link rel="stylesheet" href="./jquery-ui.css" />
  <script src="./jquery-1.9.1.js"></script>
  <script src="./jquery-ui.js"></script>

<script>
function allowDrop(ev)
{
  ev.preventDefault();
}

function drag(ev)
{
  ev.dataTransfer.setData("Text",ev.target.id);
}

function drop(ev)
{
  ev.preventDefault();
  var data=ev.dataTransfer.getData("Text");
  //ev.target.appendChild(document.getElementById(data));
  document.getElementById(data).style.opacity='0.75';
  document.getElementById(data).style.filter='alpha(opacity=75)';

  iwidth=document.getElementById(data).width;
  iheight=document.getElementById(data).height;

  // --- Variaveis ---
  pheight=527;
  pwidth=340;
  // -----------------

  idiff=iheight/iwidth;
  iprop=pheight/pwidth;
  if (idiff<iprop) {
    document.getElementById(data).height=pheight;
    nwidth=pheight/iheight*iwidth;
    document.getElementById(data).width=nwidth;

    nleft=(pwidth-nwidth)/2;
    document.getElementById(data).style.marginLeft=nleft+'px';
  } else {
          document.getElementById(data).width=pwidth;
    nheight=pwidth/iwidth*iheight;
    document.getElementById(data).height=nheight;

    ntop=(pheight-nheight)/2;
    document.getElementById(data).style.marginTop=ntop+'px';
  }
  document.getElementById(data).style.maxHeight='5000%';
  document.getElementById(data).style.maxWidth='5000%';

  document.getElementById("div"+data).style.display='none';
  ev.target.appendChild(document.getElementById(data));
}

function dropl2(ev)
{
        ev.preventDefault();
        var data=ev.dataTransfer.getData("Text");
        //ev.target.appendChild(document.getElementById(data));
        document.getElementById(data).style.opacity='0.75';
        document.getElementById(data).style.filter='alpha(opacity=75)';

        iwidth=document.getElementById(data).width;
        iheight=document.getElementById(data).height;

        // --- Variaveis ---
        pheight=<?php echo $mh2; ?>;
        pwidth=<?php echo $mw2; ?>;
        // -----------------

        idiff=iheight/iwidth;
        iprop=pheight/pwidth;
        if (idiff<iprop) {
                document.getElementById(data).height=pheight;
                nwidth=pheight/iheight*iwidth;
                document.getElementById(data).width=nwidth;

                nleft=(pwidth-nwidth)/2;
                document.getElementById(data).style.marginLeft=nleft+'px';
        } else {
                document.getElementById(data).width=pwidth;
                nheight=pwidth/iwidth*iheight;
                document.getElementById(data).height=nheight;

                ntop=(pheight-nheight)/2;
                document.getElementById(data).style.marginTop=ntop+'px';
        }
        document.getElementById(data).style.maxHeight='5000%';
        document.getElementById(data).style.maxWidth='5000%';

        document.getElementById("div"+data).style.display='none';
        ev.target.appendChild(document.getElementById(data));
}

function dropl15a(ev)
{
        ev.preventDefault();
        var data=ev.dataTransfer.getData("Text");
        //ev.target.appendChild(document.getElementById(data));
        document.getElementById(data).style.opacity='0.75';
        document.getElementById(data).style.filter='alpha(opacity=75)';

        iwidth=document.getElementById(data).width;
        iheight=document.getElementById(data).height;

        // --- Variaveis ---
        pheight=<?php echo $mh15a; ?>;
        pwidth=<?php echo $mw15a; ?>;
        // -----------------

        idiff=iheight/iwidth;
        iprop=pheight/pwidth;
        if (idiff<iprop) {
                document.getElementById(data).height=pheight;
                nwidth=pheight/iheight*iwidth;
                document.getElementById(data).width=nwidth;

                nleft=(pwidth-nwidth)/2;
                document.getElementById(data).style.marginLeft=nleft+'px';
        } else {
                document.getElementById(data).width=pwidth;
                nheight=pwidth/iwidth*iheight;
                document.getElementById(data).height=nheight;

                ntop=(pheight-nheight)/2;
                document.getElementById(data).style.marginTop=ntop+'px';
        }
        document.getElementById(data).style.maxHeight='5000%';
        document.getElementById(data).style.maxWidth='5000%';

        document.getElementById("div"+data).style.display='none';
        ev.target.appendChild(document.getElementById(data));
}

function droplixeira(ev)
{
        ev.preventDefault();
        var data=ev.dataTransfer.getData("Text");
        //ev.target.appendChild(document.getElementById(data));
        document.getElementById(data).style.opacity='0.75';
        document.getElementById(data).style.filter='alpha(opacity=75)';

  document.getElementById(data).style.display='none';

        iwidth=document.getElementById(data).width;
        iheight=document.getElementById(data).height;

        // --- Variaveis ---
        pheight=55;
        pwidth=55;
        // -----------------

        idiff=iheight/iwidth;
        iprop=pheight/pwidth;
        if (idiff<iprop) {
                document.getElementById(data).height=pheight;
                nwidth=pheight/iheight*iwidth;
                document.getElementById(data).width=nwidth;

                nleft=(pwidth-nwidth)/2;
                document.getElementById(data).style.marginLeft=nleft+'px';
        } else {
                document.getElementById(data).width=pwidth;
                nheight=pwidth/iwidth*iheight;
                document.getElementById(data).height=nheight;

                ntop=(pheight-nheight)/2;
                document.getElementById(data).style.marginTop=ntop+'px';
        }
        document.getElementById(data).style.maxHeight='5000%';
        document.getElementById(data).style.maxWidth='5000%';

        document.getElementById("div"+data).style.display='none';
        ev.target.appendChild(document.getElementById(data));
}

function dropl15b(ev)
{
        ev.preventDefault();
        var data=ev.dataTransfer.getData("Text");
        //ev.target.appendChild(document.getElementById(data));
        document.getElementById(data).style.opacity='0.75';
        document.getElementById(data).style.filter='alpha(opacity=75)';

        iwidth=document.getElementById(data).width;
        iheight=document.getElementById(data).height;

        // --- Variaveis ---
        pheight=<?php echo $mh15b; ?>;
        pwidth=<?php echo $mw15b; ?>;
        // -----------------

        idiff=iheight/iwidth;
        iprop=pheight/pwidth;
        if (idiff<iprop) {
                document.getElementById(data).height=pheight;
                nwidth=pheight/iheight*iwidth;
                document.getElementById(data).width=nwidth;

                nleft=(pwidth-nwidth)/2;
                document.getElementById(data).style.marginLeft=nleft+'px';
        } else {
                document.getElementById(data).width=pwidth;
                nheight=pwidth/iwidth*iheight;
                document.getElementById(data).height=nheight;

                ntop=(pheight-nheight)/2;
                document.getElementById(data).style.marginTop=ntop+'px';
        }
        document.getElementById(data).style.maxHeight='5000%';
        document.getElementById(data).style.maxWidth='5000%';

        document.getElementById("div"+data).style.display='none';
        ev.target.appendChild(document.getElementById(data));
}

</script>


  <script>
  $(function() {
    $( "#accordion" ).accordion();
  });
  </script>
</head>

<body  class="fonte_personalizada">
	<input type="hidden" name="modelodocelular" id="modelodocelular" value="">
	<input type="hidden" name="layoutdacapinha" id="layoutdacapinha" value="">

	<div id="accordion">
		<?php
			include 'passo1.php';
			include 'passo2.php';
			include 'passo3.php';
			include 'passo4.php';
		?>
	</div>
</body>
</html>
