<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Identifiez-vous</title>
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
            border-top-left-radius: 8px;
            border-top-right-radius: 8px;
        }

        h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        form {
            margin: 50px auto;
            width: 300px;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border: 1px solid #ddd;
        }

        label {
            font-weight: bold;
            margin-bottom: 10px;
            display: block;
        }

        input[type="email"],
        input[type="password"] {
            width: calc(100% - 24px);
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 20px;
            box-sizing: border-box;
            font-size: 16px;
        }

        button {
            background-color: gray;
            color: white;
            padding: 14px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: calc(100% - 24px);
            font-size: 16px;
        }

       
    </style>
</head>
<body>
    <header>
        <h1>Identifiez-vous</h1>
    </header>
    <form action="login" method="post">
        <label for="email">Adresse Email :</label>
        <input type="email" id="email" name="email" required><br>
        
        <label for="motpasse">Mot de Passe :</label>
        <input type="password" id="motpasse" name="motpasse" required><br>
        
        <button type="submit">Se Connecter</button>
    </form>
</body>
</html>
