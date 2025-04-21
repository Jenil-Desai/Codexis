<%
    String userId = (String) session.getAttribute("userId");

    if (userId == null) {
        // User not logged in, redirect to login page
        response.sendRedirect("login.jsp");
        return;
    }
%>
