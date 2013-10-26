<?php
//incluindo a classe de conexão com o facebook
require_once 'FacebookApi/facebook.php';
 
/*
* ID da App, vocé obteve isso na ultima
* página de geração do seu aplicativo no facebook
*/
$App_ID = '363972257064181';
/*
* App Secret, você obteve isso na ultima
* página de geração do seu aplicativo no facebook
*/
$App_Secret = '12c8083874ef0352cca1108a2a104d14';
 
//Instanciando o Objeto da classe do facebook
$facebook = new Facebook(array(
        'appId'  => $App_ID ,
        'secret' => $App_Secret
));
 
//Pegando Id do usuário Logado
$o_user = $facebook->getUser();
 
/*
* Verificando se está conectado
*/
if($o_user == 0)
{
 
    //Envia para a página de permissão do facebook, nela voce irá dar permissão ao aplicativo
    //acessar dados da sua conta
    $url = $facebook->getLoginUrl(array('scope' => array('publish_stream','read_stream')));
    header("Location:".$url);
}
else
{
    //Verificando se o comando de logout foi enviado
    if($_GET['action'] == 'finish' )
    {
        //Retirando a permissão do Aplicativo à sua conta no facebook
        session_destroy();
        header('Location: '.$facebook->getLogoutUrl());
    }
    else
    {
        //Atualizando seu status no facebook
        if( $_GET['action'] == 'publish' && strlen($_POST['status']) > 0 )
        {
            $post =  array('message' => $_POST['status']);
            $feed = $facebook->api('/me/feed', 'POST', $post);
        }
        else
            //pegando as publicações do seu mural
            $feed = $facebook->api('/me/feed');
            //Use var_dump($feed) ou print_r($feed)
            //para ver todos os campos retornados
 
        //pegando as informações do usuário conectado
        $me = $facebook->api('/me');
        //Use var_dump($me) ou print_r($me)
        //para ver todos os campos retornados
 
        //pegando as publicações da sua home
        $home = $facebook->api('/me/home');
        //Use var_dump($home) ou print_r($home)
        //para ver todos os campos retornados

var_dump($o_user);


    }
}
 
?>
 
<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
   <title>Integração com o Facebook</title>
   <meta content='text/html; charset=utf-8' http-equiv='Content-Type'>
  </head>
  <body>
Error!
</body>
</html>
