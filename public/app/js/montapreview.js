function MontaPreview(idcsession, modelo, layout, filtro) {
	escondemascarasup();
	parent.previewframe.location="http://127.0.0.1/app/product/?idcsession="+idcsession+"&m="+modelo+"&l="+layout+"&f="+filtro; 
}

function selecionarfiltro(filtro) {
	document.getElementById("divcapinha").style.display='none';
	document.getElementById("divcapinhapreview").style.display='block';
	MontaPreview(document.getElementById("idsession").value,document.getElementById("modelodocelular").value,document.getElementById("layoutdacapinha").value,filtro);

	document.getElementById("filtrocapinha").value = filtro;
}

function VoltarEdicao() {
	document.getElementById("divcapinha").style.display='block';
	document.getElementById("divcapinhapreview").style.display='none';
	mostramascarasup();
}
