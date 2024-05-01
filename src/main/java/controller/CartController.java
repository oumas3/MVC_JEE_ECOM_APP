package controller;

import java.io.IOException;

import DAO.ArticleCommandeDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CartController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String articleId = request.getParameter("codeArticle");
	    String quantity = request.getParameter("quantite");
	    if (articleId != null && !articleId.isEmpty()) {
	        try {
	            int codeArticle = Integer.parseInt(articleId);
	            int quantite = Integer.parseInt(quantity);

	            int numCommande = 1;

	            boolean success = ArticleCommandeDAO.ajouterArticleCommande(numCommande, codeArticle, quantite);
	            
	            if (success) {
	                response.sendRedirect("success.jsp");
	            } else {
	                response.sendRedirect("error.jsp");
	            }
	        } catch (NumberFormatException e) {
	            e.printStackTrace(); 
	        }
	    } 
	}


}
