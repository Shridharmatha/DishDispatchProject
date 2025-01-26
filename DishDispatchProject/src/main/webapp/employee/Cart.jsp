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
        /* Global styles and layout */
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
        .left-section {
            display: flex;
            flex: 1;
            align-items: center;
            padding-left: 30px;
        }
        .right-section {
            display: flex;
            flex: 2;
            justify-content: space-around;
            align-items: center;
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

        .food-img {
            height: 250px;
            width: 300px;
            object-fit: cover;
        }
        .heading {
            padding: 30px 40px 0 40px;
        }
        main {
            background-color: #e2f4e2;
        }

        /* Cart item and pricing styles */
        .cart-items-grid {
            display: grid;
            gap: 30px;
            padding: 30px 500px 30px 40px;
        }
        .cart-item-info {
            display: flex;
            column-gap: 30px;
            border: 1px solid rgb(179, 176, 176);
            padding: 15px;
            background-color: white;
        }
        .food-name {
            font-weight: 500;
            font-size: 2rem;
            padding: 0 0 18px 0;
        }
        .price-grid {
            display: grid;
            grid-template-columns: 86px 70px 70px;
            column-gap: 8px;
            font-size: 1.5rem;
            padding: 0 0 36px 0;
        }
        .discount-percent {
            color: rgb(0, 194, 0);
            font-weight: 600;
        }
        .retail-price {
            text-decoration: line-through;
            color: rgb(146, 145, 145);
        }
        .selling-price {
            font-weight: 700;
        }

        .food-quantity {
            font-size: 1.2rem;
            font-weight: 500;
            padding: 0 0 12px 0;
        }
        .buttons-grid {
            display: grid;
            grid-template-columns: 120px 200px 150px;
            column-gap: 20px;
        }
        .button-flex {
            display: flex;
            padding: 10px;
            justify-content: center;
            align-items: center;
            column-gap: 8px;
            font-size: 1rem;
            background-color: black;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }

        .total-cost {
            font-size: 1.5rem;
            margin-top: 20px;
            padding: 10px 0;
        }

        .checkout-button {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
        }
    </style>
    <title>Cart</title>
</head>
<body>
    <header class="header-section">
        <section class="left-section">
            <!-- Logo here -->
        </section>

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
        <div class="cart-items-grid">
            <% if (session.getAttribute("uname") != null) { %>
            <h2>Welcome to Your Cart</h2>
            <table class="table table-bordered">
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
                        <td><img src="Images/<%=s.getFood_image()%>" alt="<%=s.getFood_name()%>" style="height: 80px; width: auto; border-radius: 10px;"></td>
                        <td><%=s.getFood_name()%></td>
                        <td>&#8377;<%=s.getFood_price()%></td>
                        <td><%=s.getQty() %></td>
                        <td>&#8377;<%=itemTotalCost%></td>
                        <td>
                            <form action="addtocart" method="post" style="display:inline;">
                                <input type="hidden" name="cid" value="<%=s.getF_id()%>"/>
                                <button type="submit" name="delete" class="btn btn-danger"><i class="fas fa-trash"></i> Remove</button>
                            </form>
                        </td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
            <div class="total-cost">Total: &#8377;<%=tcost%></div>
            <div class="checkout-button">
                <a href="booking.jsp" class="btn btn-primary">move to buy</a>
                <a href="Veg.jsp" class="btn btn-primary">Back</a>
            </div>
        <% } else { %>
            <h2>Please log in to view your cart.</h2>
        <% } %>
    </div>
</body>
</html>
