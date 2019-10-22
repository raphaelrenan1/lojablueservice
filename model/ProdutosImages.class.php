<?php

Class ProdutosImages extends Conexao{
	function GetImagesPro($pro){

		$query = "SELECT * FROM {$this->prefix}imagens WHERE img_pro_id = :pro";

		$params = array(':pro'=>(int)$pro); // SQL Injection, Segurança para Loja Virtual

		$this->ExecuteSQL($query, $params);

		$this->GetLista();


	}

	function GetLista(){
		$i = 1;
		while ($lista = $this->ListarDados()):
		$this->itens[$i] = array(
			'img_id' => $lista['img_id'],
			'img_nome' => Rotas::ImageLink($lista['img_nome'], 150, 150),
			'img_pro_id' => $lista['img_pro_id'],
			'img_link' => Rotas::ImageLink($lista['img_nome'], 500, 500)
		);

		$i++;
	endwhile;
	}	
}
?>