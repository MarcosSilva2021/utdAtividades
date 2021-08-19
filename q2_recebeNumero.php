<!-- Links de CSS -->
<!-- Bootstrap -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">

		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">

<?php  

	// Recebendo os dados do formulário
	$numeros = $_POST;

?>
<div class="col-md-4 offset-3 jumbotron">
<table class="table table-bordered">
		<hr><h3>Números processados ...   </h3><hr>
		<tr>
		<th>Somatório  </th>
		<th>Maior Número</th><br>
		<th>Menor Número</th><br>
		</tr>
		<tr>
		<td><?php echo array_sum($numeros)?></td>
		<td><?php echo max($numeros)?></td>
		<td><?php echo min($numeros)?></td>
		</tr>
	</table>
</div>
	