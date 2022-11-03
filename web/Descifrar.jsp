<%-- 
    Document   : Log-invitado
    Created on : 29/05/2022, 04:29:16 PM
    Author     : M3R-00
--%>

<%@page import="java.math.BigInteger"%>
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
            BigInteger n=new BigInteger(request.getParameter("primesProduct"));
            BigInteger d=new BigInteger(request.getParameter("privateKey"));
            String textoCifrado=request.getParameter("text");
            rsacoder obj=new rsacoder();
            String textoDecodificado=obj.decrypt(d, textoCifrado, n);
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
                    <a class="nav-link" href="./index.html">Cifrar</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="./descifrar.html">Descifrar</a>
                </li>
            </ul>
            <br>
            <h1>Informacion del Descifrado</h1>
            <hr>
            <div class="card">
                <div class="card-body">
                    <p>Texto Codificado (C): <%=textoCifrado%></p>
                    <p>Texto Decodificado (M): <%=textoDecodificado%></p>
                </div>
            </div>
        </div>
    </body>
</html>

