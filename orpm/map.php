
<?php
$currDir=dirname(__FILE__);
include("$currDir/defaultLang.php");
include("$currDir/language.php");
include("$currDir/lib.php");
include_once("$currDir/header.php");
include_once("$currDir/footer.php");

?>

<html>
<head>
    <title>Map</title>
    <script type='text/javascript'
            src='https://maps.googleapis.com/maps/api/js?key=AIzaSyDFLaJwxTIGpZmwfpbEyOU5XZglUq6-5iM&sensor=false'>
    </script>

    <?php
    $lat= $_POST['lat'];
    $long= $_POST['long'];
    ?>

    <script type='text/javascript'>
        var latitude = "<?php echo $lat; ?>";
        var longitude ="<?php echo $long; ?>";
        function initialize()
        {
            var myLatLng = new google.maps.LatLng(latitude,longitude);

            var mapProp = {
                zoom:8,
                center: myLatLng,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map=new google.maps.Map(document.getElementById('map_canvas'),mapProp);

            var marker = new google.maps.Marker({
                position: myLatLng,
                map: map,
                optimized: false,
                title:'Former About.com Headquarters'
            });
        }


    </script>
</head>
<body onload='initialize()'>

<div id='map_canvas' style='width:; height:100%;'></div>
</body>
</html>

