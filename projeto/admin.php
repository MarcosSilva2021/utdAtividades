<?php  
	
	session_start();

	if(!isset($_SESSION['utdexec3'])){
		header("location: index.php?msg=acesso_nao_permitido");
	}


?>



<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Acesso Admin</title>
<!-- Links de CSS -->
<!-- Bootstrap -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">

		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
</head>
<body>

	<div class="col-md-6 offset-3 jumbotron">
		<br><br><hr><h1>Página Inicial do Administrador</h1><hr><br><br>
		<form action="" method="">
			
			
			<button class="btn btn-warning btn-block">
				<a href="form.php"> Cadastrar um Usuário  </a>
				<i class="fa fa-check-square" ></i>
			</button>
			<br><br>

			<button class="btn btn-warning btn-block">
				<a href="listagem.php"> Listar Usuários do Sistema  </a>
				<i class="fa fa-check-square" ></i>
			</button>
			<br><br>

			<button class="btn btn-warning btn-block">
				<a href="logout.php"> Sair do Sistema  </a>
				<i class="fa fa-window-close "></i>
			</button>
			<br><br>


		</form>


	</div>
</body>
</html>