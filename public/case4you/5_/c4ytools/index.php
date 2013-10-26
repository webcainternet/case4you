<html>

<head>
	<meta charset="utf-8" />
	
  <title>Case4You - Monte sua capinha</title>
  <link rel="stylesheet" href="./jquery-ui.css" />
  <script src="./jquery-1.9.1.js"></script>
  <script src="./jquery-ui.js"></script>
  <link rel="stylesheet" href="./style.css" />

  <script>
  $(function() {
    $( "#accordion" ).accordion();
  });
  </script>

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
		ev.target.appendChild(document.getElementById(data));
		}
	</script>

  <script type="text/javascript">
    function goto1() {
      $( "#accordion" ).accordion( "option", "active", 0 );
    }
    function goto2() {
      $( "#accordion" ).accordion( "option", "active", 1 );
    }
    function goto3() {
      $( "#accordion" ).accordion( "option", "active", 2 );
    }
    function goto4() {
      $( "#accordion" ).accordion( "option", "active", 3 );
    }
    function goto5() {
      $( "#accordion" ).accordion( "option", "active", 4 );
    }

    function showcomputador() {
      document.getElementById("imagenscomputador").style.display = 'block';
      document.getElementById("imagensselecione").style.display = 'none';
      document.getElementById("p3mask").style.display = 'block';
      document.getElementById("p3desc").style.display = 'none';


      
    }

function handleClick(myRadio) {
    alert('Old value: ' + currentValue);
    alert('New value: ' + myRadio.value);
    currentValue = myRadio.value;
}

    function selecionarmodelo(meumodelo){
      if (meumodelo.value == 'iphone4') {
        document.getElementById("divmask").style.backgroundImage = "url('./img/mask-iphone4.png')";
        goto2()
      }
      if (meumodelo.value == 'iphone5') {
        document.getElementById("divmask").style.backgroundImage = "url('./img/mask-iphone5.png')";
        goto2()
      }
      if (meumodelo.value == 'galaxy3') {
        document.getElementById("divmask").style.backgroundImage = "url('./img/mask-galaxy3.png')";
        goto2()
      }
      if (meumodelo.value == 'galaxy4') {
        document.getElementById("divmask").style.backgroundImage = "url('./img/mask-galaxy4.png')";
        goto2()
      }
      if (meumodelo.value == '') {
        document.getElementById("divmask").style.backgroundImage = "url('./img/blank.png')";
      }
    }

    

  </script>

