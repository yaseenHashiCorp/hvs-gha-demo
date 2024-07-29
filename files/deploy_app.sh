#!/bin/bash
# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

cat << EOM > /var/www/html/index.html
<html>
  <head><title>Team 2 Rocks!</title></head>
  <body>
  <div style="width:800px;margin: 0 auto">

  <!-- BEGIN -->
  <center><img src="http://${PLACEHOLDER}/${WIDTH}/${HEIGHT}"></img></center>
  <center><h2>Hello Corporate SE Team!</h2></center>
  Welcome to Team 2's app. The name of our HVS secret is: ${APP_SECRET} .
  <!-- END -->

  </div>
  </body>
</html>
EOM

echo "Script complete."
