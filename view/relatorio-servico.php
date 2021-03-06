<!DOCTYPE html>
<!--[if IE 8]>         <html class="ie8"> <![endif]-->
<!--[if IE 9]>         <html class="ie9 gt-ie8"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="gt-ie8 gt-ie9 not-ie"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>Doações SA</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

	<!-- Pixel Admin's stylesheets -->
	<link href="assets/stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="assets/stylesheets/pixel-admin.min.css" rel="stylesheet" type="text/css">
	<link href="assets/stylesheets/pages.min.css" rel="stylesheet" type="text/css">
	<link href="assets/stylesheets/rtl.min.css" rel="stylesheet" type="text/css">
	<link href="assets/stylesheets/themes.min.css" rel="stylesheet" type="text/css">
	<link href="assets/stylesheets/customizacao.css" rel="stylesheet" type="text/css">
	<script src="assets/javascripts/jquery.min.js"></script>
	<script src="assets/javascripts/utilidades.js"></script>
	<script src="assets/javascripts/jquery.table2excel.js"></script>
	<script src="assets/javascripts/jquery.validate.min.js"></script>
</head>

		<body class="theme-default main-menu-animated">

			<script>var init = [];</script>

			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="active"><a href="#">Relatório de Item<span class="sr-only">(current)</span></a></li>
							<li><a href="pagina-inicial.php">Página Inicial</a></li>
						</ul>
						<div>
							<h4 class="navbar-text navbar-right">Mão Amiga</h4>
						</div>
					</div><!-- /.navbar-collapse -->

				</div><!-- /.container-fluid -->
			</nav>

			<!--action="../model/pesquisa-usuario.php" method="POST"-->
			<form id="relatorio-form">
				<div class="panel panel-default col-md-offset-1 col-md-10">
					<div class="panel-heading">
						<h1 class="panel-title text-center">Relatório de Serviços</h1>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-sm-5">
								<div class="form-group no-margin-hr">
									<label class="control-label">Nome</label>
									<input type="text" name="nome" id="nome" class="form-control" placeholder="Nome" autofocus>
								</div>
							</div>
							<div class="col-sm-2">
								<div class="form-group no-margin-hr">
									<label class="control-label">Identificador</label>
									<input type="text" class="form-control" placeholder="Número do Identificador" id="idItem"  name="idItem">
								</div>
							</div>
						</div><!-- row -->
					</div>
					<div class="panel-footer text-right">
						<button class="btn btn-default" type="reset" onclick="focusPrimeiroCampo('table-relatorio-item');">Limpar</button>
						<button class="btn btn-primary" id="btn-pesquisar" type="submit">Pesquisar</button>
					</div>
				</div>
			</form>

		<div id="table-relatorio-item" class="table-info display-none col-md-offset-1 col-md-10 padding-left-right-none">
			<div class="panel">
				<div class="panel-heading text-center">
					<span class="panel-title">Resultado da pesquisa</span>
					<div class="text-right">
						<a class="btn btn-success btn-relatorio-usuario-download" id="btn-emitir-excel">
					      <i class="fa fa-download" aria-hidden="true"></i>Download 
					    </a>
					</div>
				</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-12">								
									<!-- Light table -->
								<div class="table-light">
									<table class="table table-bordered" id="tabela">
										<thead>
											<tr>
												<th>Nome</th>
												<th>Identificador</th>
												<th>Tipo</th>
											</tr>
										</thead>
										<tbody>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
<script type="text/javascript">
		$("#btn-emitir-excel").click(function(){

  $("#tabela").table2excel({

    // exclude CSS class

    exclude: ".noExl",

    name: "Worksheet Name",

    filename: "Relatório de Item" //do not include extension

  });

});


</script>
	

			<!-- Pixel Admin's javascripts -->
			<script src="assets/javascripts/bootstrap.min.js"></script>
			<script src="assets/javascripts/pixel-admin.min.js"></script>

		<!-- Função ajax da pesquisa action="../model/pesquisa-usuario.php"-->
		<script>
			$(document).ready(function(){
				$('#btn-pesquisar').click(function(){
					var dados = $('#relatorio-form').serialize();
					jQuery.ajax({
						type: "POST",
						url: "../model/relatorio-servico.php",
						data: dados,
						success: function(data)
						{
							$('tbody').html(data);
							$("#table-relatorio-item").show();
						}
					});			
					return false;
				});
			});
		</script>


			<!-- Javascript -->
			<script>
				init.push(function () {

					$('#bs-datepicker-inline').datepicker();
					$(document).ready(function(){
						$('#dtNascimento').datepicker({
							format: 'dd/mm/yyyy',
						});

					});

					$("#telefone").mask("(99) 99999-9999");
					$("#cpf").mask("99999999999");
					$("#masked-inputs-examples-ssn").mask("999-99-9999");
					$("#masked-inputs-examples-product-key").mask("a*-999-a999", {
						placeholder: " ",
						completed: function(){
							alert("You typed the following: " + this.val());
						}
					});
				});
				window.PixelAdmin.start(init);
			</script>
		</body>
		</html>