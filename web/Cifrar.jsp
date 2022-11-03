<%-- 
    Document   : Log-invitado
    Created on : 29/05/2022, 04:29:16 PM
    Author     : M3R-00
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="code.rsacoder"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
        <title>SIMAP</title>
    </head>
    <body>
        <%
            int p=Integer.parseInt(request.getParameter("prime-p"));
            int q=Integer.parseInt(request.getParameter("prime-q"));
            rsacoder obj=new rsacoder(p,q);
            String texto=request.getParameter("text");
            String txtCoded=obj.encrypt(texto);
        %>
        
        <div class="container-fluid p-5 bg-primary text-white text-center">
            <h1>Cifrado RSA</h1>
            <p>Realizo Sanchez Catarino Edgar</p>
            <a href="./index.html" style="color:white;">Regresar a principal</a>
        </div>
        <br>
        <div class="container mt-3">
            <ul class="nav nav-tabs nav-justified">
                <li class="nav-item">
                    <a class="nav-link active" href="./index.html">Cifrar</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./descifrar.html">Descifrar</a>
                </li>
            </ul>
            <br>
            <h1>Informacion del Cifrado</h1>
            <p>Es importante que no olvides los datos remarcados pues los necesitaras para descifrar.</p>
            <hr>
            <div class="card">
                <div class="card-body">
                    <p>P: <%=p%></p>
                    <p>Q: <%=q%></p>
                    <p><strong>Producto de primos (N): <%=obj.getN()%></strong></p>
                    <p>Fi f(N): <%=obj.getFi()%></p>
                    <p>Llave publica (e): <%=obj.getPublicKey()%></p>
                    <p><strong>Llave privada (d): <%=obj.getPrivateKey()%></strong></p>
                    <p>Texto a cifrar (M): <%=texto%></p>
                    <p><strong>Texto cifrado (C=M<sup>e</sup>mod(N)): <i><%=txtCoded%></i></strong></p>
                </div>
            </div>
        </div>
    </body>
</html>
