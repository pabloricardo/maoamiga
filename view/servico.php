<!DOCTYPE html>
<!--[if IE 8]>         <html class="ie8"> <![endif]-->
<!--[if IE 9]>         <html class="ie9 gt-ie8"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="gt-ie8 gt-ie9 not-ie"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>Mão Amiga</title>
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
					<li class="active"><a href="#">Cadastro de Serviço<span class="sr-only">(current)</span></a></li>
					<li><a href="pagina-inicial.php">Página Inicial</a></li>
				</ul>
				<div>
					<h4 class="navbar-text navbar-right">Mão Amiga</h4>
				</div>
			</div><!-- /.navbar-collapse -->

		</div><!-- /.container-fluid -->
	</nav>


	<!-- <form action=""> -->
	<form action="../model/adciona-servico.php" method="POST" onsubmit="mensagemConfirmacao();">
		<div class="panel panel-default col-md-offset-1 col-md-10">
			<div class="panel-heading">
				<h1 class="panel-title text-center">Cadastro de Serviço</h1>
			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group no-margin-hr">
							<label class="control-label">Nome</label>
							<input type="text" name="nome" class="form-control" placeholder="Nome" required autofocus>
						</div>
					</div>

					<div class="col-sm-2">
						<div class="form-group no-margin-hr">
							<label for="sel1">Tipo de serviço</label>
							<select class="form-control" name="tipo" id="tipo" required>
							<option>Selecione</option>
				      		<option value="Eletrico">Elétrico</option>
					      	<option value="Hidraulico">Hidráulico</option>
					      	<option value="Predial">Predial</option>
					      	<option value="Ajuda">Ajuda Voluntária</option>
					      	<option value="Outros">Outros</option>				      		
							</select>
						</div>
					</div>					
				<div class="row">
					<div class="col-sm-12">
						<div class="form-group no-margin-hr">
							<label for="comment">Descrição:</label>
							<textarea class="form-control" rows="5" name="observacao" id="comment"></textarea>
						</div>
					</div>
				</div><!-- row -->		
			</div>
			<div class="panel-footer text-right">
				<button class="btn btn-default" type="reset" onclick="focusPrimeiroCampo();">Limpar</button>
				<button type="submite" name="cadastra" class="btn btn-primary">Cadastrar</button>
			</div>
		</div>
	</form>

	<script type="text/javascript">
		function mensagemConfirmacao(){
			alert("Cadastro Efetuado com Sucesso");
		}

	</script>

	<!-- Pixel Admin's javascripts -->
	<script src="assets/javascripts/bootstrap.min.js"></script>
	<script src="assets/javascripts/pixel-admin.min.js"></script>



	<!-- Javascript -->
	<script>
		init.push(function () {
			var options = {
				todayBtn: "linked",
				orientation: $('body').hasClass('right-to-left') ? "auto right" : 'auto auto'
			}
			$('#bs-datepicker-example').datepicker(options);

			$('#bs-datepicker-component').datepicker();

			var options2 = {
				orientation: $('body').hasClass('right-to-left') ? "auto right" : 'auto auto'
			}
			$('#bs-datepicker-range').datepicker(options2);

			$('#bs-datepicker-inline').datepicker();
		});
		window.PixelAdmin.start(init);
	</script>
</body>