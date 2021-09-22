<?php  
	
	/**
	 * este arquivo faz a conexão do usario com o banco de dados
	 * */

	
	// Adicionando os arquivos principais
	include_once dirname(__DIR__).'/models/Connect.class.php';
	include_once dirname(__DIR__).'/models/Manager.class.php';

	// Busca no banco de dados
	$manager = new Manager;
	$log = $manager->select_common("usuario",null,array("usuario_login"=>$_POST['email'],"usuario_senha"=>$_POST['senha']), " LIMIT 1");
	
	var_dump($log);

/*
	if($_POST['email'] != $log[]){
		header("location: index.php?msg=usuario_incorreto");
	}elseif($senha != $master['senha']){
		header("location: index.php?msg=senha_incorreta");
	}else{
		//echo "Acesso Permitido!";	
		session_start();
		// Chamando a variavel de sessão
		$_SESSION['utdexec3'] = $master;

		header("location: index.php");

	}	

	}	

*/

?>