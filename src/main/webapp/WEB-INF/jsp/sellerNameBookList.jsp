<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<html>
<head>
    <title>Product List Page</title>
    <style>
        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
        }

        .header-wrapper {

        }

        .price-match-guarantee {
            margin-left: 120px;
            margin-top: 6px;
            color: #293991;
            font-size: 28px;
        }

        .price-match-guarantee a {
            text-decoration: none;
            color: #293991;
        }

        .price-match-guarantee a:hover {
            color: #ff5c00;
        }

        .currency div {
            margin-top: 12px;
            margin-left: 19px;
        }

        .header-part-2 {
            display: flex;
            background-color: white;
            margin-top: 0px;
            height: 100px;
        }

        .logo {
            margin-left: 2px;
            margin-top: 4px;
            width: 30px;
            height: 5px;
        }

        .search-bar input {
            height: 35px;
            width: 380px;
            margin-top: 28px;
            margin-left: 170px;
            border-top-left-radius: 3px;
            border-bottom-left-radius: 3px;
        }

        .search-button i {
            margin-top: 12px;
            margin-left: 19px;
        }

        .navbar {
            border: 2px white solid;
            height: 60px;
            width: 100%;
            background-color: #293991;
        }


        .navbar-link-holder {
            margin-top: 18px;
            text-align: center;
        }

        .navbar-link-holder a {
            text-decoration: none;
            padding: 20px;
            color: white;
        }

        .navbar-link-holder a:hover {
            background-color: #ed1c24;
        }

        .banners img {
            float: left;
            margin-top: 10px;
        }

        .header-part-1-phone a {
            text-decoration: none;
            color: black;
        }

        .header-part-1-lock a {
            text-decoration: none;
            color: black;
        }

        .header-part-1-user a {
            text-decoration: none;
            color: black;
        }

        .header-part-1-phone a:hover {
            color: #ff5c00;

        }

        .header-part-1-lock a:hover {
            color: #ff5c00;
        }

        .header-part-1-user a:hover {
            color: #ff5c00;
        }

        h5 {
            margin-left: 640px;
        }

        .dropdown .dropbtn {
            font-size: 16px;
            border: none;
            outline: none;
            color: red;
            padding: 14px 16px;
            background-color: inherit;
            font-family: inherit;
            margin: 0;
            margin-top: 25px;
        }

        .dropdown-content a {
            float: none;
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
        }

        .dropdown-content a:hover {
            background-color: #ddd;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        #backToSchool {
            height: 50px;
            float: right;
            margin-right: 20px;
            margin-left: 550px;
            margin-top: 28px;
        }
        h1 {
            font-size: 35px;
            color: #445668;
            text-transform: uppercase;
            text-align: center;
            margin: 0 0 35px 0;
            text-shadow: 0px 1px 0px #f2f2f2;
        }
    </style>
</head>
<body align="center">
<%-- header Page --%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<header class="header-wrapper">
    <div class="header-part-2">
        <%--   logo     --%>
        <div class="logo"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHvMmB6eucEBEpPeMkHUb3ihzl-jYIZxNFRg&usqp=CAU" style="width:145px;height:101px"></div>
        <%--  website name spider book store    --%>
        <div class="price-match-guarantee"><a href=#><strong><p style="margin-top: 30px">Spider Book Store</p></strong></a></div>
        <img id='backToSchool' src="http://blog.neurogistics.com/wp-content/uploads/2014/08/Back-To-School-Special-Banner.jpg" alt=""/>
</header>

<%-- navigation bar --%>
<c:url value="/bookHome" var="home"/>
<div class="navbar">
    <div class="navbar-link-holder">
        <a href="${home}">HOME</a>
        <a href="addBook" style="margin-left: 55px">ADD BOOK</a>
        <a href="allBooksData" style="margin-left: 130px">ALL BOOKS LIST</a>
        <a href="getAllBooksDataInJson"style="margin-left: 80px">GET ALL BOOKS TO JSON</a>
        <a href="convertObjectTOXml" style="margin-left: 80px">ALL BOOKS XML DATA</a>
    </div>
</div>
<h1>Seller BOOKS LIST</h1>
<table border="2" width="70%" cellpadding="2" align="center">
    <tr>
        <th>BookId</th>
        <th>BookName</th>
        <th>Author</th>
        <th>Description</th>
        <th>Book Price</th>
        <th>Publish Year</th>
        <th>SellerName</th>
        <th>Publication</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="book" items="${getSellerNameBookList}">
        <tr>
            <td><a href="getSingleBook/${book.bookId}">${book.bookId}</a></td>
            <td><a href="getSingleBook/${book.bookId}"> ${book.bookName}</a></td>
            <td>${book.author}</td>
            <td>${book.description}</td>
            <td>${book.bookPrice}</td>
            <td>${book.publishYear}</td>
            <td>${book.sellerName}</td>
            <td>${book.publication}</td>
            <td>
                <c:url value="/updateBook/${book.bookId}" var="Edit"></c:url>
                <a href="${Edit}"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk3EDu6CGdmXjNnR0FBeDB5c8MK4MwiWpbQw&usqp=CAU" style="height:30px;width:50px"></a>
            </td>
            <td><a href="deleteBook/${book.bookId}"><img src="data:image/jpeg;base64,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" style="width:50px;height:30px"></a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
