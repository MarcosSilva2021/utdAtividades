
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title> q3 - Login </title>

		<!-- Bootstrap -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">

		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="col-3"></div>
				<div class="col-6">
					<hr><h3> Entrar no Sistema </h3><hr>
					<form action="q3_Logado.php" method="POST">
						<label> <i class="fa fa-user"></i> Nome de Usuário </label><br>
						<input type="text" class="form-control" name="nome" placeholder="Digite seu nome ou email"><br><br>

						<label> <i class="fa fa-key"></i> Senha </label><br>
						<input type="password" class="form-control" name="password" placeholder="Digite sua Senha"><br><br>

						
						
						<div>
							<p class="text-fig">
								<button class="btn btn-outline-secondary"> <i class="fa fa-share-square"></i> Enviar Dados </button>
							</p>
						</div>
					</form>	

				</div>
				<div class="col-3"></div>
			</div>
		</div>

			
	</body>
</html>