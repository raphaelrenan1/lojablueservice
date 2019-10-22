<?php

class Paginacao extends Conexao{

	public $limite, $inicio, $totalpags, $link = array();

	function GetPaginacao($campo, $tabela){
		$query = "SELECT {$campo} FROM {$tabela}";
		$this->ExecuteSQL($query);
		$total = $this->TotalDados();

		$this->limite = Config::BD_LIMIT_POR_PAG;
		$paginas = ceil($total / $this->limite); //ceil vai arredondar o valor para cima!
		$this->totalpags = $paginas;

		$p = (int)isset($_GET['p']) ? $_GET['p'] : 1;

        //testar se funciona a paginação como quero!
		$this->inicio = ($p * $this->limite) - $this->limite;

		for($i = 1; $i <= $paginas; $i++):
			array_push($this->link, $i);

		endfor;
	}
}
?>