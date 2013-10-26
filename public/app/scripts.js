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

/* PASSO 1 */
function selecionarmodelo(meumodelo){
  if (meumodelo.value == 'iphone4') {
    document.getElementById("modelodocelular").value="0";
    goto2()
  }
  if (meumodelo.value == 'iphone5') {
    document.getElementById("modelodocelular").value="1";
    goto2()
  }
  if (meumodelo.value == 'galaxy3') {
    document.getElementById("modelodocelular").value="2";
    goto2()
  }
  if (meumodelo.value == 'galaxy4') {
    document.getElementById("modelodocelular").value="3";
    goto2()
  }
  if (meumodelo.value == '') {
    document.getElementById("modelodocelular").value="";
  }

  document.getElementById("imagensselecione").style.display = 'block';
  document.getElementById("p3desc").style.display = 'block';
  document.getElementById("compupload").style.display = 'none';
}

/* PASSO 2 */
function selecionalayout(meulayout) {
  if (meulayout.value == '0') {
    document.getElementById("layoutdacapinha").value="0";
    goto3()
  }
  if (meulayout.value == '1') {
    document.getElementById("layoutdacapinha").value="1";
    goto3()
  }
  if (meulayout.value == '2') {
    document.getElementById("layoutdacapinha").value="2";
    goto3()
  }
  if (meulayout.value == '') {
    document.getElementById("layoutdacapinha").value="";
  }

  document.getElementById("imagensselecione").style.display = 'block';
  document.getElementById("p3desc").style.display = 'block';
  document.getElementById("compupload").style.display = 'none';
  document.getElementById("ishowcomp").checked = false;
}

/* PASSO 3 */
function showfacebook() {
  window.parent.document.getElementById("frcompupload").src = "http://case4you.com.br/app/casefouryou/1/?m="+document.getElementById("modelodocelular").value+"&l="+document.getElementById("layoutdacapinha").value;

  document.getElementById("imagensselecione").style.display = 'none';
  document.getElementById("p3desc").style.display = 'none';
  document.getElementById("compupload").style.display = 'block';
}

function showinstagram() {
  window.parent.document.getElementById("frcompupload").src = "http://case4you.com.br/app/instagram4you/1/?m="+document.getElementById("modelodocelular").value+"&l="+document.getElementById("layoutdacapinha").value;

  document.getElementById("imagensselecione").style.display = 'none';
  document.getElementById("p3desc").style.display = 'none';
  document.getElementById("compupload").style.display = 'block';
}

function showcomputador() {
  window.parent.document.getElementById("frcompupload").src = "http://case4you.com.br/app/_computador/";
  document.getElementById("p3desc").style.display = 'none';
  document.getElementById("compupload").style.display = 'block';
  document.getElementById("l3layout").style.display = 'block';

  
}


/*
function handleClick(myRadio) {
    alert('Old value: ' + currentValue);
    alert('New value: ' + myRadio.value);
    currentValue = myRadio.value;
}
*/