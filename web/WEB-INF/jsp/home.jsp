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
            <div class="card">
                <div class="card-header text-center">
                    <h1>${msg}</h1>
                    <a href="productcart" ><h2>Jumlah belanjaan: ${productcart.size()}</h2></a>
                </div>
                <div class="card-body">
                    <div class="row">
                        <c:forEach items="${daftarProduk}" var="p">
                            <div class="col-sm-6">
                                <p>
                                <h4 class="card-title">${p.namaBarang}</h4>
                                <p class="card-text">${p.harga}</p>
                                <a href="detail/${p.id}" class="btn btn-primary">Lihat Detail</a>
                                </p>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
