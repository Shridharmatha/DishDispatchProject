<%@page import="com.Dish.Module.orders"%>
<%@page import="com.Dish.Module.Employee"%>
<%@page import="com.Dish.Module.cart"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Dish.Module.Registeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order List</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
<%
    int tcost = 0;

   
    Registeration s1 = new Registeration(session);
    ArrayList<orders> ar = s1.getOrders();
    ArrayList<Employee> a = s1.getEmployees1();
    Iterator<orders> itr = ar.iterator();
    Iterator<Employee> itr1 = a.iterator();
%>
    <div class="container mx-auto py-8">
        <h1 class="text-3xl font-bold text-center mb-6 text-gray-800">Order List</h1>
        <div class="overflow-x-auto">
            <table class="min-w-full bg-white shadow-md rounded-lg">
                <thead>
                    <tr class="bg-gray-800 text-white text-left">
                        <th class="py-3 px-4">Order ID</th>
                        <th class="py-3 px-4">Image</th>
                        <th class="py-3 px-4">Customer ID</th>
                        <th class="py-3 px-4">Item</th>
                        <th class="py-3 px-4">Price</th>
                        <th class="py-3 px-4">Quantity</th>
                        <th class="py-3 px-4">Status</th>
                        <th class="py-3 px-4">Type</th>
                        <th class="py-3 px-4">Date</th>
                        <th class="py-3 px-4">Cancel Order</th>
                    </tr>
                </thead>
                <tbody>
                <%
                    while (itr.hasNext() && itr1.hasNext()) {
                        orders s = itr.next();
                        Employee e = itr1.next();
                       
                %>
                    <tr class="border-b hover:bg-gray-100">
                        <td class="py-3 px-4"><%= s.getO_id()%></td> 
                        <td class="py-3 px-4">
                            <img src="<%= s.getO_img() %>" alt="Item" class="h-10 w-10 rounded-full"> 
                        </td>
                        <td class="py-3 px-4"><%= e.getEid() %></td> 
                        <td class="py-3 px-4"><%= s.getO_item() %></td> 
                        <td class="py-3 px-4"><%= s.getO_price() %></td> 
                        <td class="py-3 px-4"><%= s.getQty() %></td>
                        <td class="py-3 px-4">
                            <span class="text-sm bg-green-200 text-green-800 py-1 px-2 rounded"><%= s.getStatus()%></span> 
                        </td>
                        <td class="py-3 px-4"><%= s.getO_type() %></td> 
                        <td class="py-3 px-4"><%= s.getO_date() %></td> 
                        <td class="py-3 px-4">
                            <button class="text-sm bg-red-500 text-white py-1 px-3 rounded hover:bg-red-600">Cancel</button>
                        </td>
                    </tr>
              
                </tbody>
            </table>
            <div class="text-right mt-4">
                <p class="text-lg font-semibold">Total Cost: <%=s.getO_price() %></p>
            </div>
        </div>
    </div>
      <% } %>
</body>
</html>
