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
            <img id="session" src="/images/error.png">
        </div>
        <div class="flex-item-message">
            <h1 id="session-sub">Uh-Oh !</h1>
            <p id="session-sub">
                We have error connecting to database !<br>
            </p>
            <p id="session">
                <b>Error Message: </b>
                <?php
                    if (isset($_GET['error'])) {
                        echo $_GET['error'];
                    }
                ?><br><br>
                Make sure that the database login credentials are correct
                and/or the server is set up properly/responding.<br><br>
                Please try again after sometime. :)
            </p>
        </div>
        <div class="flex-item">
            <a href="/home.php" class="button">Go Home</a>
        </div>
    </div>

</body>
</html>
