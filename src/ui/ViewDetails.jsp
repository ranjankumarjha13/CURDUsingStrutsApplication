<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 05-12-2018
  Time: 13:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="FocusTag" uri="/tlds/fcomps" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <style>
    </style>
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h1 style="color: cornflowerblue">Employee Details</h1>
    <table class="table" align="center">
        <thead>
        <tr>
            <th>Name</th>
            <th>Mobile</th>
            <th>Email</th>
            <th>Address</th>
            <th>Zipcode</th>
            <th style="color: #000FF0;font-size: 14px;">Actions</th>
        </tr>
        </thead>
<c:forEach items="${data}" var="v">
        <tbody>
        <tr id="tr${v.name}">
            <td>${v.name}</td>
            <td>${v.mobile}</td>
            <td>${v.email}</td>
            <td>${v.address}</td>
            <td>${v.zipcode}</td>
            <td><a href="#" onclick="Clview.edit('${v.name}')" class="fa fa-edit">Edit</a></td>
            <td><a href="#" onclick="Clview.deleteEmp('${v.name}')" class="fa fa-edit">Delete</a></td>
        </tr>
        </tbody>
    </c:forEach>
    </table>
    <div id="dvEditView">
    </div>
    <div id="dvupdate">
    </div>
</div>
</body>
<script src="res/scripts/myscript/index.js"></script>
<script src="res/scripts/myscript/ajax.js"></script>
<script src="res/scripts/myscript/viewdetails.js"></script>
<script src="res/scripts/validate.js"> </script>
<script src="res/scripts/CallDetails.js" ></script>
<script src="res/scripts/app.js" ></script>
<script src="res/scripts/ActionBar.js"> </script>
<script src="res/scripts/button.js"> </script>
<script src="res/scripts/combobox.js"></script>
<script src="res/scripts/CrossBrowser.js"> </script>
<script src="res/scripts/calendar.js"> </script>
<script src="res/scripts/calendar-en.js"> </script>
<script src="res/scripts/calendar-setup.js"> </script>
<script src="res/scripts/connect.js" ></script>
<script src="res/scripts/constants.js" ></script>
<script src="res/scripts/dialog.js" ></script>
<script src="res/scripts/dialogbox.js" ></script>
<script src="res/scripts/table.js"> </script>
<script src="res/scripts/tabmenu.js"> </script>
<script src="res/scripts/Taskpane.js"> </script>
<script src="res/scripts/tabpane.js"> </script>
<script src="res/scripts/Message.js"> </script>
<script src="res/scripts/uploadbar.js"> </script>
<script src="res/scripts/utilities.js"> </script>
<script src="res/scripts/validation.js"> </script>
<script src="res/scripts/jquery-2.0.3.js"></script>
</html>
