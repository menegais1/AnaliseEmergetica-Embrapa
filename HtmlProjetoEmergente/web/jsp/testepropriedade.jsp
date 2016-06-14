<%
if(session.getAttribute("Propriedade_id") == null){
    response.sendRedirect("../index.jsp");
    return;
}

%>