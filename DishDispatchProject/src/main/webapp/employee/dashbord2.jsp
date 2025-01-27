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
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <title>GoMeal Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }

        .sidebar {
            width: 250px;
            background-color: #ffffff;
            position: absolute;
            height: 100%;
            box-shadow: 2px 0px 5px rgba(0, 0, 0, 0.1);
            padding-top: 20px;
        }

        .sidebar h2 {
            text-align: center;
            margin: 0;
            padding: 10px 0;
            color: #333;
        }

        .sidebar ul {
            list-style: none;
            padding: 0;
        }

        .sidebar ul li {
            padding: 15px 20px;
            color: #333;
            cursor: pointer;
        }

        .sidebar ul li:hover {
            background-color: #f0f0f0;
            text-decoration: none;
        }

        .content {
            margin-left: 260px;
            padding: 20px;
        }

        .menu-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .menu-header h1 {
            font-size: 24px;
            color: #333;
        }

        .menu-header button {
            padding: 10px 20px;
            background-color: #ffcc00;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
        }

        .category, .popular, .best-seller {
            margin-bottom: 30px;
        }

        .category h2, .popular h2, .best-seller h2 {
            font-size: 20px;
            margin-bottom: 15px;
            color: #333;
        }

        .category-items, .popular-items, .best-seller-items {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
        }

        .category-item, .menu-item {
            background-color: #ffffff;
            border: 1px solid #ddd;
            padding: 15px;
            border-radius: 5px;
            text-align: center;
            flex: 1 1 calc(15% - 20px);
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .category-item img, .menu-item img {
            object-fit: cover;
        }

        .category-item h3, .menu-item h3 {
            font-size: 16px;
            margin-top: 10px;
        }

        .menu-item p {
            font-size: 14px;
            color: #666;
        }

        .menu-item .price {
            font-weight: bold;
            color: #ff6600;
            margin-top: 10px;
        }

        .upgrade {
            background-color: #ffcc00;
            padding: 10px;
            text-align: center;
            font-weight: bold;
            border-radius: 5px;
            margin: 20px auto;
            width: 80%;
            cursor: pointer;
        }
        ul:hover{
            text-decoration: none;
        }
    </style>
</head>
<body>
<%
    Registeration s1 = new Registeration(session);
    ArrayList<Employee> a = s1.getEmployees1();
    Iterator<Employee> itr1 = a.iterator();

    while (itr1.hasNext()) {
        Employee e = itr1.next();
%>
   

    <div class="sidebar">
        <h2>GoMeal</h2>
        <ul>
            <a href="Cart.jsp"><li>cart</li></a>
            <a href="JoinUs.jsp"><li>Add Employees</li></a>
            <a href="Forgotpass.jsp"><li>Forgot pass</li></a>
            <a href="Elist.jsp"><li>EmployeeList</li></a>
            <a href="insertitem.jsp"><li>insertItem</li></a>
            <li><form action="sign" method="get">
            <input type="submit" name="logout" value="logout">
            </form></li>
        </ul>
        <div class="upgrade">Upgrade your account</div>
    </div>
         <div style="width: 100%; height: 40px;">
    <a href="#" style="float: right; margin-right: 20px; padding-top: 20px; display: flex; align-items: center;">
        <img src="https://cdn-icons-png.flaticon.com/128/3135/3135715.png" alt="User" style="width: 45px; height: 55px; margin-right: 10px;">
        <span><%= session.getAttribute("uname") %></span>
    </a>
</div>
    <div class="content">
        <div class="menu-header">
            <h1>Menu</h1>
           
        </div>

        <div class="category">
            <h2>Category</h2>
            <div class="category-items">
                <a style="height:150px; width:160px;" href="Bakery.jsp"><div class="category-item">
                    <button style="border:none; background-color: white;"><img style="width:50px; height:50px" src="https://www.emojirequest.com/images/CupcakeEmoji.jpg" alt="Bakery">
                    <h3>Bakery</h3></button>
                </div></a>
               <a style="height:150px; width:160px;" href="Burger.jsp"> <div class="category-item">
                   <button style="border:none; background-color: white;"> <img style="width:50px; height:50px" src="https://ih1.redbubble.net/image.894871460.7630/st,small,507x507-pad,600x600,f8f8f8.u2.jpg" alt="Burger">
                    <h3>Burger</h3></button>
                </div></a>
               <a style="height:150px; width:160px;" href="Beverage.jsp"> <div class="category-item">
                    <button style="border:none; background-color: white;"><img style="width:50px; height:50px" src="https://thumbs.dreamstime.com/b/soda-paper-cup-sign-emoji-icon-illustration-take-away-drink-vector-symbol-emoticon-design-clip-art-sign-comic-style-soda-paper-259998273.jpg" alt="Drink">
                    <h3>Beverage</h3></button>
                </div></a>
              <a style="height:150px; width:160px;" href="Chicken.jsp">  <div class="category-item">
                   <button style="border:none; background-color: white;"> <img style="width:50px; height:50px" src="https://media.istockphoto.com/id/841361556/vector/chicken-emoticon-on-white-background.jpg?s=612x612&w=0&k=20&c=8lZZ4E3_1n6-cGygUFoFPbXDedKmeMwS0QpGaspcwGE=" alt="Drink">
                    <h3>Chicken</h3></button>
                </div></a>
              <a style="height:150px; width:160px;" href="Pizza.jsp">  <div class="category-item">
                   <button style="border:none; background-color: white;"> <img style="width:50px; height:50px" src="https://media.istockphoto.com/id/812133760/vector/pizza-slice-with-melted-cheese-pepperoni-and-mushrooms.jpg?s=612x612&w=0&k=20&c=WAI2Be5icHXRFc0aBvqea8QtsxwBsyAxs_ZIP-bnKs0=" alt="Drink">
                    <h3>Pizza</h3></button>
                </div></a>
               <a style="height:150px; width:160px;" href="Seafood.jsp"> <div class="category-item">
                   <button style="border:none; background-color: white;"> <img style="width:50px; height:50px" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNLMPSPZuA_b2mKb5ljRUe3SPQPaR5H0qRvA&s" alt="Drink">
                    <h3>Seafood</h3></button>
                </div></a>
                 <a style="height:150px; width:160px;" href="Veg.jsp"> <div class="category-item">
                   <button style="border:none; background-color: white;"> <img style="width:50px; height:50px" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShSGjuM6icgvHULhxTK-Dc0qcaNTz21a_qUw&s" alt="Drink">
                    <h3>Veg</h3></button>
                </div></a>
                 <a style="height:150px; width:160px;" href="Chats.jsp"> <div class="category-item">
                   <button style="border:none; background-color: white;"> <img style="width:50px; height:50px" src="https://t4.ftcdn.net/jpg/02/72/83/33/360_F_272833330_vDxswrzf303aX0a4xe7hIuh90j2FjGRU.jpg" alt="Drink">
                    <h3>Chats</h3></button>
                </div></a>
                
            </div>
        </div>

        <div class="popular">
            <h2>Popular This Week</h2>
            <div class="popular-items">
                <div class="menu-item" style="display: flex;">
                    <button style="border:none; background-color: white;"><div><img  style="width:120px; height:70px" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCmRDlgxqcbNfcSVdjhD7jDBZ2zZjrXTBLOA&s" alt="Fish Burger">
                    <h3>Fish Burger</h3></div></button>
                    <div>
                    <p>Lorem ipsum dolor sit.</p>
                    <div class="price">$5.59</div></div>
                </div>
                <div class="menu-item" style="display:flex;">
                   <button style="border:none; background-color: white;"> <div><img style="width:120px; height:70px" src="https://www.shutterstock.com/image-photo/big-classic-beef-cheese-burger-600nw-2186648631.jpg" alt="Double Burger">
                    <h3>Double Burger</h3></div></button>
                    <div>
                    <p>Lorem ipsum dolor sit.</p>
                    <div class="price">$5.59</div></div>
                </div>
                <div class="menu-item" style="display:flex;">
                    <button style="border:none; background-color: white;"><div><img style="width:120px; height:70px" src="https://www.shutterstock.com/image-photo/photo-cheese-burger-delicious-white-600nw-2285405767.jpg" alt="Double Burger">
                    <h3>Beef Burger</h3></div></button>
                    <div>
                    <p>Lorem ipsum dolor sit.</p>
                    <div class="price">$5.59</div></div>
                </div>
                <div class="menu-item" style="display:flex;">
                   <button style="border:none; background-color: white;"> <div><img style="width:120px; height:70px" src="https://upload.wikimedia.org/wikipedia/commons/4/4d/Cheeseburger.jpg" alt="Double Burger">
                    <h3>Cheese Burger</h3></div></button>
                    <div>
                    <p>Lorem ipsum dolor sit.</p>
                    <div class="price">$5.59</div></div>
                </div>
            </div>
        </div>

        <div class="best-seller">
            <h2>Best Seller</h2>
            <div class="best-seller-items">
                <div class="menu-item">
                   <button style="border:none; background-color: white;"> <img style="width: 60px; height:60px" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSi6_IRSH69k9wMginBF_yacMEFGG8eJj6VE31ofK2_L4ItphdpxBuluCP6SFqYhkP7i2M&usqp=CAU" alt="Pepperoni Pizza">
                    <h3>Pepperoni Pizza</h3></button>
                    <div class="price">$7.99</div>
                </div>
                <div class="menu-item">
                   <button style="border:none; background-color: white;"> <img style="width: 60px; height:60px" src="https://d3s8tbcesxr4jm.cloudfront.net/recipe-images/v0/japanese-naruto-ramen_large.jpg" alt="Ramen">
                    <h3>Japanese Ramen</h3></button>
                    <div class="price">$8.99</div>
                </div>
                <div class="menu-item">
                   <button style="border:none; background-color: white;"> <img style="width: 60px; height:60px" src="https://cdn.sanity.io/images/2r0kdewr/production/79e84384f627d14caeb6e9366d1bd39b08d50ba2-500x375.jpg" alt="Ramen">
                    <h3>Fried Rice</h3></button>
                    <div class="price">$8.99</div>
                </div>
                <div class="menu-item">
                   <button style="border:none; background-color: white;"> <img style="width: 60px; height:60px" src="https://shortgirltallorder.com/wp-content/uploads/2020/04/pizza-dough-square-2.jpg" alt="Ramen">
                    <h3>Vegan Pizza</h3></button>
                    <div class="price">$8.99</div>
                </div>
                <div class="menu-item">
                    <button style="border:none;background-color: white;"><img style="width: 60px; height:60px" src="https://www.shutterstock.com/image-photo/photo-cheese-burger-delicious-white-600nw-2285405767.jpg" alt="Ramen">
                    <h3>Beef Burger</h3></button>
                    <div class="price">$8.99</div>
                </div>
                <div class="menu-item">
                    <button style="border: none; background-color: white;"><img style="width: 50px; height:50px" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyE81u9Sg1rqm_HjSw0L5ORQLl8Vo1M5ypMQ&s" alt="Ramen">
                    <h3>Fish Burger</h3></button>
                    <div class="price">$8.99</div>
                </div>
            </div>
        </div>
    </div>
    <div>
    <%} %>
     <%@ include file="footer.jsp" %>
    </div>
</body>
</html>