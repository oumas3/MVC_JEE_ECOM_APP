<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bienvenue chez MOS</title>
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
        <h1>Bienvenue chez MOS</h1>
    </header>
    <div class="container">
        <p>Veillez-vous identifier ou vous inscrire</p>
        <a href="identification.jsp">Déjà client - Identifiez-vous</a>
        <a href="inscription.jsp">Nouveau client - Inscrivez-vous</a>
    </div>
</body>
</html>
