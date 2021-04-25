<!doctype html>
<html lang="en" class="md">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, shrink-to-fit=no, viewport-fit=cover">
    <link rel="stylesheet" href="vendor/bootstrap-4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="vendor/materializeicon/material-icons.css">
    <link rel="stylesheet" href="vendor/swiper/css/swiper.min.css">
    <link id="theme" rel="stylesheet" href="css/style.css" type="text/css">
    <title>partner app</title>
</head>

<body class="color-theme-yellow push-content-right theme-light">
    <div class="loader justify-content-center ">
        <div class="maxui-roller align-self-center"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>
    </div>
    <div class="wrapper">
        <!-- sidebar left start -->
         <?php include("sidebar.php");?>
          <!-- page main start -->
        <div class="page">
            <form class="searchcontrol">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <button type="button" class="input-group-text close-search"><i class="material-icons">keyboard_backspace</i></button>
                    </div>
                    <input type="email" class="form-control border-0" placeholder="Search..." aria-label="Username">
                </div>
            </form>
            <?php include("header.php");?>
            <div class="page-content">
                <div class="content-sticky-footer">
                <div class="container text-center mt-4">
                    <img src="img/404.png" alt="404" class="mw-100">
                    <h4>Sorry</h4>
                    <p>Requested content not found.</p>
                </div>
                <br>
                </div>               
            </div>
        </div>
        <!-- page main ends -->

    </div>


    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1.3/js/bootstrap.min.js"></script>

    <!-- Cookie jquery file -->
    <script src="vendor/cookie/jquery.cookie.js"></script>

    <!-- sparklines chart jquery file -->
    <script src="vendor/sparklines/jquery.sparkline.min.js"></script>

    <!-- Circular progress gauge jquery file -->
    <script src="vendor/circle-progress/circle-progress.min.js"></script>

    <!-- Swiper carousel jquery file -->
    <script src="vendor/swiper/js/swiper.min.js"></script>

    <!-- Application main common jquery file -->
    <script src="js/main.js"></script>

    <!-- page specific script -->
    <script>
        $(window).on('load', function() {
            /* sparklines */
            $(".dynamicsparkline").sparkline([5, 6, 7, 2, 0, 4, 2, 5, 6, 7, 2, 0, 4, 2, 4], {
                type: 'bar',
                height: '25',
                barSpacing: 2,
                barColor: '#a9d7fe',
                negBarColor: '#ef4055',
                zeroColor: '#ffffff'
            });

            /*Swiper carousel */
            var mySwiper = new Swiper('.swiper-container', {
                slidesPerView: 1,
                spaceBetween: 0,
                pagination: {
                    el: '.swiper-pagination',
                    clickable: true,
                }
            });
            /* tooltip */
            $(function() {
                $('[data-toggle="tooltip"]').tooltip()
            });
        });

    </script>
</body>

</html>
