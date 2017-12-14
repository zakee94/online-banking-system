<?php
    /* Avoid multiple sessions warning
    Check if session is set before starting a new one. */
    if(!isset($_SESSION)) {
        session_start();
    }

    include "validate_admin.php";
    include "connect.php";
    include "header.php";
    include "user_navbar.php";
    include "admin_sidebar.php";
    include "session_timeout.php";

    if (isset($_GET['cust_id'])) {
        $_SESSION['cust_id'] = $_GET['cust_id'];
    }

    $sql0 = "DELETE FROM customer WHERE cust_id=".$_SESSION['cust_id'];
    $sql1 = "DROP TABLE passbook".$_SESSION['cust_id'];
    $sql2 = "DROP TABLE beneficiary".$_SESSION['cust_id'];

?>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="action_style.css">
</head>

<body>
    <div class="flex-container">
        <div class="flex-item">
            <?php
                if (($conn->query($sql0) === TRUE)) { ?>
                    <p id="info"><?php echo "Customer Deleted Successfully !"; ?></p>
                <?php
                }
                else { ?>
                    <p id="info"><?php echo "Error: " . $sql0 . "<br>" . $conn->error . "<br>"; ?></p>
                <?php
                }
            ?>
        </div>

        <div class="flex-item">
            <?php
                if (($conn->query($sql1) === TRUE)) { ?>
                    <p id="info"><?php echo "Customer's Passbook Deleted Successfully !"; ?></p>
                <?php
                }
                else { ?>
                    <p id="info"><?php echo "Error: " . $sql1 . "<br>" . $conn->error . "<br>"; ?></p>
                <?php
                }
            ?>
        </div>

        <div class="flex-item">
            <?php
                if (($conn->query($sql2) === TRUE)) { ?>
                    <p id="info"><?php echo "Customer's Beneficiary Deleted Successfully !"; ?></p>
                <?php
                }
                else { ?>
                    <p id="info"><?php echo "Error: " . $sql2 . "<br>" . $conn->error . "<br>"; ?></p>
                <?php
                }
            ?>
        </div>
        <?php $conn->close(); ?>

        <div class="flex-item">
            <a href="/manage_customers.php" class="button">Go Back</a>
        </div>

    </div>

</body>
</html>
