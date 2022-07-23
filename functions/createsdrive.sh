#!/bin/bash
#
<<<<<<< HEAD:functions/createtdrive.sh
# Title:      PGBlitz (Reference Title File)
# Authors:    Admin9705, Deiteq, and many PGBlitz Contributors
# URL:        https://pgblitz.com - http://github.pgblitz.com
# GNU:        General Public License v3.0
################################################################################
ctdrive() {
  pgclonevars
=======
# Title:      Reference Title File - PGBlitz
# Author(s):  Admin9705 & https://github.com/PGBlitz/PGClone/graphs/contributors
# URL:        https://pgblitz.com - http://github.pgblitz.com
# GNU:        General Public License v3.0
################################################################################
csdrive () {
pgclonevars
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965:functions/createsdrive.sh

  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
<<<<<<< HEAD:functions/createtdrive.sh
🚀 Create TeamDrive
=======
🚀 Create a Shared Drive ~ oauth.pgblitz.com
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965:functions/createsdrive.sh

https://accounts.google.com/o/oauth2/auth?client_id=$pgclonepublic&redirect_uri=http://localhost:3000&scope=https://www.googleapis.com/auth/drive&response_type=code

Copy & Paste the URL into Browser! Ensure to utilize and login with
the correct Google Account!

PUTTY USERS: Just select and highlight! DO NOT RIGHT CLICK! When you paste
into the browser, it will just work!

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Z] Exit
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
<<<<<<< HEAD:functions/createtdrive.sh
  read -p '↘️  Token | PRESS [ENTER]: ' token </dev/tty
  if [[ "$token" == "exit" || "$token" == "Exit" || "$token" == "EXIT" || "$token" == "z" || "$token" == "Z" ]]; then clonestart; fi
  curl --request POST --data "code=$token&client_id=$pgclonepublic&client_secret=$pgclonesecret&redirect_uri=http://localhost:3000&grant_type=authorization_code" https://accounts.google.com/o/oauth2/token >/opt/appdata/plexguide/pgclone.info
=======
  read -p '↘️  Token | PRESS [ENTER]: ' token < /dev/tty
  if [[ "$token" == "exit" || "$token" == "Exit" || "$token" == "EXIT" ]]; then clonestart; fi
  curl --request POST --data "code=$token&client_id=$pgclonepublic&client_secret=$pgclonesecret&redirect_uri=urn:ietf:wg:oauth:2.0:oob&grant_type=authorization_code" https://accounts.google.com/o/oauth2/token > /pg/rclone/pgclone.info
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965:functions/createsdrive.sh

  accesstoken=$(cat /pg/rclone/pgclone.info | grep access_token | awk '{print $2}')

  curl --request POST \
    'https://www.googleapis.com/drive/v3/teamdrives?requestId=foxfield' \
    --header "Authorization: Bearer ${accesstoken}" \
    --header 'Accept: application/json' \
    --header 'Content-Type: application/json' \
    --data '{"name":"Media"}' \
    --compressed
}
