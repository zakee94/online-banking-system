<?php
    /* Avoid multiple sessions warning
    Check if session is set before starting a new one. */
    if(!isset($_SESSION)) {
        session_start();
    }

    include "validate_customer.php";
    include "connect.php";
    include "session_timeout.php";

    if (isset($_SESSION['auto_delete_benef'])) {
        if ($_SESSION['auto_delete_benef'] === true) {
            header("location:/auto_delete_beneficiary.php");
        }
    }

    if (isset($_SESSION['loggedIn_cust_id'])) {
        $sql0 = "SELECT * FROM beneficiary".$_SESSION['loggedIn_cust_id'];
    }

    $result = $conn->query($sql0);

    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            $sql1 = "SELECT * FROM customer WHERE
                                cust_id=".$row["benef_cust_id"]." AND
                                email='".$row["email"]."' AND
                                phone_no='".$row["phone_no"]."' AND
                                account_no='".$row["account_no"]."'";

            $result1 = $conn->query($sql1);
            if ($result1->num_rows <= 0) {
                header("location:/delete_beneficiary.php?cust_id=".$row["benef_cust_id"]."&redirect=true");
            }
        }
    }
?>
