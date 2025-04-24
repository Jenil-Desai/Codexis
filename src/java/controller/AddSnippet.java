package controller;

import common.Session;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.Response;
import services.SnippetServices;

import java.io.IOException;

public class AddSnippet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        boolean isLoggedIn = Session.isLoggedIn(session);
        
        if (!isLoggedIn) {
            request.setAttribute("errorMessage","Unauthorized");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }
    
        String title = request.getParameter("title");
        String language = request.getParameter("language");
        String description = request.getParameter("des");
        String code = request.getParameter("code");
        String tags = request.getParameter("tag");
        String userId = Session.getUserId(session);

        SnippetServices snippetServices = new SnippetServices();
        Response result = snippetServices.saveSnippet(title, language, description, code, tags,userId);
        
        if (!result.isSuccess()) {
            request.setAttribute("errorMessage", result.getMessage());
            request.getRequestDispatcher("addSnippet.jsp").forward(request, response);
            return;
        }
        
        response.sendRedirect("dashboard.jsp");
    }
}
