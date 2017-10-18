<%-- 
    Document   : detail
    Created on : Oct 17, 2017, 1:11:47 PM
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
                    <h1>Detail ${p.namaBarang}</h1>
                </div>
                <div class="card-body">
                    <b>Nama Barang: ${p.namaBarang}</b><br/>
                    <b>Detail Barang: ${p.keterangan}</b><br/>
                    <b>Harga Barang: ${p.harga}</b><br/>
                    <a href="tambahkan" class="btn btn-primary">Tambah ke Keranjang</a>
                    <a href="../home">Kembali</a>
                </div>
            </div>
        </div>
    </body>
</html>
