#!/bin/bash

# Input for sender email
read -p "Enter your email : " sender


# Input for recipient email
read -p "Enter recipient email : " receiver

# Input for google app password
read -p "Enter your Google App Password : " gapp

# Input for subject of the mail
read -p "Enter the subject of mail : " sub

# Using cat command to input multiline text to a variable ( from file)
echo "Enter the body of the mail : "
cat > tempfile.txt # cat command to input multiline text to a file
body=$(cat tempfile.txt) # cat command to input multiline text to a variable

rm tempfile.txt # rm command to remove the file

curl -s --url 'smtps://smtp.gmail.com:465' --ssl-reqd \ # curl command to send email
--mail-from $sender \
--mail-rcpt $receiver \
--user $sender:$gapp \
-T <(echo -e "From: ${sender}  
To: ${receiver}
Subject: ${sub}

${body}")

echo "SSL PROTECTED"

# -T transfers the contents of the file to the server.
# --url specifies the URL of the SMTP server.
# < (echo -e) is used to send the contents of the file to the server
# --ssl-reqd specifies that the connection should be made using SSL.
# -s specifies that the connection should be made silently.
# --mail-from specifies the sender of the email.
# --mail-rcpt specifies the recipient of the email.
# --user specifies the username and password of the SMTP server.
#  smtps://smtp.gmail.com:465 is the URL of the SMTP server.
