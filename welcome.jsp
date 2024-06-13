<%-- 
    Document   : welcome
    Created on : 7 Jun 2024, 4:30:38 pm
    Author     : nurin
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*, javax.servlet.http.*, javax.servlet.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stress Monitor</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Candal&family=Lora:ital,wght@0,400..700;1,400..700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Background */

        body {
            position: relative;
            height: 100vh;
            background: rgb(120, 190, 255);
            background: -moz-linear-gradient(
                180deg,
                rgba(120, 190, 255, 1) 0%,
                rgba(78, 161, 237, 1) 100%
            );
            background: -webkit-linear-gradient(
                180deg,
                rgba(120, 190, 255, 1) 0%,
                rgba(78, 161, 237, 1) 100%
            );
            background: linear-gradient(
                180deg,
                rgba(120, 190, 255, 1) 0%,
                rgba(78, 161, 237, 1) 100%
            );
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#78beff", endColorstr="#4ea1ed", GradientType=1);
            font-family: "Roboto", sans-serif;
        }
        h1, h2, h3, h4, h5, h6 {
            font-family: 'Candal', serif;
            color: #444;
            margin: 3px;
        }
        p {
            font-family: 'Lora', serif;
            color: #444;
            margin: 5px;
        }

        header {
            background: #0758b0;
            height: 66px;
        }

        header * {
            color: white;
        }

        header .logo {
            float: left;
            height: inherit;
            margin-left: 2em;
        }

        header .logo-text {
            margin: 9px;
            font-family: 'Candal', serif;
        }

        header .logo-text span {
            color: #89CFF0;
        }

        header ul {
            float: right;
            margin: 0px;
            padding: 0px;
            list-style: none;
        }

        header ul li {
            float: left;
            position: relative;
        }

        header ul li ul {
            position: absolute;
            top: 66px;
            right: 0px;
            width: 180px;
            display: none;
            z-index: 88888;
        }

        header ul li:hover ul {
            display: block;
        }

        header ul li ul li {
            width: 100%;
        }

        header ul li ul li a {
            padding: 10px;
            background: white;
            color: #444;
        }

        header ul li ul li a.logout {
            color: red;
        }

        header ul li ul li a:hover {
            background: #d5d6d6;
        }

        header ul li a {
            display: block;
            padding: 21px;
            font-size: 1.1em;
            text-decoration: none;
        }

        header ul li a:hover {
            background: #031844;
            transition: 0.5s;
        }

        header .menu-toggle {
            display: none;
        }
        .page-wrapper {
            position: relative;
            min-height: 100%;
        }

        .page-wrapper a:hover {
            color: #0758b0;
        }
        .page-wrapper .post-wrapper .post a {
            text-decoration: none;
        }
        /* AUTH PAGES */
        .auth-content {
            width: 30%;
            margin: 50px auto;
            padding: 20px;
            background: white;
            border-radius: 5px;
        }

        .auth-content .form-title {
            text-align: center;
        }

        .auth-content form div {
            margin-bottom: 10px;
        }

        .auth-content form p {
            text-align: center;
        }

        .auth-content form p a {
            text-decoration: underline;
        }

        .text-input {
            padding: .7rem 1rem;
            display: block;
            width: 100%;
            border-radius: 5px;
            border: 1px solid #e0e0e0;
            outline: none;
            color: #444;
            line-height: 1.5rem;
            font-size: 1.2em;
            font-family: 'Lora', serif;
        }

        .msg {
            width: 100%;
            margin: 5px auto;
            padding: 8px;
            border-radius: 5px;
            list-style: none;
        }

        .success {
            color: #3a6e3a;
            border: 1px solid #3a6e3a;
            background: #bcf5bc;
        }

        .error {
            color: #884b4b;
            border: 1px solid #884b4b;
            background: #f5bcbc;
        }
        .btn {
            padding: .5rem 1rem;
            background: #0758b0;
            color: white;
            border: 1px solid transparent;
            border-radius: .25rem;
            font-size: 1.08em;
            font-family: 'Lora', serif;
        }

        .btn-big {
            padding: .7rem 1.3rem;
            line-height: 1.3rem;
        }

        .btn:hover {
            color: white !important;
            background: #031844;
        }


        /* POST SLIDER */
        .post-slider {
            position: relative;
            height: 40%;
        }

        .post-slider .slider-title {
            text-align: center;
            margin: 10px auto;
        }

        .post-slider .prev,
        .post-slider .next {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            font-size: 2em;
            color: #0758b0;
            cursor: pointer;
            z-index: 1000; /* Ensuring it appears above other elements */
        }

        .post-slider .prev {
            left: 30px;
        }

        .post-slider .next {
            right: 30px;
        }

        .post-slider .post-wrapper .post {
            width: 300px;
            height: 330px;
            margin: 0 10px;
            display: inline-block;
            background: white;
            border-radius: 5px;
            box-shadow: 1rem 1rem 1rem -1rem #a0a0a033;
        }

        .post-slider .post-wrapper .post .post-info {
            height: 130px;
            padding: 0 5px;
            border: 1px solid red;
        }

        .post-slider .post-wrapper .post .slider-image {
            width: 100%;
            height: 200px;
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
        }

        .slick-prev,
        .slick-next {
            font-size: 24px;
            line-height: 1;
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            display: block;
            color: #3498db;
            border: none;
            padding: 0;
            cursor: pointer;
            background: none;
        }

        .slick-prev {
            left: -40px;
        }

        .slick-next {
            right: -40px;
        }

        /* Background Clouds */

        .cloud1 {
            position: absolute;
            width: 20vw;
            top: 25vh;
            left: 5rem;
            z-index: -1;
            animation: cloud1Movement 15s infinite alternate-reverse;
        }

        .cloud2 {
            position: absolute;
            width: 25vw;
            top: 3rem;
            right: 5rem;
            z-index: -1;
            animation: cloud2Movement 10s infinite alternate-reverse;
        }

        @keyframes cloud1Movement {
            from {
                transform: translateY(3rem);
            }
            to {
                transform: translateY(0rem);
            }
        }

        @keyframes cloud2Movement {
            from {
                transform: translateX(-5rem);
            }
            to {
                transform: translateX(0rem);
            }
        }

        /* Main Content */

        main {
            width: 100%;
            height: 70%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* Glass Panel */

        .content {
            background: white;
            width: 60%;
            height: 60%;
            border-radius: 2.5rem;
            background: linear-gradient(
                to right bottom,
                rgba(255, 255, 255, 0.7),
                rgba(255, 255, 255, 0.3)
            );
            backdrop-filter: blur(2rem);
            padding: 2rem 3rem;
            display: flex;
            flex-direction: column;
        }

        .content h2 {
            text-align: center;
            color: #1c73d9;
        }

        .chart-title {
            margin-bottom: 1rem;
        }

        /* Select Inputs */

        .chart-controls {
            margin-bottom: 2rem;
        }

        select {
            background: linear-gradient(to right bottom, #60c6ff, #298cff);
            font-size: 1rem;
            padding: 0.5rem;
            border: none;
            border-radius: 10px;
            font-weight: bold;
            color: white;
            outline: none;
            cursor: pointer;
        }

        select option {
            color: black;
        }

        .stress-meter meter {
            width: 100%; /* Adjust width as needed */
            height: 50px; /* Adjust height as needed */
        }

        .emoji {
            font-size: 3rem;
            text-align: center;
            margin-top: 1rem;
        }

        /* Input Popup */

        .input-wrapper {
            position: fixed;
            top: 0;
            left: 0;
            background: rgba(0, 0, 0, 0.5);
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            transition: all 0.5s ease-in-out;
            opacity: 0;
            pointer-events: none;
        }

        .input-wrapper.active {
            opacity: 1;
            pointer-events: all;
        }

        .input-popup {
            background: white;
            height: 30vh;
            width: 20%;
            border-radius: 2rem;
            transform: scale(1.3);
            transition: transform 0.5s ease-in-out;
        }

        .input-popup.active {
            transform: scale(1);
        }

        .input-form {
            width: 100%;
            height: 100%;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: space-around;
        }

        .input-submit-button {
            background: linear-gradient(to right bottom, #60c6ff, #298cff);
            font-size: 1rem;
            padding: 0.5rem;
            border: none;
            border-radius: 10px;
            font-weight: bold;
            color: white;
            cursor: pointer;
            padding-left: 2rem;
            padding-right: 2rem;
        }

        .no-data-message {
            margin: auto;
        }

        .display-none {
            display: none;
        }

        /* Mobile Styles */

        .footer {
            position: fixed;
            left: 0;
            bottom: 0;
            height: 40px;
            width: 100%;
            background-color: royalblue;
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
        }
    </style>
</head>
<body>
    <%
        String userId = (String) session.getAttribute("userId");
        String username = "";
        if (userId != null) {
            // Database connection details
            String jdbcUrl = "jdbc:mysql://localhost:3306/userprofile";
            String dbUser = "root";
            String dbPassword = "admin";
            String jdbcDriver = "com.mysql.cj.jdbc.Driver";

            Connection conn = null;
            PreparedStatement ps = null;
            ResultSet rs = null;

            try {
                // Load the JDBC driver
                Class.forName(jdbcDriver);

                // Establish the connection
                conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

                // SQL query to fetch the username based on user ID
                String mySqlQuery = "SELECT username FROM user WHERE id = ?";
                ps = conn.prepareStatement(mySqlQuery);
                ps.setString(1, userId);

                // Execute the query
                rs = ps.executeQuery();

                if (rs.next()) {
                    username = rs.getString("username");
                }

                // Close the resources
                rs.close();
                ps.close();
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
                if (ps != null) try { ps.close(); } catch (SQLException e) { e.printStackTrace(); }
                if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
            }
        }
    %>
    <header>
        <div class="logo">
            <h1 class="logo-text"><span>Therapiness</span>Pills</h1>
        </div>
        <i class="fa fa-bars menu-toggle"></i>
        <ul class="nav">
            <li><a href="#">Home</a></li>
            <% if (userId != null) { %>
            <li>
                <a href="#">
                    <i class="fa fa-user" style="font-size:.8em;"></i>
                    <%= username %>
                    <i class="fa fa-chevron-down"></i>
                </a>
                <ul>
                    <li><a href="#">Dashboard</a></li>
                    <li><a href="index.html" class="logout">Logout</a></li>
                </ul>
            </li>
            <% } else { %>
            <li><a href="index.html">Sign Up</a></li>
            <li>
                <a href="login.html">
                    <i class="fa fa-user" style="font-size:.8em;"></i>
                    Login
                </a>
            </li>
            <% } %>
        </ul>
    </header>

    <main>
        <section class="content">
            <div class="chart-controls">
                <select class="chart-range range-year display-none" name="chart-range"></select>
                <input type="month" class="chart-range range-month display-none" name="chart-range">
            </div>
            <h2 class="chart-title">How do you feel today?&nbsp;</h2>
            <div class="meter-container">
                <div class="stress-meter">
                    <meter id="stressMeter" low="10" high="100" min="0" max="100" optimum="50" value="40">40/100</meter>
                </div>
                <div id="emoji" class="emoji"></div>
            </div>
        </section>
        <div class="level">
            <select id="stressLevel" name="stressLevel">
                <option value="10">Bad</option>
                <option value="50">Good</option>
                <option value="100">Happy</option>
            </select>
        </div>
    </main>

    <div class="page-wrapper">
        <div class="post-slider">
            <h1 class="slider-title">Only For You!</h1>
            <i class="fas fa-chevron-left prev"></i>
            <i class="fas fa-chevron-right next"></i>
            <div class="post-wrapper">
                <div class="post">
                    <img src="${pageContext.request.contextPath}/assets/image/pic1.jpeg" alt="pic1" class="slider-image">
                    <div class="post-info">
                        <h3><a href="bookingindex.jsp">Calories of vacations do not count!</a></h3>
                        <p>Feels to Travel? <br>Book your travel at Booking.com!</p>
                    </div>
                </div>
                <div class="post">
                    <img src="${pageContext.request.contextPath}/assets/image/pic4.jpeg" alt="pic2" class="slider-image">
                    <div class="post-info">
                        <h3><a href="yindex.jsp">'SHEESH' Relay Dance by BabyMonster!</a></h3>
                        <p>Feels like watching some videos? Watch them on Youtube.com!</p>
                    </div>
                </div>
                <div class="post">
                    <img src="${pageContext.request.contextPath}/assets/image/pic3.jpeg" alt="pic3" class="slider-image">
                    <div class="post-info">
                        <h3><a href="spotifyindex.jsp">Espresso by Sabrina Carpenter: &nbsp; <br> "Is it that sweet?" I guess so..</a></h3>
                        <p>Feels like listening to music? Stream on Spotify.com!</p>
                    </div>
                </div>
                <div class="post">
                    <img src="${pageContext.request.contextPath}/assets/image/Thoughts.jpeg" alt="pic4" class="slider-image">
                    <div class="post-info">
                        <h3><a href="spotifyindex.jsp">Healing Playlist For You</a></h3>
                        <p>Need some time to heal? Listen to this playlist.</p>
                    </div>
                </div>
                <div class="post">
                    <img src="${pageContext.request.contextPath}/assets/image/pic6.jpeg" alt="pic6" class="slider-image">
                    <div class="post-info">
                        <h4><a href="bookingindex.jsp">Come visit one of the longest bridge in the world!</a></h4>
                        <p>Visit one of the longest bridge in the world which is in Pulau Pinang, named Pulau Pinang Bridge.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <svg class="cloud1" width="542" height="264" viewBox="0 0 542 264" fill="none" xmlns="http://www.w3.org/2000/svg">
        <circle cx="409.972" cy="132" r="132" fill="#E5E5E5"/>
        <circle cx="102.953" cy="161.047" r="102.953" fill="#E5E5E5"/>
        <circle cx="231.98" cy="105.98" r="88.9805" fill="#E5E5E5"/>
        <rect x="102.217" y="146.34" width="308.123" height="117.66" fill="#E5E5E5"/>
    </svg>
    <svg class="cloud2" width="665" height="376" viewBox="0 0 665 376" fill="none" xmlns="http://www.w3.org/2000/svg">
        <circle cx="528" cy="239" r="137" fill="#E5E5E5"/>
        <circle cx="109" cy="267" r="109" fill="#E5E5E5"/>
        <circle cx="231" cy="217" r="121" fill="#E5E5E5"/>
        <circle cx="412" cy="162" r="162" fill="#E5E5E5"/>
        <rect x="109" y="216" width="419" height="160" fill="#E5E5E5"/>
    </svg>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const stressLevel = document.getElementById('stressLevel');
            const stressMeter = document.getElementById('stressMeter');
            const emoji = document.getElementById('emoji');

            stressLevel.addEventListener('change', function() {
                stressMeter.value = stressLevel.value;
                updateEmoji(stressLevel.value);
            });

            function updateEmoji(value) {
                let emojiSymbol;
                if (value == 10) {
                    emojiSymbol = '😞';
                } else if (value == 50) {
                    emojiSymbol = '😊';
                } else if (value == 100) {
                    emojiSymbol = '😂';
                } else {
                    emojiSymbol = '';
                }
                emoji.textContent = emojiSymbol;
            }

            updateEmoji(stressLevel.value);

            if ($('.post-wrapper').length) {
                $('.post-wrapper').slick({
                    slidesToShow: 3,
                    slidesToScroll: 1,
                    autoplay: true,
                    autoplaySpeed: 2000,
                    nextArrow: $('.next'),
                    prevArrow: $('.prev'),
                    responsive: [
                        {
                            breakpoint: 1024,
                            settings: {
                                slidesToShow: 3,
                                slidesToScroll: 3,
                                infinite: true,
                                dots: true
                            }
                        },
                        {
                            breakpoint: 600,
                            settings: {
                                slidesToShow: 2,
                                slidesToScroll: 2
                            }
                        },
                        {
                            breakpoint: 480,
                            settings: {
                                slidesToShow: 1,
                                slidesToScroll: 1
                            }
                        }
                    ]
                });
            }
        });
    </script>
    <div class="footer">
        <p>Copyright 2024 The Therapiness Pills | All rights reserved</p>
    </div>
</body>
</html>
