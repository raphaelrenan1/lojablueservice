<?php


if(isset($_SESSION['PRO'])){

$smarty = new Template();
$carrinho = new Carrinho();

$smarty->assign('PRO', $carrinho->GetCarrinho());
$smarty->assign('TOTAL', Sistema::MoedaBR($carrinho->GetTotal()));
$smarty->assign('PAG_CARRINHO_ALTERAR', Rotas::pag_CarrinhoAlterar());
$smarty->assign('PAG_CONFIRMAR', Rotas::pag_PedidoConfirmar());
$smarty->assign('PESO', number_format($carrinho->GetPeso(),3,'.',''));

$smarty->display('carrinho.tpl');
}else{
	echo '<h4 class="alert alert-danger"> O Carrinho ainda está vazio! </h4>';
}
//echo '<pre>';
//var_dump($carrinho->GetCarrinho());
//echo '</pre>';

?>