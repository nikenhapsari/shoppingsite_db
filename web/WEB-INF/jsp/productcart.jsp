<%-- 
    Document   : cart
    Created on : Oct 18, 2017, 8:41:08 AM
    Author     : nikenhapsari
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet"/>
    </head>
    <body>
        <div class="container">
        <h1>Jumlah Belanjaan: ${productcart.size()}</h1>
        <c:forEach items="${productcart}" var="P">
            <p>
                <b>Nama Barang: ${p.namaBarang}</b><br/>
                <b>Detail Barang: ${p.keterangan}</b><br/>
                <b>Harga Barang: ${p.harga}</b><br/>
            </p>
            <a href="productcart/hapus/${p.id}">Hapus</a>
        </c:forEach>
        </div>
    </body>
</html>
