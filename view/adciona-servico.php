<?php
require 'config.php';
require 'connection.php';

$nomeItem = $_POST['nome'];
$tipoItem = $_POST['tipo'];
$observacao = $_POST['observacao'];

 

$link = DBConnect();

		$query = "INSERT INTO servico (NomeItem, TipoItem, Observacao) VALUES ('$nomeItem','$tipoItem','$observacao');";
		mysqli_multi_query($link,$query);



DBClose($link);


header("Location:servico.php");
?>