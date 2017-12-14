<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="navbar_style.css">
    <script src="jquery-3.2.1.min.js"></script>
</head>

<body>
    <div class="nav-wrapper">
    <div class="topnav" id="theTopNav">
        <a href="/home.php">HOME</a>
        <a href="/news.php">NEWS</a>
        <a href="/contact.php">CONTACT</a>
        <a href="#about">ABOUT US</a>
        <a href="javascript:void(0);" class="icon" onclick="respFunc()">&#9776;</a>
    </div>
    </div>

<script>
function respFunc() {
    var x = document.getElementById("theTopNav");
    console.log(x);

    if (x.className === "topnav") {
        x.className += " responsive";
        return 0;
    }

    if (x.className === "topnav navbar-fixed") {
        x.className += " responsive";
        return 0;
    }

    if (x.className === "topnav responsive") {
        x.className = "topnav";
        return 0;
    }

    if (x.className === "topnav navbar-fixed responsive" || x.className === "topnav responsive navbar-fixed") {
        x.className = "topnav navbar-fixed";
        return 0;
    }
}

// Function below is jquery-3 function used for making the navbar sticky
$(document).ready(function() {
  $(window).scroll(function () {
    if ($(window).scrollTop() > 120) {
      $("#theTopNav").addClass('navbar-fixed');
    }
    if ($(window).scrollTop() < 121) {
      $("#theTopNav").removeClass('navbar-fixed');
  }
  });
});
</script>

</body>
</html>
