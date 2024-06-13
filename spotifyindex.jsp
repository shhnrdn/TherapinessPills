<%-- 
    Document   : spotifyindex
    Created on : 8 Jun 2024, 2:13:31 pm
    Author     : nurin
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--Font Awesome-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.7.2/css/all.min.css" />

    <!--Google Fonts-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Candal&family=Lora:ital,wght@0,400..700;1,400..700&display=swap" rel="stylesheet">

    <!--Custom Styling-->
    <link rel="stylesheet" href="assets/stylesheets/spstyle.css">
    <link rel="stylesheet" href="assets/stylesheets/spotify.css">

    <title>Spotify</title>
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
                    <i class="fa fa-user" style="font-size:.8em;"></i>
                    <%= (String) session.getAttribute("username") %>
                    <i class="fa fa-chevron-down"></i>
                </a>
                <ul>
                    <li><a href="#">Dashboard</a></li>
                    <li><a href="index.html" class="logout">Logout</a></li>
                </ul>
            </li>
        </ul>
      </div>
    </div>
</header>

      <div class="spotify-playlists">
        <h2>Healing Playlists</h2>

        <div class="list">
          <div class="item">
          <div class="post">
            <img src="assets/image/Thoughts.jpeg" alt="" class="slider-image" />
            <div class="play">
              <span class="fa fa-play"></span>
            </div>
            <div class="post-info">
                        <h3><a href="https://open.spotify.com/playlist/5k4B5UWv3O7iCNJHYrpOHD">Healing Playlist For You</a></h3>
<p>Need some time to heal? Listen to this playlist.</p>
          </div>
</div>
</div>

          <div class="item">
            <img src="assets/image/spotify2.png" alt="" class="slider-image" />
            <div class="play">
              <span class="fa fa-play"></span>
            <div class="post-info">
                        <h3><a href="https://open.spotify.com/playlist/37i9dQZF1DXdGHPXiRsW3u?si=59f18befb0524d2e">Soft 00s</a></h3>
<p>Mellow songs from the 2000s</p>
                    </div>
                </div>
             </div>

          <div class="item">
            <img src="assets/image/spotify3.png" alt="" class="slider-image" />
            <div class="play">
              <span class="fa fa-play"></span>
            <div class="post-info">
                        <h3><a href="https://open.spotify.com/album/19zU4YKQ8Gdn8QYQvXumhO?si=CRKa6u15QDeBo2oAgydbaw">In all of my lonely nights</a></h3>
<p>by Henry Moodie</p>
                    </div>
                </div>
             </div>

          <div class="item">
            <img src="assets/image/spotify4.jpg" alt="" class="slider-image" />
            <div class="play">
              <span class="fa fa-play"></span>
            <div class="post-info">
                        <h3><a href="https://open.spotify.com/playlist/37i9dQZF1DWTwnEm1IYyoj?si=0ae3e3a63aa14c4c">Soft Pop Hits
</a></h3>
<p>Warm familiar pop you know and love.</p>
                    </div>
                </div>
             </div>


          <div class="item">
            <img src="assets/image/spotify5.png" alt="" class="slider-image" />
            <div class="play">
              <span class="fa fa-play"></span>
            <div class="post-info">
                        <h3><a href="https://open.spotify.com/playlist/0f9JPRQgG7rEY1xveqJFY9?si=20e3815107da40de">Galau songs
</a></h3>
<p>No one understand our feelings but this playlist>></p>
                    </div>
                </div>
             </div>

          <div class="item">
            <img src="assets/image/spotify6.png" alt="" class="slider-image" />
            <div class="play">
              <span class="fa fa-play"></span>
            <div class="post-info">
                        <h3><a href="https://open.spotify.com/playlist/37i9dQZF1EIV5ihzgPnqBl?si=9cf1fe3e441841b6">Olivia Rodrigo Mix
</a></h3>
<p>Conan Gray, Billie Eilish and Gracie</p>
                    </div>
                </div>
             </div>
</div>
</div>

          

      <div class="spotify-playlists">
        <h2>Popular Radio</h2>
        <div class="list">
          <div class="item">
            <img src="assets/image/mahalini.png" alt="" class="slider-image" />
            <div class="play">
              <span class="fa fa-play"></span>
            <div class="post-info">
                        <h3><a href="https://open.spotify.com/playlist/37i9dQZF1E4xUOwfZNuVCq?si=4727efa91d1a4669">Mahalini Radio
</a></h3>
<p>With Ziva Magnolya, Tiara Andini, Lyodra and more</p>
                    </div>
                </div>
             </div>

          <div class="item">
            <img src="assets/image/alanWalker.png" alt="" class="slider-image" />
            <div class="play">
              <span class="fa fa-play"></span>
            <div class="post-info">
                        <h3><a href="https://open.spotify.com/playlist/37i9dQZF1E4s96jJgqDgvl?si=597697c0a1a144f0">Alan Walker Radio
</a></h3>
<p>With Marshmello, Martin Garrix, DJ Snake and more</p>
                    </div>
                </div>
             </div>

          <div class="item">
            <img src="assets/image/maroon5.png" alt="" class="slider-image" />
            <div class="play">
              <span class="fa fa-play"></span>
            <div class="post-info">
                        <h3><a href="https://open.spotify.com/playlist/37i9dQZF1E4Dq9hULB4Jhq?si=ff92a2cc19024402">Maroon 5 Radio
</a></h3>
<p>With OneRepublic, Jason Mraz, Train and more</p>
                    </div>
                </div>
             </div>

          <div class="item">
            <img src="assets/image/coldplay.png" alt="" class="slider-image" />
            <div class="play">
              <span class="fa fa-play"></span>
            <div class="post-info">
                        <h3><a href="https://open.spotify.com/playlist/37i9dQZF1E4FhRRLh0mmxG?si=34ee1f7dc5144146">Coldplay Radio
</a></h3>
<p>With OneRepublic, Oasis, Maroon 5 and more</p>
                    </div>
                </div>
             </div>

          <div class="item">
            <img src="assets/image/insomniacks.png" class="slider-image" />
            <div class="play">
              <span class="fa fa-play"></span>
            <div class="post-info">
                        <h3><a href="https://open.spotify.com/playlist/37i9dQZF1E4yfwJ2wmu4BX?si=e2b927845c894c1b">Insomniacks Radio
</a></h3>
<p>With Daiyan Trisha, Andi Bernadee, Hael Husaini and more</p>
                    </div>
                </div>
             </div>
          
          <div class="item">
            <img src="assets/image/peterpan.png" class="slider-image" />
            <div class="play">
              <span class="fa fa-play"></span>
            <div class="post-info">
                        <h3><a href="https://open.spotify.com/playlist/37i9dQZF1E4C7slNK7I4Ed?si=eb9745c085a346c6">Peterpan Radio
</a></h3>
<p>With Letto, Ungu, SAMSONS and more</p>
                    </div>
                </div>
             </div>
        </div>
      </div>

      
      </div>


    <script
      src="https://kit.fontawesome.com/23cecef777.js"
      crossorigin="anonymous"
    ></script>
  </body>
<div class="footer">
    <p>Copyright 2024 The Therapiness Pills | All rights reserved</p>
</div>

</html>
