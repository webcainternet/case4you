<h3>Passo 3 - Selecionar Fotos</h3>

<div>
  <div id="imagensselecione" style="float: left; width: 348px;">
    <p>
      Selecione de onde você quer selecionar as fotos: <br />&nbsp;<br />
      
      <input onChange="showcomputador()" type="radio" name="modelo" id="ishowcomp" value="" style="display: inline; float: none;position: relative; top: -20px;">
        <img style="margin-left: 2px; margin-right: 15px; width: 35px;" src="./img/computador.png" alt="">
      
      <input onChange="showfacebook()" type="radio" name="modelo" id="ishowface" value="" style="display: inline; float: none;position: relative; top: -20px;">
        <img style="margin-left: 2px; margin-right: 15px; width: 35px;" src="./img/facebook.png" alt="">
      
      <input onChange="showinstagram()" type="radio" name="modelo" id="ishowinst" value="" style="display: inline; float: none;position: relative; top: -20px;">
        <img style="margin-left: 2px; margin-right: 15px; width: 35px;" src="./img/instagram.png" alt="">
    </p>

    <div id="compupload" style="float: left; width: 320px; display: none;">
      <iframe id="frcompupload" name="frcompupload" src="about:blank" scrolling="no" frameborder="0" style="width: 100%; height: 450px;"></iframe>
    </div>
  </div>


  

  <div id="p3desc" style="float: left; width: 348px; border-left: solid 1px #CCC; height: 540px; text-align: left; background-repeat: no-repeat; background-position: 15px 10px;">
    <div style="float: left;width: 15px;height: 20px;margin-left: 20px;margin-top: 20px;background-color: #6aa11a;border-radius: 20px;padding: 5px;padding-left: 10px;padding-top: 5px;color: #FFFFFF;font-size: 14px;font-weight: bold;">
      3
    </div>

    <div class="fontc4y2" style="float: left;width: 260px;margin-left: 10px;margin-top: 13px;padding: 5px;color: #6aa11a;font-size: 14px;font-weight: bold;">
      SELECIONE AS FOTOS QUE SERAM IMPRESSAS!
    </div>

    <div class="fontc4y1" style="float: left; width: 340px; margin-left: 20px; margin-top: 20px;">
      AJUDA: Agora escolha de onde deseja buscar suas fotos: De seu computador, Facebook ou Instagram.
    </div>
  </div>

  <div id="l3layout" style="display: none; float: left; width: 336px; border-left: solid 1px #CCC; height: 540px; text-align: left; background-repeat: no-repeat; background-position: 15px 10px;">
    <div style="float: left;width: 15px;height: 20px;margin-left: 20px;margin-top: 20px;background-color: #6aa11a;border-radius: 20px;padding: 5px;padding-left: 10px;padding-top: 5px;color: #FFFFFF;font-size: 14px;font-weight: bold;">
      3
    </div>

    <div class="fontc4y2" style="float: left;width: 260px;margin-left: 10px;margin-top: 13px;padding: 5px;color: #6aa11a;font-size: 14px;font-weight: bold;">
      SELECIONE AS FOTOS QUE SERAM IMPRESSAS!
    </div>

    <div class="fontc4y1" style="float: left; width: 336px; margin-left: 20px; margin-top: 20px;">
      AJUDA: Agora escolha de onde deseja buscar suas fotos: De seu computador, Facebook ou Instagram.
    </div>

<div style="display: block; float: left; width: 350px; border-left-style: solid; border-left-width: 1px; border-left-color: rgb(204, 204, 204); height: 540px; text-align: center; background-position: 15px 10px; background-repeat: no-repeat no-repeat;">
      <div id="divmask" style="padding: 0px; height: 100px; width: 340px; margin-left: 10px; background-size: 340px; background-repeat: no-repeat no-repeat;">
        <div id="divl1" ondrop="drop(event)" ondragover="allowDrop(event)" style="width: 100%; height: 100%; overflow: hidden;text-align: center;
  align: middle; border: solid 1px #6aa11a;"></div>
    </div>
    </div>

  </div>




</div>
