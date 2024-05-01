<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Inscription Utilisateur</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4;
    }

    .container {
        width: 400px;
        margin: 50px auto;
        background-color: #fff;
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        border: 1px solid #ddd;
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
        margin-top: 20px;
    }

    label {
        font-weight: bold;
        margin-bottom: 10px;
        display: block;
    }

    input[type="text"],
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
        background-color:gray;
        color: white;
        padding: 14px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        width: calc(100% - 24px);
        font-size: 16px;
    }
}
    </style>
</head>
<body>
    <header>
        <h1>Inscription Utilisateur</h1>
    </header>
    <div class="container">
        <form action="Register" method="post">
            <label for="email">Adresse Email :</label>
            <input type="email" id="email" name="email" required><br>
            
            <label for="nom">Nom :</label>
            <input type="text" id="nom" name="nom" required><br>
            
            <label for="prenom">Prénom :</label>
            <input type="text" id="prenom" name="prenom" required><br>
            
            <label for="adresse">Adresse :</label>
            <input type="text" id="adresse" name="adresse" required><br>
            
            <label for="ville">Ville :</label>
            <input type="text" id="ville" name="ville" required><br>
            
            <label for="codepostal">Code Postal :</label>
            <input type="text" id="codepostal" name="codepostal" required><br>
            
            <label for="tel">Téléphone :</label>
            <input type="text" id="tel" name="tel" required><br>
            
            <label for="motpasse">Mot de Passe :</label>
            <input type="password" id="motpasse" name="motpasse" required><br>
            
            <button type="submit">S'inscrire</button>
        </form>
    </div>
</body>
</html>
