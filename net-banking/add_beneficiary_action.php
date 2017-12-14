<?php
    include "validate_customer.php";
    include "header.php";
    include "customer_navbar.php";
    include "customer_sidebar.php";
    include "session_timeout.php";

    $fname = mysqli_real_escape_string($conn, $_POST["fname"]);
    $lname = mysqli_real_escape_string($conn, $_POST["lname"]);
    $acno = mysqli_real_escape_string($conn, $_POST["acno"]);
    $email = mysqli_real_escape_string($conn, $_POST["email"]);
    $phno = mysqli_real_escape_string($conn, $_POST["phno"]);

    $id = $_SESSION['loggedIn_cust_id'];
    $sql0 = "SELECT cust_id FROM customer WHERE first_name='".$fname."' AND
                                                last_name='".$lname."' AND
                                                account_no='".$acno."' AND
                                                email='".$email."' AND
                                                phone_no='".$phno."'";
    $result = $conn->query($sql0);

    $success = 0;
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $beneficiary_id = $row["cust_id"];

        if ($id != $beneficiary_id) {
            $sql1 = "INSERT INTO beneficiary".$id." VALUES(
                        NULL,
                        '$beneficiary_id',
                        '$email',
                        '$phno',
                        '$acno'
                    )";

            if (($conn->query($sql1) === TRUE)) {
                $success = 1;
            }
        }
        else {
            $success = -1;
        }
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
            if ($success == 1) { ?>
                <p id="info"><?php echo "Beneficiary successfully added !\n"; ?></p>
            <?php } ?>

            <?php
            if ($success == 0) { ?>
                <p id="info"><?php echo "Invalid data entered/Connection error !\n"; ?></p>
            <?php } ?>

            <?php
            if ($success == -1) { ?>
                <p id="info"><?php echo "Can't add self as beneficiary !\n"; ?></p>
            <?php } ?>
        </div>

        <div class="flex-item">
            <a href="/beneficiary.php" class="button">Go Back</a>
        </div>
    </div>

</body>
</html>
