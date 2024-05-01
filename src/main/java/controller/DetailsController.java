package controller;

import java.io.IOException;

import DAO.ArticleDAO;
import beans.Article;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DetailsController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String articleId = request.getParameter("codearticle");
        
        if (articleId != null && !articleId.isEmpty()) {
            Article article = ArticleDAO.getArticleById(Integer.parseInt(articleId));
            
            if (article != null) {
                request.setAttribute("article", article);
                request.getRequestDispatcher("/details.jsp").forward(request, response);
            } else {
                response.sendRedirect("error.jsp");
            }
        } else {
            response.sendRedirect("error.jsp");
        }
    }
}
