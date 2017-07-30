<!DOCTYPE html>
	<div class="navbar-fixed-bottom hidden-print alert alert-info">
	<?php echo " App developed by Samson" ; echo  " || All Rights Reserved © " ; echo date('M Y '); ?>

	<a href="map.php">|| <font color="Red">Get Location </a></font>

	</div>

			<!-- Add footer template above here -->
			<div class="clearfix"></div>
			<?php if(!$_REQUEST['Embedded']){ ?>
				<div style="height: 70px;" class="hidden-print"></div>
			<?php } ?>

		</div> <!-- /div class="container" -->
		<?php if(is_file(dirname(__FILE__) . '/hooks/footer-extras.php')){ include(dirname(__FILE__).'/hooks/footer-extras.php'); } ?>
        

        
        <?php if($_GET['loginFailed'] == 1 || $_GET['signIn'] == 1) 
        {
        ?>

        <style>
        	body{
        		background: url('images/1.jpg') no-repeat fixed center center / cover;
        		}
        </style>
        <?php

        }

        ?>

<!-- On membership signup -->



	</body>
</html>