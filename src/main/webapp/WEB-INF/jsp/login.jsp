<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
	
   <div class="container">
     <form action="/login" method="post">
     
		 <h3>Login</h3>
		 
		 <c:if test="${not empty msg}">
			<div class="alert alert-warning">
			   <strong>Alerta!</strong> ${msg}
			</div>
		 </c:if>
		 <div class="form-group">
			 <label>Email:</label>
			 <input type="email" class="form-control" placeholder="Entre com o e-mail" name="email">
		 </div>
			
		 <div class="form-group">
			 <label>Senha:</label>
			 <input type="password" class="form-control" placeholder="Entre com a senha" name="senha">
		 </div>
			
		 <button type="submit" class="btn btn-primary">Acessar</button>
    </form>
   </div>
</body>
</html>