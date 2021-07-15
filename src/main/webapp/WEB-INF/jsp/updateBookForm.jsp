<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Update Book Form</title>
    <style>
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
    </style>
</head>
<body>
<div id="contact">
    <h1>UPDATE BOOK FORM</h1>
    <c:url value="/bookSave" var="bookSave"/>
    <form:form method="post" action="${bookSave}" modelAttribute="bookDto">
        <table align="center">
            <tr>
            <%--<td><label for="bookId">BOOK ID:</label></td>--%>
                <td><form:hidden path="bookId"/></td>
            </tr>
            <tr></tr>
            <tr>
                <td><label for="bookName">Book Name:</label></td>
                <td><form:input type="text" path="bookName" id="bookName" placeholder="Enter your bookName" /></td>
            </tr>
            <tr></tr>
            <tr>
                <td><label for="author">Book Author:</label></td>
                <td><form:input type="text" path="author" id="author" placeholder="Enter your bookAuthor" /></td>
            </tr>
            <tr></tr>
            <tr>
                <td><label for="description">Book Description:</label></td>
                <td><form:input type="text" path="description" id="description" placeholder="Enter your bookBescription" /></td>
            </tr>
            <tr></tr>
            <tr>
                <td><label for="bookPrice">Book Price:</label></td>
                <td><form:input type="text" path="bookPrice" id="bookPrice" placeholder="Enter your bookPrice" /></td>
            </tr>
            <tr></tr>
            <tr>
                <td><label for="publishYear">Book PublishYear:</label></td>
                <td><form:input type="date" path="publishYear" id="publishYear" placeholder="Enter your bookPublishYear" /></td>
            </tr>
            <tr></tr>
            <tr>
                <td><label for="sellerName">Book SellerName:</label></td>
                <td><form:input type="text" path="sellerName" id="sellerName" placeholder="Enter your bookSellerName" /></td>
            </tr>
            <tr></tr>
            <tr>
                <td><label for="publication">Book Publication:</label></td>
                <td><form:input type="text" path="publication" id="publication" placeholder="Enter your bookPublication" /></td>
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
