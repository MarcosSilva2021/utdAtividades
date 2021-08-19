<!-- Links de CSS -->
<!-- Bootstrap -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">

		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">

<meta charset="utf-8">
<div class="col-md-6 offset-3 jumbotron">
<br><br><br><br>
	<div class="col-md-6 offset-2 jumbotron">
	<hr><h3>Tabela Criada com Sucesso</h3><hr>
	</div> 
	<?php

		/* Recebendo os dados do Formuário */
		$nl = $_POST['nlinhas'];
		$nc = $_POST['ncolunas'];
	?>
	<div class="col-md-4 offset-3 jumbotron">
	<table class="table table-bordered">

		<tr>
		<th>Linhas  </th>
		<th>Colunas</th><br>
		</tr>
		<tr>
		<td><?php echo "$nl"?></td>
		<td><?php echo "$nc"?></td>
		</tr>
	</table>
	</div>
		<br><br>
			<table class="table table-bordered">
			<thead>
				
			</thead>
			<tbody>
					
				<?php for ($j=1; $j <= $nl ; $j++) { ?>
					<tr> 
				 		<?php for ($i=1; $i <= $nc ; $i++) { ?>
						
							<td> &nbsp; </td>

						
						<?php } ?>

					</tr>  
					
			
				<?php } ?>
				
			</tbody>
		</table>
</div>
	