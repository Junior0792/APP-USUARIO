<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Cadastro</title>
</head>
<body>

    <div class="container">
		   <div>
		    <h3>Cadastrado ${nome} com sucesso!</h3>
		    <a href="/login"><button class="btn btn-primary">Login</button></a>
		   </div>
		   <hr>
	       <c:if test="${not empty usuarioLista}">
		     <h4>Lista de usuario(s) cadastrados!!!(${usuarioLista.size()}):</h4>
		
			 <table class="table table-dark table-striped">
		       <thead>
		         <tr>
		           <th>#</th>
		           <th>Nome</th>
		           <th>E-mail</th>
		         </tr>
		       </thead>
		       <tbody>
		          <c:forEach var="y" items="${usuarioLista}">
		            <tr>
						<td>${y.id}</td>
						<td>${y.nome}</td>
						<td>${y.email}</td>
		            </tr>
		          </c:forEach>
		       </tbody>
		     </table>
		  </c:if>
		
		      
	</div>

</body>
</html>