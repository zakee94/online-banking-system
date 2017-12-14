<?php
    include "validate_customer.php";
    include "header.php";
    include "customer_navbar.php";
    include "customer_sidebar.php";
    include "session_timeout.php";

    $id = $_SESSION['loggedIn_cust_id'];
    $amt = mysqli_real_escape_string($conn, $_POST["amt"]);
    $type = mysqli_real_escape_string($conn, $_POST["type"]);
    $pin = mysqli_real_escape_string($conn, $_POST["pin"]);

    $sql0 = "SELECT balance FROM passbook".$id." ORDER BY trans_id DESC LIMIT 1";
    $result = $conn->query($sql0);
    $row = $result->fetch_assoc();
    $balance = $row["balance"];

    /*  Set appropriate error number if errors are encountered.
        Key (for err_no) :
        -1 = Connection Error.
         0 = Successful Transaction.
         1 = Insufficient Funds.
         2 = Wrong PIN entered. */
    $err_no = -1;

    $sql_pin = "SELECT * FROM customer WHERE cust_id=".$id." AND pin='".$pin."'";
    $result_pin = $conn->query($sql_pin);

    if (($result_pin->num_rows) > 0) {
        // For Credit transactions
        if ($type == "credit") {
            $final_balance = $balance + $amt;

            $sql1 = "INSERT INTO passbook".$id." VALUES(
                        NULL,
                        NOW(),
                        'Cash Deposit',
                        '0',
                        '$amt',
                        '$final_balance'
                    )";

            if (($conn->query($sql1) === TRUE)) {
                $err_no = 0;
            }
        }

        // For Debit transactions
        if ($type == "debit") {
            $final_balance = $balance - $amt;

            if ($final_balance >= 0) {
                $sql1 = "INSERT INTO passbook".$id." VALUES(
                            NULL,
                            NOW(),
                            'Cash to Self',
                            '$amt',
                            '0',
                            '$final_balance'
                        )";

                if (($conn->query($sql1) === TRUE)) {
                    $err_no = 0;
                }
            }
            else {
                $err_no = 1;
            }
        }
    }
    else {
        $err_no = 2;
    }
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
            if ($err_no == -1) { ?>
                <p id="info"><?php echo "Connection Error ! Please try again later.\n"; ?></p>
            <?php } ?>

            <?php
            if ($err_no == 0) { ?>
                <p id="info"><?php echo "Transaction Successful !\n"; ?></p>
            <?php } ?>

            <?php
            if ($err_no == 1) { ?>
                <p id="info"><?php echo "Insufficient Funds !\n"; ?></p>
            <?php } ?>

            <?php
            if ($err_no == 2) { ?>
                <p id="info"><?php echo "Wrong PIN Entered !\n"; ?></p>
            <?php } ?>
        </div>

        <div class="flex-item">
            <a href="/atm_simulator.php" class="button">Go Back</a>
        </div>
    </div>

</body>
</html>
