<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #e9ecef;
            font-family: Arial, sans-serif;
        }

        .contact-container {
            margin: 50px auto;
            max-width: 1000px;
            padding: 20px;
        }

        .contact-header {
            text-align: center;
            margin-bottom: 30px;
        }

        .card {
            border: none;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .contact-info {
            background-color: #343a40;
            color: #fff;
            padding: 30px;
            border-radius: 12px 0 0 12px;
        }

        .contact-info h5 {
            margin-bottom: 20px;
        }

        .form-section {
            padding: 30px;
        }

        .form-section h5 {
            margin-bottom: 20px;
            color: #343a40;
        }

        .social-icons a {
            color: #495057;
            font-size: 1.5rem;
            margin-right: 15px;
            transition: color 0.3s;
        }

        .social-icons a:hover {
            color: #007bff;
        }

        .submit-btn {
            background-color: #343a40;
            color: #fff;
            border: none;
            transition: background-color 0.3s;
        }

        .submit-btn:hover {
            background-color: #495057;
        }

        .iframe-container {
            margin-top: 20px;
            border-radius: 12px;
            overflow: hidden;
        }

        iframe {
            width: 100%;
            height: 300px;
            border: none;
        }
    </style>
</head>
<body>
    <div class="contact-container">
        <div class="contact-header">
            <h1>Get in Touch</h1>
            <p>We'd love to hear from you! Please fill out the form or reach us via the contact details below.</p>
        </div>

        <div class="row">
            <!-- Contact Info -->
            <div class="col-md-5">
                <div class="contact-info card">
                    <h5>Contact Information</h5>
                    <p><strong>Address:</strong> PENTAGON SPACE Plot No.765,8th Cross Road,Bengaluru</p>
                    <p><strong>Phone:</strong> +91 7022769225</p>
                    <p><strong>Email:</strong> shridhar3584@gmail.com</p>
                    <h6>Google Map:</h6>
                    <div class="iframe-container">
                        <!-- Embed Google Map iframe -->
                        <iframe src="https://www.google.com/maps/embed?pb=!1m26!1m12!1m3!1d3887.93519103184!2d77.54136127507651!3d12.975996987339782!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m11!3e6!4m3!3m2!1d12.976128!2d77.545515!4m5!1s0x3bae3d6c513b16a5%3A0x44a65c5cfea3693!2spentagon%20space!3m2!1d12.975608699999999!2d77.5423273!5e0!3m2!1sen!2sin!4v1737898056931!5m2!1sen!2sin" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
            </div>

            <!-- Feedback Form -->
            <div class="col-md-7">
                <div class="form-section card">
                    <h5>Send us a Message</h5>
                    <form action="https://formsubmit.co/mallu4564@gmail.com" method="post" onsubmit="sendEmail();" reset(); return();>
                        <div class="mb-3">
                            <input type="text" class="form-control" placeholder="Your Name">
                        </div>
                        <div class="mb-3">
                            <input type="email" class="form-control" placeholder="Your Email">
                        </div>
                        <div class="mb-3">
                            <input type="tel" class="form-control" placeholder="Your Phone">
                        </div>
                        <div class="mb-3">
                            <textarea class="form-control" rows="4" placeholder="Your Message"></textarea>
                        </div>
                        <button type="submit" class="btn submit-btn w-100">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
    