<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Add Book Page</title>
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
        #contact {
            width: 430px; margin: 60px auto; padding: 60px 30px;
            background: #c9d0de; border: 1px solid #e1e1e1;
            -moz-box-shadow: 0px 0px 8px #444;
            -webkit-box-shadow: 0px 0px 8px #444;
        }
        h1 {
            font-size: 35px;
            color: #445668;
            text-transform: uppercase;
            text-align: center;
            margin: 0 0 35px 0;
            text-shadow: 0px 1px 0px #f2f2f2;
        }
        .error {
            color: red;
            position: absolute;
            text-align: left;
            margin-left: 30px;
            margin-top: -12px;
        }
    </style>
</head>
<body>
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
<div id="contact">
    <h1>Add Book Form</h1>
    <form:form method="post" action="saveBook" modelAttribute="bookDto">
        <table align="center">
            <tr>
            <td><label for="bookId">BOOK ID:</label></td>
            <td><form:input type="text" path="bookId" id="bookId" placeholder="Enter your bookId" /></td>
                <td><form:errors path="bookId" cssClass="error"/></td>
            </tr>
            <tr></tr>
            <tr>
                <td><label for="bookName">Book Name:</label></td>
                <td><form:input type="text" path="bookName" id="bookName" placeholder="Enter your bookName" /></td>
                <td><form:errors path="bookName" cssClass="error"/></td>
            </tr>
            <tr></tr>
            <tr>
                <td><label for="author">Book Author:</label></td>
                <td><form:input type="text" path="author" id="author" placeholder="Enter your bookAuthor" /></td>
                <td><form:errors path="author" cssClass="error"/></td>
            </tr>
            <tr></tr>
            <tr>
                <td><label for="description">Book Description:</label></td>
                <td><form:input type="text" path="description" id="description" placeholder="Enter your bookBescription" /></td>
                <td><form:errors path="description" cssClass="error"/></td>
            </tr>
            <tr></tr>
            <tr>
                <td><label for="bookPrice">Book Price:</label></td>
                <td><form:input type="text" path="bookPrice" id="bookPrice" placeholder="Enter your bookPrice" /></td>
                <td><form:errors path="bookPrice" cssClass="error"/></td>
            </tr>
            <tr></tr>
            <tr>
                <td><label for="publishYear">Book PublishYear:</label></td>
                <td><form:input type="date" path="publishYear" id="publishYear" placeholder="Enter your bookPublishYear" /></td>
                <td><form:errors path="publishYear" cssClass="error"/></td>
            </tr>
            <tr></tr>
            <tr>
                <td><label for="sellerName">Book SellerName:</label></td>
                <td><form:input type="text" path="sellerName" id="sellerName" placeholder="Enter your bookSellerName" /></td>
                <td><form:errors path="sellerName" cssClass="error"/></td>
            </tr>
            <tr></tr>
            <tr>
                <td><label for="publication">Book Publication:</label></td>
                <td><form:input type="text" path="publication" id="publication" placeholder="Enter your bookPublication" /></td>
                <td><form:errors path="publication" cssClass="error"/></td>
            </tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr align="center">
            <td colspan="2"><input type="submit" value="Book Submit" /></td>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>
