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
    <style>
        /* Global styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
        }
        .header-section {
            display: flex;
            justify-content: space-between;
            padding: 15px;
            background-color: #CEE4CE;
            position: sticky;
            top: 0;
            left: 0;
            right: 0;
            z-index: 100;
        }
        .right-section a {
            color: #404040;
            text-decoration: none;
            font-size: 1.1rem;
            transition: 0.5s;
        }
        .right-section a:hover {
            color: #000000;
            text-decoration: underline;
        }
        main {
            background-color: #e2f4e2;
            padding: 30px 40px;
        }
        .heading {
            font-size: 2rem;
            margin-bottom: 20px;
        }
        .cart-container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            text-align: center;
            padding: 12px;
        }
        th {
            background-color: #f4f4f4;
            font-weight: bold;
        }
        td img {
            height: 80px;
            width: auto;
            border-radius: 10px;
        }
        .total-cost {
            font-size: 1.5rem;
            margin: 20px 0;
            text-align: right;
        }
        .button-container {
            display: flex;
            justify-content: space-between;
            gap: 10px;
        }
        .btn {
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
        }
        .btn-primary {
            background-color: #007bff;
            color: white;
            text-decoration: none;
            display: inline-block;
            text-align: center;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .btn-danger {
            background-color: #dc3545;
            color: white;
        }
        .btn-danger:hover {
            background-color: #a71d2a;
        }
    </style>
    <title>Cart</title>
</head>
<body>
    <header class="header-section">
        <section class="right-section">
            <a href="Home.jsp">Home</a>
            <a href="Favorites.jsp">Favorites</a>
            <a href="Orders.jsp">Orders</a>
            <a href="FAQs.jsp">FAQs</a>
            <a href="AboutUs.jsp">About Us</a>
            <a href="JoinUs.html">Join Us</a>
            <a href="Profile.jsp">Profile</a>
        </section>
    </header>

    <main>
        <h1 class="heading">My Cart</h1>
        <div class="cart-container">
            <% if (session.getAttribute("uname") != null) { %>
            <table>
                <thead>
                    <tr>
                        <th>Image</th>
                        <th>Product Name</th>
                        <th>Cost (&#8377;)</th>
                        <th>Quantity</th>
                        <th>Total (&#8377;)</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        int tcost = 0;
                        Registeration s1 = new Registeration(session);
                        ArrayList<cart> ar = s1.getcartinfo();
                        Iterator<cart> itr = ar.iterator();
                        while (itr.hasNext()) {
                            cart s = itr.next();
                            int itemTotalCost = (int) (s.getFood_price() * s.getQty());
                            tcost += itemTotalCost;  
                    %>
                    <tr>
                        <td><img src="<%= request.getContextPath() %>/Images/<%= s.getFood_image() %>" alt="<%= s.getFood_name() %>"></td>
                        <td><%=s.getFood_name()%></td>
                        <td>&#8377;<%=s.getFood_price()%></td>
                        <td><%=s.getQty() %></td>
                        <td>&#8377;<%=itemTotalCost%></td>
                        <td>
                            <form action="addtocart" method="post" style="display:inline;">
                                <input type="hidden" name="cid" value="<%=s.getF_id()%>"/>
                                <button type="submit" name="delete" class="btn btn-danger">Remove</button>
                            </form>
                        </td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
            <div class="total-cost">Total: &#8377;<%=tcost%></div>
            <div class="button-container">
                <a href="BuyNow.jsp" class="btn btn-primary">Proceed to Buy</a>
                <a href="Veg.jsp" class="btn btn-primary">Back</a>
            </div>
            <% } else { %>
            <h2>Please log in to view your cart.</h2>
            <% } %>
        </div>
    </main>
    <div>
   
     <%@ include file="footer.jsp" %>
    </div>
</body>
</html>
