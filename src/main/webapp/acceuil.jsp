<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="beans.Client" %> 

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Page d'accueil</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
        }

        h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        .container {
            width: 600px;
            margin: 50px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border: 1px solid #ddd;
        }

        p {
            font-size: 18px;
            margin-bottom: 20px;
        }

        a {
            display: block;
            margin-bottom: 10px;
            padding: 10px 20px;
            background-color: gray;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }

        a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <header>
        <h1>Bienvenue sur notre site</h1>
    </header>
    <div class="container">
        <p>
            <c:if test="${not empty userName}">
                Bonjour, ${userName}
            </c:if>
        </p>
        <a href="catalogue.jsp">Consulter le catalogue</a>
        <a href="#">Suivre vos commandes</a>
        <a href="#">Visualiser votre panier</a>
    </div>
</body>
</html>
