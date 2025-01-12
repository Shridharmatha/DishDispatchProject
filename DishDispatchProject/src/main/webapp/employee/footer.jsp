<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DishDispatch Footer</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .footer {
            background-color: #333;
            color: white;
            padding: 40px 20px;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: flex-start;
            position: relative;
        }

        .footer .logo {
            position: absolute;
            left: 20px;
            top: 10px;
        }

        .footer .logo h3 {
            margin: 0;
            color: #fff;
            font-size: 24px;
            text-transform: uppercase;
            font-family: 'Pacifico', cursive;
        }

        .footer h3 {
            margin-bottom: 15px;
            color: #fff;
            font-size: 22px;
            text-transform: uppercase;
        }
        .footer .section {
            flex: 2;
            padding: 10px;
            min-width: 250px;
        }
        .footer .section ul {
            list-style: none;
            padding: 0;
        }
        .footer .section li {
            margin: 10px 0;
        }
        .footer .section a {
            color: #ccc;
            text-decoration: none;
            font-size: 16px;
        }
        .footer .section a:hover {
            color: #fff;
            text-decoration: underline;
        }
        .footer .social-icons a {
            margin-right: 15px;
            color: #ccc;
            font-size: 18px;
        }
        .footer .social-icons a:hover {
            color: #fff;
        }
        .footer .contact-info {
            font-size: 16px;
        }
        .footer .contact-info p {
            margin: 5px 0;
        }
        .footer .footer-bottom {
            text-align: center;
            width: 100%;
            padding: 20px;
            background-color: #222;
            font-size: 14px;
            color: white;
            margin-top: 60px;
            background-color:#333;
        }

        .footer .social-icons a {
            font-size: 24px;
            margin: 0 10px;
            color: #ccc;
        }

        .footer .social-icons a:hover {
            color: #fff;
        }
    </style>
</head>
<body>
    <div class="footer">
       
        <div class="logo">
            <h3>DishDispatch</h3>
        </div>

       
        <div class="section contact-info">
            <h3>Contact Us</h3>
            <p>Email: support@dishdispatch.com</p>
            <p>Phone: +91 8217575449</p>
            <p>Address: PENTAGON SPACE Plot No.765,8th Cross Road, M.R.C.R Extension, Govindaraja Nagar, Bengaluru-560040 , Bengaluru</p>
        </div>

       
        <div class="section">
            <h3>Useful Links</h3>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Menu</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Contact</a></li>
                <li><a href="#">Privacy Policy</a></li>
                <li><a href="#">Terms & Conditions</a></li>
            </ul>
        </div>

        
        <div class="section">
            <h3>Other Links</h3>
            <ul>
                <li><a href="#">Blog</a></li>
                <li><a href="#">FAQ</a></li>
                <li><a href="#">Order Tracking</a></li>
                <li><a href="#">Careers</a></li>
                <li><a href="#">Feedback</a></li>
            </ul>
        </div>

      
        <div class="section social-icons">
            <h3>Follow Us</h3>
            <a href="https://www.bing.com/ck/a?!&&p=6f1dbf3c4b3e87c4a75450dfb9c9152ab74dd767459107a326c82a9f7e3d9999JmltdHM9MTczNjU1MzYwMA&ptn=3&ver=2&hsh=4&fclid=2d431bbc-cf9b-605a-3170-09f1ce3d619b&psq=www.twitter.com&u=a1aHR0cHM6Ly90d2l0dGVyLmNvbS8&ntb=1" target="_blank"><img src="https://cdn-icons-png.flaticon.com/128/733/733579.png" alt="Twitter" style="width: 30px;"></a>
            <a href="https://www.bing.com/ck/a?!&&p=963e538f172ebdc434bf770a31ecb7d1ebfc3ad5871e612d7388164c0c0f44b7JmltdHM9MTczNjU1MzYwMA&ptn=3&ver=2&hsh=4&fclid=2d431bbc-cf9b-605a-3170-09f1ce3d619b&psq=instagram.com&u=a1aHR0cHM6Ly93d3cuaW5zdGFncmFtLmNvbS8_aGw9ZW4&ntb=1" target="_blank"><img src="https://cdn-icons-png.flaticon.com/128/3955/3955024.png" alt="Instagram" style="width: 30px;"></a>
            <a href="https://www.bing.com/ck/a?!&&p=50fefba021b051e1a6714d43388c5fd3182783c590876628dce9413f76afee2cJmltdHM9MTczNjU1MzYwMA&ptn=3&ver=2&hsh=4&fclid=2d431bbc-cf9b-605a-3170-09f1ce3d619b&psq=facebook.com&u=a1aHR0cHM6Ly93d3cuZmFjZWJvb2suY29tLw&ntb=1" target="_blank"><img src="https://cdn-icons-png.flaticon.com/128/5968/5968764.png" alt="Facebook" style="width: 30px;"></a>
            <a href="https://www.bing.com/ck/a?!&&p=8f2a424127e5938c0a606ffd1c207648c9e9e164920a0e4a47e367c67a9246aaJmltdHM9MTczNjU1MzYwMA&ptn=3&ver=2&hsh=4&fclid=2d431bbc-cf9b-605a-3170-09f1ce3d619b&psq=linkdin&u=a1aHR0cHM6Ly9pbi5saW5rZWRpbi5jb20v&ntb=1" target="_blank"><img src="https://cdn-icons-png.flaticon.com/128/14715/14715341.png" alt="LinkedIn" style="width: 30px;"></a>
        </div>
        <div class="footer-bottom">
        <center><p>© 2025 DishDispatch - All Rights Reserved</p></center>
    </div>
        
    </div>

   
    
</body>
</html>
