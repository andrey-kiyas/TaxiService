<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>
  .error-message {
    font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
    color: red;
    display: flex;
    justify-content:center;
    align-items: center;
  }
  .register-button {
    font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
    color: black;
    text-decoration: none;
  }
</style>
<html>
<head>
  <title>Login page</title>
</head>
<body>
<form method="post" id="login" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Login</h1>
<table border="1" class="table_dark">
  <tr>
    <th>Login</th>
    <th>Password</th>
    <th></th>
  </tr>
  <tr>
    <td>
      <input type="text" name="login" form="login" required>
    </td>
    <td>
      <input type="password" name="password" form="login" required>
    </td>
    <td>
      <input type="submit" name="login" form="login">
    </td>
  </tr>
  <tr>
    <td colspan="3">
      <a class="register-button" href="${pageContext.request.contextPath}/drivers/add">Register</a>
      <h4 style="color: red">${errorMsg}</h4>
    </td>
  </tr>
</table>
</body>
</html>
