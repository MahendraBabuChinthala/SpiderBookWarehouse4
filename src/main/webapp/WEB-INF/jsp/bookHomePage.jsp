<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<html>
<head>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>SPIDER BOOKS STORE</title>
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
            background-color: #13afc1;
        }


        .navbar-link-holder {
            margin-top: 0px;
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

        .banners {
            border: 1px white solid;
            width: 100%;
            height: 60px;
            display: flex;
            margin-top: 10px;
        }

        .banner1 {
            border: 1px white solid;
            margin-top: 7px;
            margin-left: 240px;
        }

        .banners img {
            float: left;
            margin-top: 10px;
        }

        .vertical-line-small-2 {
            border-left: 2px grey solid;
            margin-left: 50px;
            margin-right: 50px;
            margin-top: 10px;
            margin-bottom: 10px;
        }

        .banner2 {
            border: 1px white solid;
            margin-top: 7px;
        }

        .banner3 {
            border: 1px white solid;
            margin-top: 7px;
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
            margin-left: 700px;
            margin-top: 28px;
        }
        /*footer*/
        @import url(https://fonts.googleapis.com/css?family=Open+Sans:400,500,300,700);

        * {
            font-family: Open Sans;
        }

        section {
            width: 100%;
            display: inline-block;
            background: #333;
            height: 50vh;
            text-align: center;
            font-size: 22px;
            font-weight: 700;
            text-decoration: underline;
        }

        .footer-distributed{
            background: #666;
            box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.12);
            box-sizing: border-box;
            width: 100%;
            text-align: left;
            font: bold 16px sans-serif;
            padding: 55px 50px;
            height: 260px;
            margin-top: 70px;
        }

        .footer-distributed .footer-left,
        .footer-distributed .footer-center,
        .footer-distributed .footer-right{
            display: inline-block;
            vertical-align: top;
        }

        /*   / Footer left /*/

        .footer-distributed .footer-left{
            width: 40%;
        }

        /* / The company logo /*/

        .footer-distributed h3{
            color: #ffffff;
            font: normal 36px 'Open Sans', cursive;
            margin: 0;
        }

        .footer-distributed h3 span{
            color: lightseagreen;
        }

        /*     / Footer links /*/

        .footer-distributed .footer-links{
            color: #ffffff;
            margin: 20px 0 12px;
            padding: 0;
        }

        .footer-distributed .footer-links a{
            display:inline-block;
            line-height: 1.8;
            font-weight:400;
            text-decoration: none;
            color: inherit;
        }

        .footer-distributed .footer-company-name{
            color: #222;
            font-size: 14px;
            font-weight: normal;
            margin: 0;
        }

        /*   / Footer Center /*/

        .footer-distributed .footer-center{
            width: 35%;
        }

        .footer-distributed .footer-center i{
            background-color: #33383b;
            color: #ffffff;
            font-size: 25px;
            width: 38px;
            height: 38px;
            border-radius: 50%;
            text-align: center;
            line-height: 42px;
            margin: 10px 15px;
            vertical-align: middle;
        }

        .footer-distributed .footer-center i.fa-envelope{
            font-size: 17px;
            line-height: 38px;
        }

        .footer-distributed .footer-center p{
            display: inline-block;
            color: #ffffff;
            font-weight:400;
            vertical-align: middle;
            margin:0;
        }

        .footer-distributed .footer-center p span{
            display:block;
            font-weight: normal;
            font-size:14px;
            line-height:2;
        }

        .footer-distributed .footer-center p a{
            color: lightseagreen;
            text-decoration: none;;
        }

        .footer-distributed .footer-links a:before {
            content: "|";
            font-weight:300;
            font-size: 20px;
            left: 0;
            color: #fff;
            display: inline-block;
            padding-right: 5px;
        }

        .footer-distributed .footer-links .link-1:before {
            content: none;
        }

        /*   / Footer Right /*/

        .footer-distributed .footer-right{
            width: 20%;
        }

        .footer-distributed .footer-company-about{
            line-height: 20px;
            color: #92999f;
            font-size: 13px;
            font-weight: normal;
            margin: 0;
        }

        .footer-distributed .footer-company-about span{
            display: block;
            color: #ffffff;
            font-size: 14px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .footer-distributed .footer-icons{
            margin-top: 25px;
        }

        .footer-distributed .footer-icons a{
            display: inline-block;
            width: 35px;
            height: 35px;
            cursor: pointer;
            background-color: #33383b;
            border-radius: 2px;

            font-size: 20px;
            color: #ffffff;
            text-align: center;
            line-height: 35px;

            margin-right: 3px;
            margin-bottom: 5px;
        }
        h1 {
            font-size: 35px;
            color: #ffb20e;
            text-transform: uppercase;
            text-align: center;
            margin: 0 0 35px 0;
            text-shadow: 0px 1px 0px #f2f2f2;
        }
        h2 {
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

<div class="navbar">
    <div class="navbar-link-holder">
        <a href="addBook" style="margin-left: 55px">ADD BOOK</a>
        <a href="allBooksData" style="margin-left: 130px">ALL BOOKS LIST</a>
        <a href="getAllBooksDataInJson"style="margin-left: 80px">GET ALL BOOKS TO JSON</a>
        <a href="convertObjectTOXml" style="margin-left: 80px">ALL BOOKS XML DATA</a>
    </div>
</div>

<div class="banners">
    <div class="banner1">
        <img src="https://cdn2.bigcommerce.com/server300/3954e/product_images/uploaded_images/truck.png">&nbsp;
        <strong>FREE DELIVERY*</strong><br>&nbsp;&nbsp;with coupon
    </div>
    <div class="vertical-line-small-2"></div>
    <div class="banner2">
        <img src="https://cdn2.bigcommerce.com/server300/3954e/product_images/uploaded_images/price-match.png">&nbsp;
        <strong>PRICE MATCH</strong><br>&nbsp;&nbsp;Guarantee
    </div>
    <div class="vertical-line-small-2"></div>
    <div class="banner3">
        <img src="https://cdn2.bigcommerce.com/server300/3954e/product_images/uploaded_images/dispatch.png">&nbsp;
        <strong>SAME DAY DISPATCH</strong><br>&nbsp;&nbsp;before 1pm (Mon-Fri)
    </div>
    <div class="vertical-line-small-2"></div>
    <div class="banner3">
        <img src="https://cdn2.bigcommerce.com/server300/3954e/product_images/uploaded_images/easy-return.png">&nbsp;
        <strong>EASY RETURN</strong><br>&nbsp;&nbsp;Policy
    </div>
</div>
<div></div>
<table>
    <tr>
        <td colspan="2"><img
                src="https://s3-ap-southeast-1.amazonaws.com/filehost.sapnaonline.com/widgets/1607947177081_store67-single-art-craft.jpg"
                style="width:110%;height:90px;margin-top: 30px"></td>
    </tr>
</table>
<br>
<%-- slider Show 2--%>
<div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
        <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="https://s3-ap-southeast-1.amazonaws.com/filehost.sapnaonline.com/widgets/1616413873522_spotlight-food.webp" class=" w-100 " alt="Error loading image">
            <div class="carousel-caption d-none d-md-block">
            </div>
        </div>
        <div class="carousel-item">
            <img src="https://s3-ap-southeast-1.amazonaws.com/filehost.sapnaonline.com/widgets/1616413917113_spotlight-gopichand.webp" class=" w-100 " alt="Error loading image">
            <div class="carousel-caption d-none d-md-block">
                <%--                <h3>Elegance & luxurious appeal with highest quality of materiel!</h3>--%>
            </div>
        </div>
        <div class="carousel-item">
            <img src="https://s3-ap-southeast-1.amazonaws.com/filehost.sapnaonline.com/widgets/1616413959182_spotlight-karunanidhi.webp" class="d-block w-100" alt="Error loading image">
            <div class="carousel-caption d-none d-md-block">
                <%--                <h3>Collaboration with most trustful manufacturers!</h3>--%>
            </div>
        </div>
        <div class="carousel-item">
            <img src="https://s3-ap-southeast-1.amazonaws.com/filehost.sapnaonline.com/widgets/1617194664787_spotlight-everything.webp" class="d-block w-100" alt="Error loading image">
            <div class="carousel-caption d-none d-md-block">
                <%--                <h3>Collaboration with most trustful manufacturers!</h3>--%>
            </div>
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
            integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
            integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
            integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
            crossorigin="anonymous"></script>
</div>
<br>
<%-- footer --%>
<footer class="footer-distributed">
    <c:url value="/bookHome" var="home"/>
    <c:url value="/spiderBookStoreAboutUs" var="about"/>
    <div class="footer-left">
        <h3>Spider Book<span> Store</span></h3>
        <p class="footer-links">
            <a href="${home}" class="link-1">Home</a>
            <a href="${about}">About</a>
            <a href="#">Contact</a>
        </p>
        <p class="footer-company-name">Spider Book Store © 2015</p>
    </div>

    <div class="footer-center">
        <div>
            <i class="fa fa-map-marker"></i>
            <p><span>#8-3-973/1. Hyderabad</span> Telangana, India</p>
        </div>
        <div>
            <i class="fa fa-phone"></i>
            <p>+1.555.555.5555</p>
        </div>
        <div>
            <i class="fa fa-envelope"></i>
            <p><a href="mailto:support@company.com">spiderbookstore@shopping.com</a></p>
        </div>
    </div>

    <div class="footer-right">
        <p class="footer-company-about">
            <span>About the company</span>
            Lorem ipsum dolor sit amet, consectateur adispicing elit. Fusce euismod convallis velit, eu auctor lacus
            vehicula sit amet.</p>
        <div class="footer-icons">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-github"></i></a>
        </div>
    </div>
</footer>
</body>
</html>
