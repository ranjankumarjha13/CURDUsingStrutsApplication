<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 05-12-2018
  Time: 13:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title></title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
  <div>
<c:forEach items="${list}" var="v">
  <div class="col-sm-4"></div>
  <div class="col-sm-4">

      <h2>Edit Details</h2>
      <form id="frmAdd">
        <div class="form-group">
          <label for="email">Name:</label>
          <input type="email" class="form-control" id="name" name="eb.name" value="${v.name}">
        </div>
        <div class="form-group">
          <label for="pwd">Mobile:</label>
          <input type="text" class="form-control" id="mobile" name="eb.mobile" value="${v.mobile}">
        </div>
        <div class="form-group">
          <label for="pwd">Email:</label>
          <input type="text" class="form-control" id="email" name="eb.email" value="${v.email}">
        </div>
        <div class="form-group">
          <label for="pwd">Address:</label>
          <input type="text" class="form-control" id="address" name="eb.address" value="${v.address}">
        </div>
        <div class="form-group">
          <label for="pwd">Zipcode:</label>
          <input type="text" class="form-control"  id="zipcode" name="eb.zipcode" value="${v.zipcode}">
        </div>

       <div> <span><button type="button"  onclick="Clview.updateEmp()">Update</button></span>
        <span style="padding-left: 20px;"><a href="viewData!viewDetails.do" style="border: 1px solid;font-size: 18px; background-color: transparent">Cancel</a></span>
       </div>
      </form>
  </div>
  <div class="col-sm-4">
  </div>
  </c:forEach>
    </div>
</div>
</body>
<script src="res/scripts/myscript/index.js"></script>
<script src="res/scripts/myscript/ajax.js"></script>
<script src="res/scripts/myscript/viewdetails.js"></script>
</html>
