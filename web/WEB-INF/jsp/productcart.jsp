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
            <div class="card">
                <div class="card-header text-center">
                    <h2>Jumlah belanjaan: ${productcart.size()}</h2>
                </div>
                <div class="card-body">
                    <div class="row">
                        <c:forEach items="${productcart}" var="p">
                            <div class="col-sm-6">
                                <p>
                                <h4 class="card-title">${p.namaBarang}</h4>
                                <a href="productcart/hapus/${p.id}"class="btn btn-primary">Hapus</a>
                            </div>
                        </c:forEach>
                    </div>
                    </body>
                    </html>
