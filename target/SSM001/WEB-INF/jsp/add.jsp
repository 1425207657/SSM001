<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/27
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>新增客户</h1>
<form:form method="post" modelAttribute="customer" action="/CustomerController/doAdd">
    <div style="margin: 10px">
        <input type="submit" value="保存">
        <input type="reset" value="重置">
    </div>

    <table border="1">
        <tr>
            <td>客户名称：</td>
            <td><form:input path="customerName"/></td>
        </tr>
        <tr>
            <td>客户信息来源：</td>
            <td>
                <form:select path="customerSourse">
                    <form:option value="">请选择</form:option>
                    <form:option value="A">电话营销</form:option>
                    <form:option value="B">网络营销</form:option>
                </form:select>
            </td>
        </tr>
        <tr>
            <td>客户所属行业</td>
            <td>
                <form:select path="customerIndustry">
                    <form:option value="">请选择</form:option>
                    <form:option value="1000">教育培训</form:option>
                    <form:option value="1001">电子商务</form:option>
                    <form:option value="1002">对外贸易</form:option>
                    <form:option value="1003">酒店旅游</form:option>
                    <form:option value="1004">房地产</form:option>
                </form:select>
            </td>
        </tr>
        <tr>
            <td>客户固定电话：</td>
            <td><form:input path="stringcustomerPhone"></form:input></td>
        </tr>
        <tr>
            <td>客户地址：</td>
            <td><form:input path="customerAddress"></form:input></td>
        </tr>
    </table>
</form:form>
</body>
</html>
