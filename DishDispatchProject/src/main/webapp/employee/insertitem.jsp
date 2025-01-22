<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Item</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(135deg, #ff9a9e, #fad0c4,white,green);
        }

        .form-container {
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
        }

        .form-container h2 {
            margin-bottom: 20px;
            font-size: 28px;
            color: #333;
            text-align: center;
            font-weight: bold;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555;
        }

        .form-group input, .form-group select {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 16px;
            transition: border-color 0.3s;
        }

        .form-group input:focus, .form-group select:focus {
            border-color: #007bff;
            outline: none;
        }

        .form-group input[type="text"] {
            background: #f9f9f9;
        }

        .form-group input[type="file"] {
            padding: 5px;
        }

        .form-group button {
            width: 100%;
            padding: 12px;
            background: linear-gradient(135deg, #007bff, #0056b3);
            color: #fff;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            font-weight: bold;
            transition: background 0.3s;
        }

        .form-group button:hover {
            background: linear-gradient(135deg, #0056b3, #004494);
        }

        @media (max-width: 480px) {
            .form-container {
                padding: 20px;
            }

            .form-group label {
                font-size: 14px;
            }

            .form-group input, .form-group select {
                font-size: 14px;
                padding: 10px;
            }

            .form-group button {
                font-size: 14px;
                padding: 10px;
            }
        }
    </style>
</head>
<body>

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

    <div class="form-container">
        <h2>Add Item</h2>
        <form id="addItemForm" action="Signup" method="post">
            <div class="form-group">
                <label for="itemName">Item Name</label>
                <input type="text" id="itemName" name="item" placeholder="Enter item name" required>
            </div>
            <div class="form-group">
                <label for="itemPrice">Item Price</label>
                <input type="number" id="itemPrice" name="Price" placeholder="Enter item price" required>
            </div>
            <div class="form-group">
                <label for="itemType">Item Type</label>
                <select id="itemType" name="type" required>
                    <option value="">Select type</option>
                    <option value="veg">Veg</option>
                    <option value="non">Non-Veg</option>
                    <option value="chats">Chats</option>
                </select>
            </div>
            <div class="form-group">
                <label for="itemImage">Item Image</label>
                <input type="text" id="itemImage" name="image" placeholder="Enter image URL" required>
            </div>
            <div class="form-group">
                <button type="submit" name="insertitem">Add Item</button>
            </div>
        </form>
    </div>
</body>
</html>
