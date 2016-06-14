<%
if(session.getAttribute("Ano") == null){
    response.sendRedirect("../index.jsp");
    return;
}

%>