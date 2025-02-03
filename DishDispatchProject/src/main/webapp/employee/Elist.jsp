<%@page import="com.Dish.Module.Employee"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.Dish.Module.Registeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee lists</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style type="text/css">
.container {
    max-width: 1200px;
    margin: auto;
    padding: 20px;
    background-color: #f9f9f9;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.table-responsive {
    margin: 30px 0;
}

.table-wrapper {
    background: #fff;
    padding: 20px 25px;
    border-radius: 10px;
    box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
}

.table-title {
    padding-bottom: 15px;
    background: #35475e;
    color: #fff;
    padding: 16px 30px;
    margin: -20px -25px 10px;
    border-radius: 10px 10px 0 0;
}

.table-title h2 {
    margin: 5px 0 0;
    font-size: 24px;
}

table.table {
    width: 100%;
    border-collapse: collapse;
}

table.table th, table.table td {
    border: 1px solid #e9e9e9;
    padding: 12px 15px;
    vertical-align: middle;
}

table.table th {
    background-color: #f2f2f2;
}

table.table-striped tbody tr:nth-of-type(odd) {
    background-color: #fcfcfc;
}

table.table-striped.table-hover tbody tr:hover {
    background: #f5f5f5;
}

table.table th i {
    font-size: 13px;
    margin: 0 5px;
    cursor: pointer;
}

table.table td:last-child i {
    opacity: 0.9;
    font-size: 22px;
    margin: 0 5px;
}

table.table td a {
    font-weight: bold;
    color: #566787;
    display: inline-block;
    text-decoration: none;
    outline: none !important;
}

table.table td a:hover {
    color: #2196F3;
}

table.table td a.edit {
    color: #FFC107;
}

table.table td a.delete {
    color: white;
}

table.table td i {
    font-size: 19px;
}

table.table .avatar {
    border-radius: 50%;
    vertical-align: middle;
    margin-right: 10px;
}

.cost {
    float: right;
    font-size: 25px;
    color: black;
    padding-top: 20px;
    padding-right: 300px;
}

.btn.btn-warning {
    margin-top: 17px;
}
</style>
</head>
<body>
    <div class="container">
        <div class="table-responsive">
            <div class="table-wrapper">
                <div class="table-title">
                
                <% String success = (String) request.getAttribute("success"); 
            if (success != null) { %>
                <div class="alert alert-success text-center">
                    <%= success %>
                </div>
            <% } %>
            <% String failed = (String) request.getAttribute("failed"); 
            if (failed != null) { %>
            <div class="alert alert-danger text-center">
                <%= failed %>
            </div>
            <% } %>
                
                    <h2>Employee <b>List</b></h2>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Date</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                   <% Registeration reg = new Registeration(session);
                  ArrayList<Employee> al1 = reg.getEmployees();
                Iterator<Employee> itr2 = al1.iterator();
               while (itr2.hasNext()) {
                      Employee s = itr2.next();
                  %>
                      <tr>
                      <td><%=s.getEid()%></td>
                      <td><%=s.getName()%></td>
                      <td><%=s.getEmail()%></td>
                      <td><%=s.getPhone()%></td>
                      <td><%=s.getDate()%></td>
                      <td>
                          <form action="sign" method="post">
                              <input type="hidden" name="userid" value="<%=s.getEid()%>" />
                              <input type="submit" class="btn btn-danger" name="delete" value="Delete" style="background-color: red; border: none; margin-left: 23px; width: 60px; height: 26px;">
                          </form>
                      </td>
                  </tr>
                  <%
                  }
                  %>
              </tbody>
          </table>
      </div>
  </div>
</div>

 <div>
     <%@ include file="footer.jsp" %>
    </div>
</body>
</html>
