<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Page</title>
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
        <h1>Admin Page</h1>
    </header>
    
    <div class="table-container">
        <h2>All Users</h2>
        <table>
            <tr>
                <th>User ID</th>
                <th>Email</th>
                <th>Action</th> 
            </tr>
            <sql:setDataSource var="dataSource" driver="com.mysql.jdbc.Driver"
                url="jdbc:mysql://localhost:3306/commerce"
                user="root" password=""/>
            <sql:query var="usersQuery" dataSource="${dataSource}">
                SELECT * FROM clients;
            </sql:query>
            <c:forEach var="user" items="${usersQuery.rows}">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.email}</td>
                    <td>
                        <a href="deleteUser?id=${user.id}">Supprimer</a> 
                      
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
    
    <div class="table-container">
        <h2>All Orders</h2>
        <table>
            <tr>
                <th>Order ID</th>
                <th>User ID</th>
                <th>Date</th>
                <th>Action</th> 
            </tr>
            <sql:query var="ordersQuery" dataSource="${dataSource}">
                SELECT * FROM commandes;
            </sql:query>
            <c:forEach var="order" items="${ordersQuery.rows}">
                <tr>
                    <td>${order.numcommande}</td>
                    <td>${order.codeclient}</td>
                    <td>${order.datecommande}</td>
                    <td>
                        <a href="deleteOrder?orderId=${order.numcommande}">Supprimer</a> 
                        
                    </td>
                    
                </tr>
            </c:forEach>
            
        </table>
        
    </div>
    
</body>
</html>
