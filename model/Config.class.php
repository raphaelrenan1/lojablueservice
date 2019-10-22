<?php 

Class Config{

//Alterar as informações para o Site funcionar no seu servidor, caso seja diferente das abaixo !
const SITE_URL = "http://localhost";
const SITE_PASTA = "";//se hospedar na raiz, deixar em branco !
const SITE_NOME = "Loja Teste PHP - Blue Service";
const SITE_EMAIL_ADM = "testeblueservice@hotmail.com";
const BD_LIMIT_POR_PAG = 6;
const SITE_CEP = "05019000";


//Alterar as informações do Banco de DADOS se precisar, porém já está hospedado em meu servidor próprio e funcionando!
const BD_HOST = "loja2019.mysql.uhserver.com",
      BD_USER = "loja2019",
      BD_SENHA = "RzewghLoja2019.",
      BD_BANCO = "loja2019",
      BD_PREFIX = "qc_";


//Informações para envio de E-mail ( PHPMailler ) ! alterar com sua conta de e-mail !
      const EMAIL_HOST = "smtp-mail.outlook.com",
            EMAIL_USER = "testeblueservice@hotmail.com",
            EMAIL_NOME = "Loja Virtual de Teste PHP - Blue Service",
            EMAIL_SENHA = "RzewghLoja2019.",
            EMAIL_PORTA = 587,
            EMAIL_SMTPAUTH = true,
            EMAIL_SMTPSECURE = "tls",
            EMAIL_COPIA = "raphaelrenan1@hotmail.com";

      //CONSTANTES PARA O PAGSEGURO
      const PS_EMAIL  = "testeblueservice@hotmail.com", // email pagseguro
            PS_TOKEN  = "0E86ADF6373348509E7B35389D92004C", // token produção
            PS_TOKEN_SBX = "1FB4D7860EA9491BA7AB4A9D9336C275",  // token do sandbox
            PS_AMBIENTE = "production"; // production   /  sandbox

 }
 ?>