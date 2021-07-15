<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Book Details Page</title>
    <style>
        #contact {
            width: 430px; margin: 60px auto; padding: 60px 30px;
            background:  #f8f9fa; border: 1px solid #e1e1e1;
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
        .btnRegister {
            float: right;
            margin-top: 10%;
            border: none;
            /*//Instead of the line below you could use @include border-radius($radius, $vertical-radius)*/
            border-radius: 1.5rem;
            padding: 2%;
            background: darkred;
            color: darkgreen;
            font-weight: 600;
            width: 50%;
            cursor: pointer;
            color: #f8f9fa;
        }
        .error {
            color: red;
            position: absolute;
            text-align: left;
            margin-left: 30px;
        }
    </style>
</head>
<body>
<div id="contact">
    <h1>Book Details Page</h1>
    <form:form method="post"  modelAttribute="singleBook">
        <table align="center">
            <tr>
                <td><label>BookId </label></td>
                <td>: ${singleBook.bookId}</td>
            </tr>
            <tr></tr>
            <tr>
                <td><label>BookName </label></td>
                <td>: ${singleBook.bookName}</td>
            </tr>
            <tr></tr>
            <tr>
                <td><label>Author </label></td>
                <td>: ${singleBook.author}</td>
            </tr>
            <tr></tr>
            <tr>
                <td><label>Description </label></td>
                <td>: ${singleBook.description}</td>
            </tr>
            <tr></tr>
            <tr>
                <td><label>BookPrice </label></td>
                <td>: ${singleBook.bookPrice}</td>
            </tr>
            <tr></tr>
            <tr>
                <td><label>PublishYear </label></td>
                <td>: ${singleBook.publishYear}</td>
            </tr>
            <tr></tr>
            <tr>
                <td><label>SellerName </label></td>
                <td>: ${singleBook.sellerName}</td>
            </tr>
            <tr></tr>
            <tr>
                <td><label>Sublication </label></td>
                <td>: ${singleBook.publication}</td>

            </tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr align="center">
                <td colspan="2"><input type="submit" class="btnregister" value="Buy Book" /></td>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>
