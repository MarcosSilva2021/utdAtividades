<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title> Q2- Somatório </title>

		<!-- Bootstrap -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">

		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="col-3"></div>
				<div class="col-6">
					<hr><h3> Calculadora  </h3><hr>
					<form action="q2_recebeNumero.php" method="POST">
						
						<div class="row">							
							<?php for($k=1; $k<11;$k++){ ?>
								<div class="col-md-3">
									<label> <i class="fa fa-table"></i> Número <?=$k;?> </label><br>
									<input type="number" class="form-control" name="number<?=$k;?>"><br><br>
								</div>
							<?php } ?>	
						</div>
						<div>
							<p class="text-end">
								<button class="btn btn-outline-secondary"> <i class="fa fa-align-center"></i> Enviar Números </button>
							</p>
						</div>
					</form>	

				</div>
				<div class="col-3"></div>
			</div>
		</div>

			
	</body>
</html>