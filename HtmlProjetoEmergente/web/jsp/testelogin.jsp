<%
    request.setCharacterEncoding("UTF-8");
    if (session.getAttribute("Usuario") == null) {
        response.sendRedirect("../index.jsp");
        return;
    }

%>