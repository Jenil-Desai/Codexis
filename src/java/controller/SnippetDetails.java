package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Response;
import services.SnippetServices;

import java.io.IOException;

public class SnippetDetails extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    
        String title = request.getParameter("title");
        String language = request.getParameter("language");
        String description = request.getParameter("des");
        String code = request.getParameter("code");
        String tags = request.getParameter("tag");


        SnippetServices snippetServices = new SnippetServices();
        Response res = snippetServices.saveSnippet(title, language, description, code, tags);

     
        response.setContentType("text/html");
        response.getWriter().println("<h3>" + res.getMessage() + "</h3>");
        
        if (res.isSuccess()) {
            response.sendRedirect("snippet_details.jsp"); // Redirect to success page
        } else {
            response.getWriter().println("<h3>" + res.getMessage() + "</h3>");
        }
    }
}
