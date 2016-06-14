<%
if(session.getAttribute("Passos") == null){
    response.sendRedirect("../index.jsp");
    return;
}

%>