<?php
    /* Avoid multiple sessions warning
    Check if session is set before starting a new one. */
    if(!isset($_SESSION)) {
        session_start();
    }

    include "validate_customer.php";
    include "connect.php";
    include "header.php";
    include "customer_navbar.php";
    include "customer_sidebar.php";
    include "verify_beneficiary.php";
    include "session_timeout.php";

    if (isset($_SESSION['loggedIn_cust_id'])) {
        $sql0 = "SELECT * FROM beneficiary".$_SESSION['loggedIn_cust_id'];
    }
?>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="manage_customers_style.css">
</head>

<body>
    <div class="search-bar-wrapper">
        <div class="search-bar" id="the-search-bar">
            <div class="flex-item-search-bar" id="fi-search-bar">
                <a class="add-button" href="/add_beneficiary.php">Add</a>

                <form class="search_form" action="" method="post">
                    <div class="flex-item-search">
                        <input name="search" size="30" type="text" placeholder="Search Beneficiaries..." />
                    </div>

                    <div class="flex-item-search-button">
                        <button type="submit" name="submit" id="search"></button>
                    </div>

                    <div class="flex-item-by">
                        <label for="by">By :</label>
                    </div>

                    <div class="flex-item-search-by">
                        <select name="by" id="by">
                            <option value="name">Name</option>
                            <option value="acno">Ac/No</option>
                        </select>
                    </div>
                </form>

            </div>
        </div>
    </div>

    <div class="flex-container">
        <p id="info">Send to, Add/Delete Beneficiaries.</p>
        <?php
            $result = $conn->query($sql0);
            $isBenefPresent = 0;
            $back_button = FALSE;

            if ($result->num_rows > 0) {
            // output data of each row
            $i = 0;
            while($row = $result->fetch_assoc()) {
                $i++;

                if (isset($_POST['submit'])) {
                    $back_button = TRUE;
                    $search = $_POST['search'];
                    $by = $_POST['by'];

                    if ($by == "name") {
                        $sql1 = "SELECT cust_id, first_name, last_name, account_no FROM customer
                        WHERE cust_id=".$row["benef_cust_id"]." AND (first_name LIKE '%$search%'
                        OR last_name LIKE '%$search%' OR CONCAT(first_name, ' ', last_name) LIKE '%$search%')";
                    }
                    else {
                        $sql1 = "SELECT cust_id, first_name, last_name, account_no FROM customer
                        WHERE cust_id=".$row["benef_cust_id"]." AND account_no LIKE '$search'";
                    }
                }
                else {
                    $sql1 = "SELECT cust_id, first_name, last_name, account_no
                             FROM customer WHERE cust_id=".$row["benef_cust_id"];
                }

                $result1 = $conn->query($sql1);
                if ($result1->num_rows > 0) {
                    $isBenefPresent = 1;
                    $row1 = $result1->fetch_assoc();
                ?>

                    <div class="flex-item">
                        <div class="flex-item-1">
                            <p id="id"><?php echo $i . "."; ?></p>
                        </div>
                        <div class="flex-item-2">
                            <p id="name"><?php echo $row1["first_name"] . " " . $row1["last_name"]; ?></p>
                            <p id="acno"><?php echo "Ac/No : " . $row1["account_no"]; ?></p>
                        </div>
                        <div class="flex-item-1">
                            <div class="dropdown">
                                <!--We are dynamically naming each dropdown for every entry in the loop and
                                    passing the respective integer value in the dropdown_func().
                                    This creates adynamic anchor for each button-->
                              <button onclick="dropdown_func(<?php echo $i ?>)" class="dropbtn"></button>
                              <div id="dropdown<?php echo $i ?>" class="dropdown-content">
                                <!--Pass the customer trans_id as a get variable in the link-->
                                <a href="/send_funds.php?cust_id=<?php echo $row1["cust_id"] ?>">Send</a>
                                <a href="/delete_beneficiary.php?cust_id=<?php echo $row1["cust_id"] ?>"
                                     onclick="return confirm('Are you sure?')">Delete</a>
                              </div>
                            </div>
                        </div>
                    </div>

            <?php }}}

            if ($isBenefPresent == 0) { ?>
                <p id="none"> No beneficiaries found :(</p>
            <?php }
            if ($back_button) { ?>
                <div class="flex-container-bb">
                    <div class="back_button">
                        <a href="/beneficiary.php" class="button">Go Back</a>
                    </div>
                </div>
            <?php }
            $conn->close(); ?>
    </div>

    <script>
    /*  The problem with lots of menus sharing same anchor(dropdown-content) is that clicking on
        any of the buttons produces the same output as clicking the first button. Thus only the
        menu associated with the first button opens. This is BIG PROBLEM when we have lots of menus
        inside the while-loop.
        Hence, solve this problem using dynamic naming to create different anchors for different
        buttons.
        This is a proper solution and NOT a hack/workaround */
    function dropdown_func(i) {
        // Dynamic naming of the dropdown #id
        var doc_id = "dropdown".concat(i.toString());

        var dropdowns = document.getElementsByClassName("dropdown-content");
        var i;

        // Close any menus, if opened, before opening a new one
        for (i = 0; i < dropdowns.length; i++) {
            var openDropdown = dropdowns[i];
            if (openDropdown.classList.contains('show')) {
              openDropdown.classList.remove('show');
            }
        }

        document.getElementById(doc_id).classList.toggle("show");
        return false;
    }

    // Close the dropdown if the user clicks outside of it
    window.onclick = function(event) {
      if (!event.target.matches('.dropbtn')) {
        var dropdowns = document.getElementsByClassName("dropdown-content");
        var i;

        for (i = 0; i < dropdowns.length; i++) {
          var openDropdown = dropdowns[i];
          if (openDropdown.classList.contains('show')) {
            openDropdown.classList.remove('show');
          }
        }
      }
    }

    // Sticky search-bar
    $(document).ready(function() {
        var curr_scroll;

        $(window).scroll(function () {
            curr_scroll = $(window).scrollTop();

            if ($(window).scrollTop() > 120) {
                $("#the-search-bar").addClass('search-bar-fixed');

              if ($(window).width() > 855) {
                  $("#fi-search-bar").addClass('fi-search-bar-fixed');
              }
            }

            if ($(window).scrollTop() < 121) {
                $("#the-search-bar").removeClass('search-bar-fixed');

              if ($(window).width() > 855) {
                  $("#fi-search-bar").removeClass('fi-search-bar-fixed');
              }
            }
        });

        // Fixes some 'unfortunate-graphics-derp' while resizing the window
        $(window).resize(function () {
            var class_name = $("#fi-search-bar").attr('class');

            if ((class_name == "flex-item-search-bar fi-search-bar-fixed") && ($(window).width() < 856)) {
                $("#fi-search-bar").removeClass('fi-search-bar-fixed');
            }

            if ((class_name == "flex-item-search-bar") && ($(window).width() > 855) && (curr_scroll > 120)) {
                $("#fi-search-bar").addClass('fi-search-bar-fixed');
            }
        });
    });

    </script>

</body>
</html>
