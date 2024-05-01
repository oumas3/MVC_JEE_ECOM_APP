<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ajouter au panier</title>
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
        }

        .add-to-cart {
            width: 50%;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .add-to-cart h2 {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <header>
        <h1>Ajouter au panier</h1>
    </header>
    
    <div class="add-to-cart">
    <form action="addCart" method="post"> 
    <input type="hidden" name="numCommande" value="1"> 
    <input type="hidden" name="codeArticle" value="${article.codeArticle}"> 
    Quantité: <input type="text" name="quantite">
    <button type="submit">Ajouter au panier</button>
</form>

    </div>
</body>
</html>
