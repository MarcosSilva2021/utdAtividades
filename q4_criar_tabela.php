<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>q4 - Criar Tabela</title>
<!-- Links de CSS -->
<!-- Bootstrap -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">

		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
</head>
<body>

	<div class="col-md-2 offset-3 jumbotron">
		<br><br><hr><h1>Tabela</h1><hr><br><br>
		<form action="q4_gravar.php" method="POST">
			
			<label><i class="fa fa-align-center"></i> Digite o numero de linhas: </label><br>
			<input type="number" placeholder=" Linhas " class="form-control" name="nlinhas"><br><br>

			<label><i class="fa fa-table"></i> Digite o numero de colunas: </label><br>
			<input type="number" placeholder=" Colunas " class="form-control" name="ncolunas"><br><br>

			<button class="btn btn-warning btn-block">
				<i class="fa fa-check-square"></i>
				Criar Tabela
			</button>

		</form>


	</div>
</body>
</html>