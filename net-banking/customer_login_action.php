<?php
    include "connect.php";
    
    /* Avoid multiple sessions warning
    Check if session is set before starting a new one. */
    if(!isset($_SESSION)) {
        session_start();
    }

    $uname = mysqli_real_escape_string($conn, $_POST["cust_uname"]);
    $pwd = mysqli_real_escape_string($conn, $_POST["cust_psw"]);

    $sql0 =  "SELECT * FROM customer WHERE uname='".$uname."' AND pwd='".$pwd."'";
    $result = $conn->query($sql0);
    $row = $result->fetch_assoc();

    if (($result->num_rows) > 0) {
        $_SESSION['loggedIn_cust_id'] = $row["cust_id"];
        $_SESSION['isCustValid'] = true;
        $_SESSION['LAST_ACTIVITY'] = time();
        header("location:customer_home.php");
    }
    else {
        session_destroy();
        die(header("location:home.php?loginFailed=true"));
    }
?>
