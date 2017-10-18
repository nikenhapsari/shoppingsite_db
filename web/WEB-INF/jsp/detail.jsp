<%-- 
    Document   : detail
    Created on : Oct 17, 2017, 1:11:47 PM
    Author     : nikenhapsari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <b>Nama Barang: ${p.namaBarang}</b><br/>
        <b>Detail Barang: ${p.keterangan}</b><br/>
        <b>Harga Barang: ${p.harga}</b><br/>
        <a href="tambahkan"><button name="tambah" value="submit">Tambah ke Keranjang</button></a>
        <a href="home"><button name="tambah" >Kembali</button></a>
    </body>
</html>
