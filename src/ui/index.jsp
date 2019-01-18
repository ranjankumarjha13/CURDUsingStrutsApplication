<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 05-12-2018
  Time: 12:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="FocusTags" uri="/tlds/fcomps"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="clTagConstants" class="tags.CLTagConstants"/>
<html>
<head>
    <style>
    </style>
    <title></title>
    <link href="res/global/styles/home.css" rel="stylesheet" type="text/css">
    <link href="res/global/styles/App.css" rel="stylesheet" type="text/css">
    <link href="res/global/styles/ActionBar.css" rel="stylesheet" type="text/css">
    <link href="res/global/styles/BoxView.css" rel="stylesheet" type="text/css">
    <link href="res/global/styles/Button.css" rel="stylesheet" type="text/css">
    <link href="res/global/styles/ButtonPane.css" rel="stylesheet" type="text/css">
    <link href="res/global/styles/Calendar.css" rel="stylesheet" type="text/css">
    <link href="res/global/styles/Dialog.css" rel="stylesheet" type="text/css">
    <link href="res/global/styles/DropdownList.css" rel="stylesheet" type="text/css">
    <link href="res/global/styles/Table.css" rel="stylesheet" type="text/css">
    <link href="res/global/styles/Tabpane.css" rel="stylesheet" type="text/css">
    <link href="res/global/styles/Time.css" rel="stylesheet" type="text/css">
    <link href="res/global/styles/tabmenu.css" rel="stylesheet" type="text/css">
    <link href="res/global/styles/Uploadbar.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous"
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<h2 align="center" style="font-family: bold">Welcome to Struts CURD Operation</h2>
<div align="center">
      <a href="addForm!getAddDetails.do">AddDetails</a>
      <a href="viewData!viewDetails.do">ViewDetails</a>
    <a href="#" onclick="ClTablejs.createRow()">CreteRow</a>
</div>
</body>
<script src="res/scripts/myscript/index.js"></script>
<script src="res/scripts/myscript/ajax.js"></script>
<script src="res/scripts/myscript/tableoperation.js"></script>
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
<FocusTags:SOnLoadScript></FocusTags:SOnLoadScript>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>
