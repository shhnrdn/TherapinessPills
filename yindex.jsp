<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Therapiness Pills</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.min.css" />
    <link rel="stylesheet" href="assets/stylesheets/ymain.css" />
    <link rel="shortcut icon" href="assets/images/logo-icon.jpeg">
    <link href="https://fonts.googleapis.com/css2?family=Candal&family=Lora:ital,wght@0,400..700;1,400..700&display=swap" rel="stylesheet">
</head>

<body>
    <div class="header">
        <div class="col-1">
            <i class="ri-menu-line"></i>
            <div class="logo">
                <h1><a class="logo-text" href="welcome.jsp"><span>Therapiness</span>Pills</a></h1>
            </div>
        </div>
        <div class="col-2">
            <form id="search-form">
                <input type="text" placeholder="Search" id="search-input">
            </form>
            <button class="search" id="search-button"><i class="ri-search-line"></i></button>
            <button class="mic"><i class="ri-mic-line"></i></button>
        </div>
        <div class="col-3">
            <i class="ri-video-add-line"></i>
            <i class="ri-notification-fill"></i>
            <p><i class="ri-user-fill"><%= (String) session.getAttribute("username") %></i></p>
        </div>
    </div>

    <div class="wrapper">
        <div class="sidebar">
            <div class="list1">
                <a class="sidebar-item" href="yindex.jsp"><i class="ri-home-5-line"></i>Home</a>
                <a class="sidebar-item"><i class="ri-compass-3-line"></i>Explore</a>
                <a class="sidebar-item"><i class="ri-wireless-charging-fill"></i>Shorts</a>
                <a class="sidebar-item"><i class="ri-rss-line"></i>Subscription</a>
                <hr />
                <a class="sidebar-item"><i class="ri-links-line"></i>Library</a>
                <a class="sidebar-item"><i class="ri-history-line"></i>History</a>
                <a class="sidebar-item"><i class="ri-video-line"></i>Your Videos</a>
                <a class="sidebar-item"><i class="ri-time-line"></i>Shorts</a>
                <a class="sidebar-item"><i class="ri-play-list-2-line"></i>All Videos</a>
                <a class="sidebar-item"><i class="ri-arrow-down-s-line"></i>Show More</a>

                <h4 class="more">More From Therapiness Pills</h4>
                <a class="sidebar-item"><i class="ri-keyboard-box-line"></i>Gaming</a>
                <a class="sidebar-item"><i class="ri-live-line"></i>Live</a>
                <a class="sidebar-item"><i class="ri-award-line"></i>Sports</a>
                <hr />
                <a class="sidebar-item"><i class="ri-settings-5-line"></i>Settings</a>
                <a class="sidebar-item"><i class="ri-flag-line"></i>Report History</a>
                <a class="sidebar-item"><i class="ri-question-line"></i>Help</a>
                <a class="sidebar-item"><i class="ri-feedback-line"></i>Send feedback</a>
            </div>
        </div>

        <div class="content">
            <div class="tag-line">
                <div class="tag">
                    <p>All</p>
                </div>
                <div class="tag">
                    <p>ASMR</p>
                </div>
                <div class="tag">
                    <p>Weekly Vlog</p>
                </div>
                <div class="tag">
                    <p>Healing</p>
                </div>
                <div class="tag">
                    <p>Travel</p>
                </div>
                <div class="tag">
                    <p>Music</p>
                </div>
                <div class="tag">
                    <p>Movies</p>
                </div>
                <div class="tag">
                    <p>Gaming</p>
                </div>
                <div class="tag">
                    <p>GRWM</p>
                </div>
                <div class="tag">
                    <p>Kdrama</p>
                </div>
                <div class="tag">
                    <p>Jdrama</p>
                </div>
                <div class="tag">
                    <p>Netflix</p>
                </div>
                <div class="tag">
                    <p>Study Playlist</p>
                </div>
                <div class="tag">
                    <p>Cooking Recipe</p>
                </div>
                <div class="tag">
                    <p>Music Videos</p>
                </div>
            </div>

            <div class="video-wrapper">

            </div>
        </div>
    </div>
    <div class="footer">
        <h4>Copyright 2024 The Therapiness Pills | All rights reserved</h4>
    </div>
    <script>
        document.getElementById('menu-icon').addEventListener('click', function() {
            const sidebar = document.getElementById('sidebar');
            const content = document.getElementById('content');
            sidebar.classList.toggle('collapsed');
            content.classList.toggle('collapsed');
        });
    </script>
    <script src="assets/javascripts/yjavascripts.js"></script>
</body>
</html>
