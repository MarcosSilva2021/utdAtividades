<!-- Links de CSS -->
<!-- Bootstrap -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">

		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">

<meta charset="utf-8">

<div class="col-md-4 offset-3 jumbotron">
	<table class="table table-bordered">
		<tr>
		<th>Dados  </th>
		<th>Informações</th><br>
		</tr>


<?php 

	foreach ($_POST as $key => $value) { ?>
		<tr>
			<td><?php echo "$key" ?></td>
			<td><?php echo "$value" ?></td>
		</tr>
	<?php } ?>

</table>

</div>