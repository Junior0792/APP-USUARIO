
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Cadastro</title>
</head>
<body>
<div class="container">

    <form action="/index" method="post">
    
    	<h3>Cadastro de usuário</h3>
    
        <div class="form-group">
            <label>Nome:</label>
            <input type="text" class="form-control" placeholder="Digite seu nome" name="nome">
        </div>

        <div class="form-group">
            <label>Email:</label>
            <input type="email" class="form-control" placeholder="Digite seu email" name="email">
        </div>

        <div class="form-group">
            <label>Senha:</label>
            <input type="password" class="form-control" placeholder="Digite sua senha" name="senha">
        </div>

        <input type="submit" value="Cadastrar" class="btn btn-primary">
    </form>



</body>
</html>