<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    .head-block {
        width: 70%;
        margin: 10px auto;
        background-color: #FEF4AB;
        /*background-color: #EBBE6E;*/
    }
    .header-menu a {
        font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
        color: black;
        margin: 20px 10px;
        font-size: large;
        text-decoration: none;
    }
    .header-menu {
        list-style-type: none;
        margin: 0;
        padding: 10px;
    }
    .header-menu li{
        display: inline;
    }
</style>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="head-block">
    <ul class="header-menu">
        <li><a href="${pageContext.request.contextPath}/index">Home</a></li>
        <li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
    </ul>
</div>
</body>
</html>
