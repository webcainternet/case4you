function MontaCapa(modelo, layout) {
   $(document).ready(function(){
   var response = '';
   $.ajax({ type: "GET",
            url: "http://127.0.0.1/app/capinha/?m="+modelo+"&l="+layout,
            async: false,
            success : function(text)
            {
                response = text;
            }
   });

   var myNode = document.getElementById("divcapinha");
   while (myNode.firstChild) {
       myNode.removeChild(myNode.firstChild);
   }

   $('#divcapinha').prepend(response);
   });

   if (modelo == 0) { document.getElementById("mascarasuperior").style.backgroundImage = "url('/app/img/mask-iphone4-top.png')"; }
   if (modelo == 1) { document.getElementById("mascarasuperior").style.backgroundImage = "url('/app/img/mask-iphone5-top.png')"; }
   if (modelo == 2) { document.getElementById("mascarasuperior").style.backgroundImage = "url('/app/img/mask-galaxy3-top.png')"; }
   if (modelo == 3) { document.getElementById("mascarasuperior").style.backgroundImage = "url('/app/img/mask-galaxy4-top.png')"; }

}


function selecionarmodelo(modelo) {
   var smodelo = document.getElementById("modelodocelular").value=modelo.value;

   //Para onde vai
   if (document.getElementById("layoutdacapinha").value == "") {
      goto2();
   }
   else {
      goto3();
      var slayout = document.getElementById("layoutdacapinha").value;
      MontaCapa(smodelo,slayout);
   }
}


function selecionalayout(layout) {
   var slayout = document.getElementById("layoutdacapinha").value=layout.value;
   if (document.getElementById("modelodocelular").value == "") {
      goto1();   
   }
   else {
      goto3();
      var smodelo = document.getElementById("modelodocelular").value;
      MontaCapa(smodelo,slayout);
   }

   //Carrega a capinha   
}

function mostramascarasup() {
   document.getElementById("mascarasuperior").style.display="none"
}