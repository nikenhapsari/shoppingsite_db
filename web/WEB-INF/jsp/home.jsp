<%-- 
    Document   : home
    Created on : Oct 17, 2017, 11:51:25 AM
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
            <h1>${msg}</h1>
            <a href="productcart" ><h2>Jumlah belanjaan: ${productcart.size()}</h2></a>
            <c:forEach items="${daftarProduk}" var="p">
                <p>
                    ${p.namaBarang}<br/>
                    ${p.harga}<br/>
                    <a href="detail/${p.id}">Lihat Detail</a>
                </p>
            </c:forEach>
        </div>
    </body>
</html>
