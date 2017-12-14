<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="easter_egg_style.css">
</head>

<body>
    <!-- The Easter Egg Modal -->
    <div id="eEgg_modal" class="modal-eEgg">
        <div class="modal-content-eEgg">
            <div class="caption" style="border-radius: 5px 5px 0 0;">
                <h3>They float,' it growled, 'they float, Georgie, and when
                    you’re down here with me, you’ll float, too–'</h3>
            </div>
            <img id="eEgg_image" src="/images/pennywise.jpg">
            <div class="caption" style="border-radius: 0 0 5px 5px;">
                <h3 id="footer" style="text-align:center;">Going back in 20s...</h3>
            </div>
        </div>
    </div>

</body>
</html>

<script>
var old_time = 0;
var count = 1;
var eEgg_flag = false;

var modal = document.getElementById('eEgg_modal');
var footer = document.getElementById('footer');

function eEgg_func(){
    var d = new Date();
    var n = d.getTime();
    var new_time = Math.ceil(n/1000);

    if ((new_time - old_time) <= 1) {
        count++;
    }
    else {
        count = 1;
    }
    old_time = new_time;

    if (count > 7 && !eEgg_flag) {
        modal.style.display = "block";
        eEgg_flag = true;

        // Timeout
        setTimeout(function () {
            modal.style.display = "none";
        }, 21000);

        //Timeout text display in the footer
        var now = new Date().getTime();
        var countDownDate = now + 21000;

        setInterval(function() {
          // Get todays date and time
          var now = new Date().getTime();

          // Find the distance between now an the count down date
          var distance = countDownDate - now;

          // Time calculations for seconds
          var seconds = Math.floor((distance % (1000 * 60)) / 1000);

          // Display the result in the element with id="demo"
          document.getElementById("footer").innerHTML =
                            "Going back in "+ seconds + "s...";
        }, 1000);
    }
}
</script>
