<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Catalogue</title>
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

        h1, h2 {
            font-size: 24px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
            font-weight: normal;
        }

        tr:hover {
            background-color: #f2f2f2;
        }

        td img {
            width: 100px;
        }

        td a {
            display: inline-block;
            margin-right: 10px;
            padding: 8px 12px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }

        td a:hover {
            background-color: #45a049;
        }

        select {
            padding: 8px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        button {
            padding: 8px 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <header>
        <h1>Catalogue</h1>
    </header>
    
    <form action="CatalogueController" method="get">
        <label for="category">Select Category:</label>
        <select name="categoryId" id="category">
            <c:forEach var="category" items="${categories}">
                <option value="${category.cat}">${category.refCat}</option>
            </c:forEach>
        </select>
        <button type="submit">Submit</button>
    </form>
    
    <table id="articleTable">
        <thead>
            <tr>
                <th>Designation</th>
                <th>Prix</th>
                <th>Stock</th>
                <th>Image</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="article" items="${articles}">
                <tr>
                    <td>${article.designation}</td>
                    <td>${article.prix}€</td>
                    <td>${article.stock}</td>
                   <td><img src="data:image/jpeg;base64,${article.photo}" alt="${article.designation}"></td>
                    <td>
                        <a href="details.jsp?codearticle=${article.codeArticle}">Détails</a>
                        <a href="addCart.jsp?codearticle=${article.codeArticle}">Ajouter au panier</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
