<?php 

Class Template extends SmartyBC{
	function __construct(){
		parent:: __construct();

		//vamos configurar as pastas para o smarty
		$this->setTemplateDir('view/');
		$this->setCompileDir('view/compile/');
		$this->setCacheDir('view/cache/');		
	}
}

 ?>