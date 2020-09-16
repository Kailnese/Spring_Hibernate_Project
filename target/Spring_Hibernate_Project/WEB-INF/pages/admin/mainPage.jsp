<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/7
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title></title>
    <script src="../jquery/jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" href="../css/mainPage.css">
</head>
<body>
<div class="mainBody">
    <div class="top_Bar">
        <div class="exist">
            <div class="container">
                <button type="button" class="log_out">Logout</button>
            </div>
        </div>
    </div>
    <div class="left_Bar">
        <div class="left_buttons">
            <form action="../admin/getCustomerList" method="get">
                <button type="submit" class="button"><span>Get Customer List</span><br></button>
            </form>
            <button type="button" class="button"><span>TBC</span><br></button>
            <button type="button" class="button"><span>TBC</span><br></button>
            <button type="button" class="button"><span>TBC</span><br></button>
            <form action="../admin/directToLearning" method="post">
                <button type="submit" class="button"><span>To Learning Area</span><br></button>
            </form>

        </div>
    </div>
    <div class="content_box">
        <div class="content">
            <table class="retrieve">
                <tr style="outline: solid">
                    <th>Customer ID</td>
                    <th>Customer Name</td>
                    <th>Customer Password</td>
                    <th>Customer E-mail</td>
                    <th>Customer Phone</tr>
                </tr>
                <c:forEach items="${customers}" var="customer">
                    <tr style="text-align: center">
                        <td><c:out value="${customer.id}"/></td>
                        <td><c:out value="${customer.username}"/></td>
                        <td><c:out value="${customer.password}"/> </td>
                        <td><c:out value="${customer.email}"/></td>
                        <td><c:out value="${customer.phone}"/></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
</html>
