<?php

			require 'config.php';
			require 'connection.php';
			$link = DBConnect();



					$nome = $_POST['nome'];
					$id = $_POST['idItem'];
					//Verifica se o campo foi preenchido para montar a query dinamica
					$where = array();
					 if( $nome ){ $where[] = "NomeItem LIKE '{$nome}%'";} 
					 if( $id ){ $where[] = "IdItem = {$id}";}
					//Monta a query dinamica
					 $sql = "SELECT NomeItem, IdItem, TipoItem FROM servico ";
					if( sizeof( $where ) )
						$sql .= ' WHERE '.implode( ' AND ',$where ) ;
					
					//echo $sql; imrpime a query montada
				//Executa query
				$result = $link->query($sql);
				//Veririca se retornou alguma linha
				if ($result->num_rows > 0) {
			    // Pega cada linha retornada e executa os comandos

			      while($row = $result->fetch_assoc()) {
			       ?>
			       		<tr>
			       			<td><?php echo $row['NomeItem'] ?></td>
			       			<td><?php echo $row['IdItem'] ?></td>
			       			<td><?php echo $row['TipoItem'] ?></td>
			       		</tr>
			       <?php
			     }     
			   }else{
			   	echo "Nenhum usuário encontrado com os filtros informados.";
			   }

			mysqli_close($link);
?>