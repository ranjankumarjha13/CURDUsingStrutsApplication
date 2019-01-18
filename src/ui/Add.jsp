
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 05-12-2018
  Time: 13:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="FocusTags" uri="/tlds/fcomps" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<jsp:useBean id="clTagConstants" class="tags.CLTagConstants"/>
<html>
<head>
  <style>
    .card {
      box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
      transition: 0.3s;
      width: 40%;
      border-radius: 5px;
    }
  </style>
    <title></title>

  <script src="res/scripts/myTabblePanne.js"> </script>
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
</head>
<body>
<div align="center" style="padding: 10px;">
<div class="card" style="padding: 10px;">
<h2 style="color: #000FF0">Registration Page</h2>

    <hr>
  <div style="padding-bottom: 10px;">
    <span>Note:-</span>
    <span style="color: red;">*</span>
    <span>marks denotes Mindetory Field......</span>
  </div>

  <form name="frmAdd">
    <div>

    <span style="float: left;padding-bottom: 5px;"><label style="font-family: bold;font-size: 14px;">Name:-</label><span style="
    color: red;font-size: 12px;">*</span></span>
    </div>
    <div style="padding-bottom: 20px;">
     <%-- <FocusTag:STextField name="eb.name" id="name"></FocusTag:STextField>--%>
      <input type="text" name="eb.name" id="name">
    </div>
    <div>
    <span style="float: left;padding-bottom: 5px;"><label style="font-family: bold;font-size: 14px;">MobileNo:-</label><span style="
    color: red;font-size: 12px;">*</span></span>
    </div>
    <div style="padding-bottom: 20px;">
      <%--<FocusTag:STextField name="eb.mobile" id="mobile"></FocusTag:STextField>--%>
        <input type="text" name="eb.mobile" id="mobile">
    </div>
    <div>
    <span style="float: left;padding-bottom: 5px;"><label style="font-family: bold;font-size: 14px;">Email-Id:-</label><span style="
    color: red;font-size: 12px;">*</span></span>
    </div>
    <div style="padding-bottom: 20px;">
     <%-- <FocusTag:STextField name="eb.email" id="email"></FocusTag:STextField>--%>
       <input type="text" name="eb.email" id="email">
    </div>
    <div>
    <span style="float: left;padding-bottom: 5px;"><label style="font-family: bold;font-size: 14px;">Address-</label><span style="
    color: red;font-size: 12px;">*</span></span>
    </div>
    <div style="padding-bottom: 20px;">
     <%-- <FocusTag:STextarea name="eb.address" id="address"></FocusTag:STextarea>--%>
       <input type="text" name="eb.address" id="address">
    </div>
    <div>
    <span style="float: left;padding-bottom: 5px;"><label style="font-family: bold;font-size: 14px;">ZipCode-</label><span style="
    color: red;font-size: 12px;">*</span></span>
    </div>
    <div style="padding-bottom: 20px;">
     <%-- <FocusTag:STextField name="eb.zipcode" id="zipcode"></FocusTag:STextField>--%>
       <input type="text" name="eb.zipcode" id="zipcode">
    </div>

  </form>

  <div>
    <input type="button" value="Register"  id="buttoncheck" onclick="register()">
  </div>

  <div id="resRegDv" style="color: green"></div>

</div>
</div>
</body>
<script src="res/scripts/myscript/index.js"></script>
<script src="res/scripts/myscript/ajax.js"></script>
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
