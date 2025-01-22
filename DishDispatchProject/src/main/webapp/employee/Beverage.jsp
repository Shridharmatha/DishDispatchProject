<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beverage Items</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #fff5e6;
        }

        header {
            background-color: #ffcc99;
            padding: 20px;
            text-align: center;
            color: black;
            font-size: 24px;
            font-weight: bold;
        }

        .container {
            padding: 20px;
        }

        .item-card {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
            overflow: hidden;
            margin: 15px;
            padding: 15px;
            text-align: center;
            transition: transform 0.3s ease;
            width: 250px;
            height: 250px;
        }

        .item-card:hover {
            transform: scale(1.05);

        }

        .item-image {
            width: 100%;
            max-height: 200px;
            object-fit: cover;
            border-radius: 10px;
            padding: 20px;
        }

        .item-name {
            font-size: 18px;
            font-weight: bold;
            margin: 10px 0;
            color: black;
        }

        .item-price {
            color: #333;
            font-size: 16px;
        }

        .grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 20px;
        }

        .btn {
            display: inline-block;
            margin-top: 10px;
            padding: 10px 20px;
            background-color: #ff9966;
            color: black;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #ff704d;
        }
    </style>
</head>
<body>

<header>
   Beverage Items
</header>

<div class="container">
    <div class="grid" style="display: flex; justify-content: space-between;">
        <div class="item-card">
            <img style="width: 100px; height:100px" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSI8eysFq_SFZVCsmlruIotEWzG62XEfuO3Ow&s" alt="Chocolate Cake" class="item-image">
            <div class="item-name">Chocolate Cake</div>
            <div class="item-price">$10.99</div>
            <a href="#" class="btn">Add Cart</a>
        </div>
        <div class="item-card">
            <img style="width: 100px; height:100px" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSI8eysFq_SFZVCsmlruIotEWzG62XEfuO3Ow&s" alt="Chocolate Cake" class="item-image">
            <div class="item-name">Chocolate Cake</div>
            <div class="item-price">$10.99</div>
            <a href="#" class="btn">Add Cart</a>
        </div>
        <div class="item-card">
            <img style="width: 100px; height:100px" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSI8eysFq_SFZVCsmlruIotEWzG62XEfuO3Ow&s" alt="Chocolate Cake" class="item-image">
            <div class="item-name">Chocolate Cake</div>
            <div class="item-price">$10.99</div>
            <a href="#" class="btn">Add Cart</a>
        </div>
        <div class="item-card">
            <img style="width: 100px; height:100px" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSI8eysFq_SFZVCsmlruIotEWzG62XEfuO3Ow&s" alt="Chocolate Cake" class="item-image">
            <div class="item-name">Chocolate Cake</div>
            <div class="item-price">$10.99</div>
            <a href="#" class="btn">Add Cart</a>
        </div>
    </div>
</div>

</body>
</html>