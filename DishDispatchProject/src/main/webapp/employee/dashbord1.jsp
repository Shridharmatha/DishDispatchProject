<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
     rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
     
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DishDispatch</title>
    <style>
        body {
            margin: 0;
            font-family: 'Roboto', sans-serif;
        }
        .header1 {
            background-color: #fff;
            padding: 10px 20px;
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
        }
        .header1 ul {
            list-style-type: none;
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: 0;
            padding: 0;
        }
        .one h2 {
            color: #007bff;
            font-size: 30px;
            font-family: 'Pacifico', cursive;
            margin: 0;
        }
        .header1 li {
            display: inline-block;
            margin: 0 15px;
            font-size: 20px;
            color: black;
            cursor: pointer;
        }
        .header1 li:hover {
            color: #007bff;
            text-decoration: underline;
        }
        .header {
            margin: 0;
            background-image: url('food4.jpg');
            filter: brightness(70%);
            height: 300px;
            padding: 20px;
            background-position: center; 
            background-repeat: no-repeat;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.5);
        }
        .header h1 {
            text-align: center;
            color: white;
            font-size: 80px; 
            text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.8);
            font-family: 'Pacifico', cursive;
        }
        .content {
            padding: 40px 20px;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px; 
        }
        .card {
            width: 300px;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s, box-shadow 0.3s;
            margin-bottom: 20px;
        }
        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.4);
        }
        .card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }
        .card-body {
            padding: 20px;
            text-align: center;
        }
        .card-title {
            font-size: 22px;
            color: #333;
            margin-bottom: 10px;
        }
        .card-text {
            font-size: 16px;
            color: #666;
        }
        
        .two{
            color: #007bff;
            font-size: 30px;
            font-family: 'Pacifico', cursive;
            margin: 0;
        }
        .two p{
        text-indent:70px;
        font-family: 'Lato', sans-serif;
        font-size:20px;
        color: #4CAF50;
        text-align:center;
        justify-content:center;
        padding:30px;
        
        }
        
    </style>
    
</head>
<body>
    <div class="header1">
        <ul>
            <div class="one">
                <h2>DishDispatch</h2>
            </div>
            <div>
                <li>Signup</li>
                <li>Login</li>
                <li>Contact</li>
            </div>
        </ul>
    </div>
    <div class="header">
        <h1>DishDispatch</h1>
    </div>
    <div class="content">
        <div class="card">
            <img src="food1.jpg" alt="Delicious homemade pizza topped with fresh vegetables">
            <div class="card-body">
              <h5 class="card-title">Dosa</h5>
              <p class="card-text">Dosa is a popular South Indian dish made from a fermented rice and urad dal batter, cooked into a thin, crispy crepe.</p>
            </div>
        </div>
        <div class="card">
            <img src="food.jpeg" alt="Freshly baked bread">
            <div class="card-body">
              <h5 class="card-title">Sandwich</h5>
              <p class="card-text">A sandwich is a popular food consisting of fillings like vegetables, meat, or cheese placed between slices of bread.</p>
            </div>
        </div>
        <div class="card">
            <img src="food3.jpg" alt="Chocolate cake slice">
            <div class="card-body">
              <h5 class="card-title">Cake</h5>
              <p class="card-text">Cake is a sweet baked dessert typically made from flour, sugar, eggs, and butter, often flavored with ingredients like vanilla, chocolate, or fruit.</p>
            </div>
        </div>
        
    </div>
    <div class="content">
        <div class="card">
            <img src="food4.jpg" alt="Delicious homemade pizza topped with fresh vegetables">
            <div class="card-body">
              <h5 class="card-title">Burger</h5>
              <p class="card-text">A burger is a popular dish consisting of a seasoned meat or plant-based patty, typically served between two halves of a bun.</p>
            </div>
        </div>
        <div class="card">
            <img src="food5.jpg" alt="Freshly baked bread">
            <div class="card-body">
              <h5 class="card-title">Sandwich</h5>
              <p class="card-text">A sandwich is a popular food consisting of fillings like vegetables, meat, or cheese placed between slices of bread.</p>
            </div>
        </div>
        <div class="card">
            <img src="food6.jpg" alt="Chocolate cake slice">
            <div class="card-body">
              <h5 class="card-title">Pasta</h5>
              <p class="card-text">Pasta is a versatile Italian dish made from wheat flour and water, often shaped into various forms like spaghetti, penne, or fusilli.</p>
            </div>
        </div>
        
    </div>
    <div class="two">
    <center><h2>About the Company</h2></center>
    <center><p>Dishdispatch is a food delivery company that focuses on providing high-quality,
     chef-curated meal kits to customers. The company partners with top chefs and restaurants 
     to create pre-prepared meals that customers can finish and enjoy at home. Dishdispatch aims 
     to bridge the gap between fine dining and home-cooked meals, offering a convenient way for customers
      to experience gourmet dishes in the comfort of their homes.

    The meals are delivered in insulated, eco-friendly packaging, ensuring freshness and sustainability.
     Dishdispatch stands out by collaborating with renowned chefs to bring a wide range of cuisines and flavors to its customers.
      The company is committed to quality and innovation, making it a popular choice for those seeking a restaurant-quality dining 
      experience without leaving their homes.</p></center>
    </div>
    
    <%@ include file="footer.jsp" %>
</body>
</html>

    
