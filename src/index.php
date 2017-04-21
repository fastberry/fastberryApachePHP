 <!DOCTYPE html>
<html>
<body>

  <h1>fastberry/apachephp docker container</h1>

  <h2>Apache2</h2>

  If you can see this text the apache2 web server is successfully running inside the fastberry/apachephp docker container.
  
  <h2>PHP Test and Configuration<h2>

<?php
   echo "If you can see this the docker container with the apache2 and php5 is running successfully. ";
   echo "The following is the output from phpinfo() and gives information about the php configuration:";
   phpinfo();
?>

</html>
</body>

