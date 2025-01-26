<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Booking Form</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #f8f9fa;
      font-family: Arial, sans-serif;
    }
    .card {
      box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
      border-radius: 15px;
      overflow: hidden;
    }
    .confirm-btn {
      background-color: #28a745;
      color: white;
      border: none;
      font-size: 18px;
      padding: 10px;
      border-radius: 8px;
      transition: background-color 0.3s;
    }
    .confirm-btn:hover {
      background-color: #218838;
    }
    .form-label {
      font-weight: bold;
    }
    .payment-option {
      border: 2px solid #ddd;
      border-radius: 10px;
      padding: 15px;
      text-align: center;
      cursor: pointer;
      transition: transform 0.3s, border-color 0.3s;
    }
    .payment-option:hover {
      transform: scale(1.05);
      border-color: #007bff;
    }
    .payment-option.active {
      border-color: #007bff;
      background-color: #e9f5ff;
    }
    .payment-option img {
      width: 50px;
      margin-bottom: 10px;
    }
  </style>
</head>
<body>
  <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-8">
        <div class="card p-4">
          <h3 class="text-center mb-4">Booking Form</h3>
          <p><strong>Buyer Name:</strong> Mallesh</p>
          <div class="d-flex align-items-center mb-3">
            <img src="#" alt="Product Image" class="me-3 rounded">
            <div>
              <p class="mb-1"><strong>Product Name:</strong> Whiskas Wet Cat Food for Adult Cats</p>
              <p class="mb-1"><strong>Quantity:</strong> 1</p>
              <p class="mb-1"><strong>Product Cost:</strong> ₹595</p>
            </div>
          </div>
          <hr>
          <h5 class="text-end"><strong>Total:</strong> ₹595</h5>

          <h5 class="mt-4 mb-3">Payment Method:</h5>
          <div class="row mb-4">
            <div class="col-md-3">
              <div class="payment-option" id="cash">
                <img src="https://cdn-icons-png.flaticon.com/512/9198/9198191.png" height="80px" width="90px" alt="Cash">
                <p>Cash on Delivery</p>
              </div>
            </div>
            <div class="col-md-3">
              <div class="payment-option" id="card">
                <img src="https://bsmedia.business-standard.com/_media/bs/img/article/2024-03/12/full/1710223554-0545.jpg" height="80px" width="90px" alt="Card">
                <p>Credit/Debit Card</p>
              </div>
            </div>
            <div class="col-md-3">
              <div class="payment-option" id="upi">
                <img src="https://images.gizbot.com/img/2024/08/upi2-1723465193.jpeg" height="80px" width="90px" alt="UPI">
                <p>UPI</p>
              </div>
            </div>
            <div class="col-md-3">
              <div class="payment-option" id="netbanking">
                <img src="https://assets-news.housing.com/news/wp-content/uploads/2022/05/02100739/Axis-Bank-login-Your-guide-to-Axis-Bank-internet-banking.jpg" height="80px" width="90px" alt="Net Banking">
                <p>Net Banking</p>
              </div>
            </div>
          </div>

          <h5 class="mb-3">Delivery Address:</h5>
          <form>
            <div class="mb-3">
              <label for="address" class="form-label">Complete Address:</label>
              <input type="text" class="form-control" id="address" placeholder="Enter your address" required>
            </div>

            <div class="mb-3">
                <label for="address" class="form-label">PinCode:</label>
                <input type="number" class="form-control" id="pincode" placeholder="Enter your pincode" required>
              </div>

            <div class="mb-3">
              <label for="city" class="form-label">City:</label>
              <input type="text" class="form-control" id="city" placeholder="Enter your city" required>
            </div>
            <div class="mb-3">
              <label for="state" class="form-label">State:</label>
              <input type="text" class="form-control" id="state" placeholder="Enter your state" required>
            </div>
            <button type="submit" class="btn confirm-btn w-100">Confirm Order</button>
          </form>
        </div>
      </div>
    </div>
  </div>

  <script>
    // Add click event for selecting payment options
    document.querySelectorAll('.payment-option').forEach(option => {
      option.addEventListener('click', () => {
        document.querySelectorAll('.payment-option').forEach(opt => opt.classList.remove('active'));
        option.classList.add('active');
      });
    });
  </script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
