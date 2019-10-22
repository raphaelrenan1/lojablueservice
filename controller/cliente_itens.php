<?php 

$smarty = new Template();

Login::MenuCliente();


if(!isset($_POST['cod_pedido'])){
	Rotas::Redirecionar(1, Rotas::pag_ClientePedidos());
	exit();
}

$itens = new Itens();
$pedido = filter_var($_POST['cod_pedido'], FILTER_SANITIZE_STRING);



$itens->GetItensPedido($pedido);
$smarty->assign('ITENS', $itens->GetItens());
$smarty->assign('FRETE', Sistema::MoedaBR($itens->GetItens()[1]['ped_frete_valor']));
$smarty->assign('TOTAL', Sistema::MoedaBR($itens->GetTotal()));
$smarty->assign('FRETE_TOTAL', Sistema::MoedaBR($itens->GetTotal()+$itens->GetItens()[1]['ped_frete_valor']));



// caso o status do pagamento for NAO, mostra novamente o botão de pagar 
 if($itens->GetItens()[1]['ped_pag_status']=='NAO'):
        
//         echo '<pre>';    
//         var_dump($itens->GetItens());
//         echo '</pre>';
            
              $smarty->assign('REF',$pedido);
              $smarty->assign('PAG_RETORNO', Rotas::pag_PedidoRetorno());
              $smarty->assign('PAG_ERRO', Rotas::pag_PedidoRetornoERRO());
              $smarty->assign('TEMA', Rotas::get_SiteTEMA());
             
   /// fim do pagamento            

 endif;





$smarty->display('cliente_itens.tpl');

 ?>