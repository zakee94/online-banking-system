<?php
    include "header.php";
?>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="session_expired_style.css">
</head>


<body>
    <div class="flex-container">
        <div class="flex-item">
            <img id="session" src="/images/hourglass.png">
        </div>
        <div class="flex-item-message">
            <h1 id="session">Session Expired !</h1>
            <p id="session">
                For security reasons if your account remains inactive for more
                than 5 minutes, you are automatically logged out.<br><br>
                Please sign-in again. :)
            </p>
        </div>
        <div class="flex-item">
            <a href="/home.php" class="button">Go Home</a>
        </div>
    </div>

</body>
</html>
