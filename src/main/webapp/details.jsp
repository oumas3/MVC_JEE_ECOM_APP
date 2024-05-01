<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Détails de l'article</title>
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

        .article-details {
            width: 50%;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .article-details h2 {
            margin-bottom: 10px;
        }

        .article-details p {
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <header>
        <h1>Détails de l'article</h1>
    </header>
    
    <div class="article-details">
    <form action="details" method="get">
        <h2>Article Details</h2>
        <p>Designation: ${article.designation}</p>
        <p>Prix: ${article.prix}</p>
        <p>Stock: ${article.stock}</p>
        <img src="data:image/jpeg;base64,${article.photo}" alt="${article.designation}">
        </form>
    </div>
</body>
</html>