<style>
#holder { border: 10px dashed #ccc; width: 200px; min-height: 200px; margin: 20px auto;}
#holder.hover { border: 10px dashed #0c0; }
#holder img { display: block; margin: 10px auto; }
#holder p { margin: 10px; font-size: 14px; }
progress { width: 100%; }
progress:after { content: '%'; }
.fail { background: #c00; padding: 2px; color: #fff; }
.hidden { display: none !important;}
</style>

<body>





<div id="accordion">


  <h3>Passo 1 - Modelo do seu celular</h3>
  <div>
    <div style="float: left; width: 350px; height: 550px;">
      <p>
        Selecione o layout de sua capinha: <br />&nbsp;<br />
        
        <input onChange="selecionarmodelo(this)" type="radio" name="modelo" value="iphone4" style="display: inline; float: none;position: relative; top: -85px;">
          <img style="margin-left: 2px; margin-right: 5px; width: 45px; float: none;position: relative; top: -10px;" src="./img/iphone4.png" alt="">
        
        <input onChange="selecionarmodelo(this)" type="radio" name="modelo" value="iphone5" style="display: inline; float: none;position: relative; top: -85px;">
          <img style="margin-left: 2px; margin-right: 5px; width: 55px; float: none;position: relative; top: -3px;" src="./img/iphone5.png" alt="">
        
        <input onChange="selecionarmodelo(this)" type="radio" name="modelo" value="galaxy3" style="display: inline; float: none;position: relative; top: -85px;">
          <img style="margin-left: 2px; margin-right: 5px; width: 55px; float: none;position: relative; top: 1px;" src="./img/galaxys3.jpg" alt="">

        <input onChange="selecionarmodelo(this)" type="radio" name="modelo" value="galaxy4" style="display: inline; float: none;position: relative; top: -85px;">
          <img style="margin-left: 2px; margin-right: 5px; width: 55px; float: none;position: relative; top: 1px;" src="./img/galaxys4.jpg" alt="">
      </p>
    </div>
    <div id="p1-dvfoto-img" style="float: left; width: 348px; border-left: solid 1px #CCC; height: 540px; text-align: left; background-repeat: no-repeat; background-position: 15px 10px;">
      <div style="float: left;
                  width: 15px;
                  height: 20px;
                  margin-left: 20px;
                  margin-top: 20px;
                  background-color: #6aa11a;
                  border-radius: 20px;
                  padding: 5px;
                  padding-left: 10px;
                  padding-top: 5px;
                  color: #FFFFFF;
                  font-size: 14px;
                  font-weight: bold;">1</div>

      <div style="float: left;
                  width: 260px;
                  margin-left: 10px;
                  margin-top: 13px;
                  padding: 5px;
                  color: #6aa11a;
                  font-size: 14px;
                  font-weight: bold;">SELECIONE O MODELO DE SEU APARELHO AO LADO!</div>
      <div style="float: left; width: 340px; margin-left: 20px; margin-top: 20px;">
        AJUDA: Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.</div>
    
    </div>
  </div>



  <h3>Passo 2 - Escolha de Layout</h3>
  <div>
    <div style="float: left; width: 350px;">
      <p>
        Selecione o layout de sua capinha: <br />&nbsp;<br />
        
        <input onChange="goto3()" type="radio" name="layout" value="" style="display: inline; float: none;position: relative; top: -50px;">
          <img style="margin-left: 2px; margin-right: 15px;" src="./img/modelo-1.png" alt="">
        
        <input onChange="goto3()" type="radio" name="layout" value="" style="display: inline; float: none;position: relative; top: -50px;">
          <img style="margin-left: 2px; margin-right: 15px;" src="./img/modelo-2.png" alt="">
        
        <input onChange="goto3()" type="radio" name="layout" value="" style="display: inline; float: none;position: relative; top: -50px;">
          <img style="margin-left: 2px; margin-right: 15px;" src="./img/modelo-3.png" alt="">
      </p>
    </div>
    <div id="p1-dvfoto-img" style="float: left; width: 348px; border-left: solid 1px #CCC; height: 540px; text-align: left; background-repeat: no-repeat; background-position: 15px 10px;">
      <div style="float: left;
                  width: 15px;
                  height: 20px;
                  margin-left: 20px;
                  margin-top: 20px;
                  background-color: #6aa11a;
                  border-radius: 20px;
                  padding: 5px;
                  padding-left: 10px;
                  padding-top: 5px;
                  color: #FFFFFF;
                  font-size: 14px;
                  font-weight: bold;">2</div>

      <div style="float: left;
                  width: 260px;
                  margin-left: 10px;
                  margin-top: 13px;
                  padding: 5px;
                  color: #6aa11a;
                  font-size: 14px;
                  font-weight: bold;">ESCOLHA O LAYOUT DE SUA CAPINHA!</div>
      <div style="float: left; width: 340px; margin-left: 20px; margin-top: 20px;">
        AJUDA: Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.</div>
    
    </div>
  </div>




  <h3>Passo 3 - Selecionar Fotos</h3>
  <div>
    <div id="imagensselecione" style="float: left; width: 348px;">
      <p>
        Selecione de onde você quer selecionar as fotos: <br />&nbsp;<br />
        
        <input onChange="showcomputador()" type="radio" name="modelo" value="" style="display: inline; float: none;position: relative; top: -50px;">
          <img style="margin-left: 2px; margin-right: 15px;" src="./img/computador.png" alt="">
        
        <input onChange="goto3()" type="radio" name="modelo" value="" style="display: inline; float: none;position: relative; top: -50px;">
          <img style="margin-left: 2px; margin-right: 15px;" src="./img/facebook.png" alt="">
        
        <input onChange="goto3()" type="radio" name="modelo" value="" style="display: inline; float: none;position: relative; top: -50px;">
          <img style="margin-left: 2px; margin-right: 15px;" src="./img/instagram.png" alt="">
      </p>
    </div>
    <div id="p3desc" style="float: left; width: 348px; border-left: solid 1px #CCC; height: 540px; text-align: left; background-repeat: no-repeat; background-position: 15px 10px;">
      <div style="float: left;
                  width: 15px;
                  height: 20px;
                  margin-left: 20px;
                  margin-top: 20px;
                  background-color: #6aa11a;
                  border-radius: 20px;
                  padding: 5px;
                  padding-left: 10px;
                  padding-top: 5px;
                  color: #FFFFFF;
                  font-size: 14px;
                  font-weight: bold;">3</div>

      <div style="float: left;
                  width: 260px;
                  margin-left: 10px;
                  margin-top: 13px;
                  padding: 5px;
                  color: #6aa11a;
                  font-size: 14px;
                  font-weight: bold;">SELECIONE AS FOTOS QUE SERAM IMPRESSAS!</div>
      <div style="float: left; width: 340px; margin-left: 20px; margin-top: 20px;">
        AJUDA: Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.</div>
    
    </div>
    <div id="p3mask" style="display: none; float: right; width: 350px; border-left: solid 1px #CCC; height: 540px; text-align: center; background-repeat: no-repeat; background-position: 15px 10px;">
    	<div id="divmask" style="height: 550px; width: 340px; margin-left: 10px; background-size: 340px; background-repeat: no-repeat;">
    		&nbsp;
  		</div>
    </div>
    <div id="imagenscomputador" style="width: 335px; display: none;">
    	<p>
        Selecione todas as fotos que seram utilizadas e clique em avançar: <br />&nbsp;<br />
    	</p>
      <article>
        <div id="holder">
        </div> 
        <p id="upload" class="hidden"><label>Drag &amp; drop not supported, but you can still upload via this input field:<br><input type="file"></label></p>
        <p id="filereader">File API &amp; FileReader API not supported</p>
        <p id="formdata">XHR2's FormData is not supported</p>
        <p id="progress">XHR2's upload progress isn't supported</p>
        <p>Processo de upload: <progress id="uploadprogress" min="0" max="100" value="0">0</progress></p>
        <p>Arraste a imagem de seu computador para a area pontilhada.</p>
      </article>
    </div>
    <script>
      var holder = document.getElementById('holder'),
          tests = {
            filereader: typeof FileReader != 'undefined',
            dnd: 'draggable' in document.createElement('span'),
            formdata: !!window.FormData,
            progress: "upload" in new XMLHttpRequest
          }, 
          support = {
            filereader: document.getElementById('filereader'),
            formdata: document.getElementById('formdata'),
            progress: document.getElementById('progress')
          },
          acceptedTypes = {
            'image/png': true,
            'image/jpeg': true,
            'image/gif': true
          },
          progress = document.getElementById('uploadprogress'),
          fileupload = document.getElementById('upload');

      "filereader formdata progress".split(' ').forEach(function (api) {
        if (tests[api] === false) {
          support[api].className = 'fail';
        } else {
          // FFS. I could have done el.hidden = true, but IE doesn't support
          // hidden, so I tried to create a polyfill that would extend the
          // Element.prototype, but then IE10 doesn't even give me access
          // to the Element object. Brilliant.
          support[api].className = 'hidden';
        }
      });

      function previewfile(file) {
        if (tests.filereader === true && acceptedTypes[file.type] === true) {
          var reader = new FileReader();
          reader.onload = function (event) {
            var image = new Image();
            image.src = event.target.result;
            image.width = 180; // a fake resize
            image.draggable = true;
            image.ss = true;
            image.id = 'drag1';
            image.ondragstart = 'drag(event)';
            holder.appendChild(image);
          };

          reader.readAsDataURL(file);
        }  else {
          holder.innerHTML += '<p>Uploaded ' + file.name + ' ' + (file.size ? (file.size/1024|0) + 'K' : '');
          console.log(file);
        }
      }

      function readfiles(files) {
          //debugger;
          var formData = tests.formdata ? new FormData() : null;
          for (var i = 0; i < files.length; i++) {
            if (tests.formdata) formData.append('file', files[i]);
            previewfile(files[i]);
          }

          // now post a new XHR request
          if (tests.formdata) {
            var xhr = new XMLHttpRequest();
            xhr.open('POST', '/devnull.php');
            xhr.onload = function() {
              progress.value = progress.innerHTML = 100;
            };

            if (tests.progress) {
              xhr.upload.onprogress = function (event) {
                if (event.lengthComputable) {
                  var complete = (event.loaded / event.total * 100 | 0);
                  progress.value = progress.innerHTML = complete;
                }
              }
            }

            xhr.send(formData);
          }
      }

      if (tests.dnd) { 
        holder.ondragover = function () { this.className = 'hover'; return false; };
        holder.ondragend = function () { this.className = ''; return false; };
        holder.ondrop = function (e) {
          this.className = '';
          e.preventDefault();
          readfiles(e.dataTransfer.files);
        }
      } else {
        fileupload.className = 'hidden';
        fileupload.querySelector('input').onchange = function () {
          readfiles(this.files);
        };
      }
    </script>



  </div>




  <h3>Passo 4 - Aplicar filtros</h3>
  <div>
    <div style="float: left; width: 350px; height: 550px;">
      <p>
        A capinha não foi finalizada! <br />&nbsp;<br />
        
        
      </p>
    </div>
    <div id="p1-dvfoto-img" style="float: left; width: 348px; border-left: solid 1px #CCC; height: 540px; text-align: left; background-repeat: no-repeat; background-position: 15px 10px;">
      <div style="float: left;
                  width: 15px;
                  height: 20px;
                  margin-left: 20px;
                  margin-top: 20px;
                  background-color: #6aa11a;
                  border-radius: 20px;
                  padding: 5px;
                  padding-left: 10px;
                  padding-top: 5px;
                  color: #FFFFFF;
                  font-size: 14px;
                  font-weight: bold;">4</div>

      <div style="float: left;
                  width: 260px;
                  margin-left: 10px;
                  margin-top: 13px;
                  padding: 5px;
                  color: #6aa11a;
                  font-size: 14px;
                  font-weight: bold;">APLICAR FILTRO DE CORES!</div>
      <div style="float: left; width: 340px; margin-left: 20px; margin-top: 20px;">
        AJUDA: Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.</div>
    
    </div>
  </div>


</div>






</body>



</html>