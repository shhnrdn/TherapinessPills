<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Booking Suggestions</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Candal&family=Lora:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/stylesheets/bookstyle.css">
</head>
<body>

<header>
    <div class="logo">
        <h1><a class="logo-text" href="welcome.jsp"><span>Therapiness</span>Pills</a></h1>
    </div>
    <i class="fa fa-bars menu-toggle"></i>
    <ul class="nav">
        <li>
            <a href="welcome.jsp">Home</a>
        </li>
        <li>
            <a href="#">
                <p><i class="ri-user-fill"><%= (String) session.getAttribute("username") %></i></p>
                <i class="fa fa-chevron-down"></i>
            </a>
            <ul>
                <li><a href="#">Dashboard</a></li>
                <li><a href="index.html" class="logout">Logout</a></li>
            </ul>
        </li>
    </ul>
</header>


<main>
    <div class="content">
        <h1 class="text-center">Places Suggestions</h1>
        <div id="hotelCarousel" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="assets/image/terengganu.jpg" class="d-block w-100" alt="Terengganu">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Terengganu</h5>
                        <p>Beautiful beaches and rich cultural heritage.</p>
                        <a href="https://www.booking.com/searchresults.html?city=Terengganu" class="btn btn-primary" target="_blank">Book Now</a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="assets/image/kelantan.jpg" class="d-block w-100" alt="Kelantan">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Kelantan</h5>
                        <p>Experience the unique traditions and food.</p>
                        <a href="https://www.booking.com/searchresults.html?city=Kelantan" class="btn btn-primary" target="_blank">Book Now</a>
                    </div>
                </div>
                
                <div class="carousel-item">
                    <img src="assets/image/selangor.jpg" class="d-block w-100" alt="Selangor">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Selangor</h5>
                        <p>The bustling state with many attractions.</p>
                        <a href="https://www.booking.com/searchresults.html?city=Selangor" class="btn btn-primary" target="_blank">Book Now</a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="assets/image/kuala lumpur.jpg" class="d-block w-100" alt="Kuala Lumpur">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Kuala Lumpur</h5>
                        <p>The capital city with iconic landmarks.</p>
                        <a href="https://www.booking.com/searchresults.html?city=Kuala%20Lumpur" class="btn btn-primary" target="_blank">Book Now</a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="assets/image/sabah.jpg" class="d-block w-100" alt="Sabah">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Sabah</h5>
                        <p>Adventure in the land below the wind.</p>
                        <a href="https://www.booking.com/searchresults.html?city=Sabah" class="btn btn-primary" target="_blank">Book Now</a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="assets/image/sarawak.jpg" class="d-block w-100" alt="Sarawak">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Sarawak</h5>
                        <p>Explore the rainforests and caves.</p>
                        <a href="https://www.booking.com/searchresults.html?city=Sarawak" class="btn btn-primary" target="_blank">Book Now</a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="assets/image/johor.jpg" class="d-block w-100" alt="Johor">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Johor</h5>
                        <p>Gateway to Singapore and home to Legoland.</p>
                        <a href="https://www.booking.com/searchresults.html?city=Johor" class="btn btn-primary" target="_blank">Book Now</a>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#hotelCarousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#hotelCarousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</main>

<footer>
    <p>Copyright 2024 The Therapiness Pills | All rights reserved</p>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

