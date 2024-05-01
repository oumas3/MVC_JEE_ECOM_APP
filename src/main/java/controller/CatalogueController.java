package controller;

import java.io.IOException;
import java.util.List;

import DAO.ArticleDAO;
import DAO.CategoryDAO;
import beans.Article;
import beans.Categorie;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CatalogueController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        List<Categorie> categories = CategoryDAO.getAllCategories();
        request.setAttribute("categories", categories);
        
        String categoryId = request.getParameter("categoryId");
        
        if (categoryId != null && !categoryId.isEmpty()) {
            List<Article> articles = ArticleDAO.getArticlesByCategory(Integer.parseInt(categoryId));
            request.setAttribute("articles", articles);
        }
        
        request.getRequestDispatcher("/catalogue.jsp").forward(request, response);
    }
}

