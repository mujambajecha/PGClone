#!/bin/bash
#
<<<<<<< HEAD
# Title:      PGBlitz (Reference Title File)
# Authors:    Admin9705, Deiteq, and many PGBlitz Contributors
=======
# Title:      Reference Title File - PGBlitz
# Author(s):  Admin9705 & https://github.com/PGBlitz/PGClone/graphs/contributors
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
# URL:        https://pgblitz.com - http://github.pgblitz.com
# GNU:        General Public License v3.0
################################################################################
oauth() {
  pgclonevars

  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 Google Auth - ${type}
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

https://accounts.google.com/o/oauth2/v2/auth?scope=email%20profile&response_type=code&state=security_token%3D138r5719ru3e1%26url%3Dhttps%3A%2F%2Foauth2.example.com%2Ftoken&redirect_uri=com.example.app%3A/oauth2redirect&client_id=client_id

Copy & Paste the URL into Browser! Ensure to utilize and login with
the correct Google Account!

PUTTY USERS: Just select and highlight! DO NOT RIGHT CLICK! When you paste
into the browser, it will just work!

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Z] Exit
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
<<<<<<< HEAD
  read -p '↘️  Token | PRESS [ENTER]: ' token </dev/tty
  if [[ "$token" == "exit" || "$token" == "Exit" || "$token" == "EXIT" || "$token" == "z" || "$token" == "Z" ]]; then clonestart; fi
  curl --request POST --data "code=$token&client_id=$pgclonepublic&client_secret=$pgclonesecret&redirect_uri=urn:ietf:wg:oauth:2.0:oob&grant_type=authorization_code" https://accounts.google.com/o/oauth2/token >/opt/appdata/plexguide/pgclone.info
=======
  read -p '↘️  Token | PRESS [ENTER]: ' token < /dev/tty
  if [[ "$token" == "exit" || "$token" == "Exit" || "$token" == "EXIT" ]]; then clonestart; fi
  curl --request POST --data "code=$token&client_id=$pgclonepublic&client_secret=$pgclonesecret&redirect_uri=urn:ietf:wg:oauth:2.0:oob&grant_type=authorization_code" https://accounts.google.com/o/oauth2/token > /pg/rclone/pgclone.info
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

  accesstoken=$(cat /pg/rclone/pgclone.info | grep access_token | awk '{print $2}')
  refreshtoken=$(cat /pg/rclone/pgclone.info | grep refresh_token | awk '{print $2}')
  rcdate=$(date +'%Y-%m-%d')
  rctime=$(date +"%H:%M:%S" --date="$givenDate 60 minutes")
  rczone=$(date +"%:z")
  final=$(echo "${rcdate}T${rctime}${rczone}")

<<<<<<< HEAD
  ########################
  rm -rf /opt/appdata/plexguide/.${type} 1>/dev/null 2>&1
  echo "" >/opt/appdata/plexguide/.${type}
  echo "[$type]" >>/opt/appdata/plexguide/.${type}
  echo "client_id = $pgclonepublic" >>/opt/appdata/plexguide/.${type}
  echo "client_secret = $pgclonesecret" >>/opt/appdata/plexguide/.${type}
  echo "type = drive" >>/opt/appdata/plexguide/.${type}
  echo "server_side_across_configs = true" >>/opt/appdata/plexguide/.${type}
  echo -n "token = {\"access_token\":${accesstoken}\"token_type\":\"Bearer\",\"refresh_token\":${refreshtoken}\"expiry\":\"${final}\"}" >>/opt/appdata/plexguide/.${type}
  echo "" >>/opt/appdata/plexguide/.${type}
  if [ "$type" == "tdrive" ]; then
    teamid=$(cat /var/plexguide/pgclone.teamid)
    echo "team_drive = $teamid" >>/opt/appdata/plexguide/.tdrive
  fi
  echo ""

  echo ${type} >/var/plexguide/oauth.check
  oauthcheck

  ## Adds Encryption to the Test Phase if Move or Blitz Encrypted is On
  if [[ "$transport" == "be" || "$transport" == "me" ]]; then

    if [ "$type" == "gdrive" ]; then
      entype="gcrypt"
    else entype="tcrypt"; fi

    PASSWORD=$(cat /var/plexguide/pgclone.password)
    SALT=$(cat /var/plexguide/pgclone.salt)
    ENC_PASSWORD=$(rclone obscure "$PASSWORD")
    ENC_SALT=$(rclone obscure "$SALT")

    rm -rf /opt/appdata/plexguide/.${entype} 1>/dev/null 2>&1
    echo "" >>/opt/appdata/plexguide/.${entype}
    echo "[$entype]" >>/opt/appdata/plexguide/.${entype}
    echo "type = crypt" >>/opt/appdata/plexguide/.${entype}
    echo "remote = $type:/encrypt" >>/opt/appdata/plexguide/.${entype}
    echo "filename_encryption = standard" >>/opt/appdata/plexguide/.${entype}
    echo "directory_name_encryption = true" >>/opt/appdata/plexguide/.${entype}
    echo "password = $ENC_PASSWORD" >>/opt/appdata/plexguide/.${entype}
    echo "password2 = $ENC_SALT" >>/opt/appdata/plexguide/.${entype}
  fi
=======
########################
rm -rf /pg/rclone/.${type} 1>/dev/null 2>&1
echo "" > /pg/rclone/.${type}
echo "[$type]" >> /pg/rclone/.${type}
echo "client_id = $pgclonepublic" >> /pg/rclone/.${type}
echo "client_secret = $pgclonesecret" >> /pg/rclone/.${type}
echo "type = drive" >> /pg/rclone/.${type}
echo -n "token = {\"access_token\":${accesstoken}\"token_type\":\"Bearer\",\"refresh_token\":${refreshtoken}\"expiry\":\"${final}\"}" >> /pg/rclone/.${type}
echo "" >> /pg/rclone/.${type}
if [ "$type" == "sd" ]; then
teamid=$(cat /pg/rclone/pgclone.teamid)
echo "team_drive = $teamid" >> /pg/rclone/.sd; fi
echo ""

echo ${type} > /pg/rclone/oauth.check
oauthcheck

## Adds Encryption to the Test Phase if Move or Blitz Encrypted is On
if [[ "$transport" == "sd" || "$transport" == "gc" ]]; then

if [ "$type" == "gd" ]; then entype="gc";
else entype="sc"; fi

PASSWORD=`cat /pg/rclone/pgclone.password`
SALT=`cat /pg/rclone/pgclone.salt`
ENC_PASSWORD=`rclone obscure "$PASSWORD"`
ENC_SALT=`rclone obscure "$SALT"`

rm -rf /pg/rclone/.${entype} 1>/dev/null 2>&1
echo "" >> /pg/rclone/.${entype}
echo "[$entype]" >> /pg/rclone/.${entype}
echo "type = crypt" >> /pg/rclone/.${entype}
echo "remote = $type:/encrypt" >> /pg/rclone/.${entype}
echo "filename_encryption = standard" >> /pg/rclone/.${entype}
echo "directory_name_encryption = true" >> /pg/rclone/.${entype}
echo "password = $ENC_PASSWORD" >> /pg/rclone/.${entype}
echo "password2 = $ENC_SALT" >> /pg/rclone/.${entype};
fi
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🌎 Process Complete
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

💬  [${type}] is now established!

NOTE: If you change projects or use a different login, rerun this again!
If not, nothing will work!

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  read -p '↘️  Acknowledge Info | Press [ENTER] ' typed </dev/tty
  clonestart

}
# (BELOW - SET TEAMDRIVE NAME)##################################################
tlabeloauth() {
  pgclonevars
  gtype="https://www.googleapis.com/drive/v3/teamdrives"
  storage="/pg/rclone/teamdrive.output"

  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 Google Auth - Team Drive Label
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

https://accounts.google.com/o/oauth2/v2/auth?scope=email%20profile&response_type=code&state=security_token%3D138r5719ru3e1%26url%3Dhttps%3A%2F%2Foauth2.example.com%2Ftoken&redirect_uri=com.example.app%3A/oauth2redirect&client_id=client_id

Copy & Paste the URL into Browser! Ensure to utilize and login with
the correct Google Account!

PUTTY USERS: Just select and highlight! DO NOT RIGHT CLICK! When you paste
into the browser, it will just work!

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Z] Exit
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
<<<<<<< HEAD
  read -p '↘️  Token | PRESS [ENTER]: ' token </dev/tty
=======
  read -p '↘️  Token | PRESS [ENTER]: ' token < /dev/tty

  if [[ "$token" = "exit" || "$token" == "Exit" || "$token" == "EXIT" ]]; then clonestart; fi
  curl --request POST --data "code=${token}&client_id=${pgclonepublic}&client_secret=${pgclonesecret}&redirect_uri=urn:ietf:wg:oauth:2.0:oob&grant_type=authorization_code" https://accounts.google.com/o/oauth2/token > /pg/var/token.part1
  curl -H "GData-Version: 3.0" -H "Authorization: Bearer $(cat /pg/var/token.part1 | grep access_token | awk '{ print $2 }' | cut -c2- | rev | cut -c3- | rev)" $gtype > $storage
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

  if [[ "$token" == "exit" || "$token" == "Exit" || "$token" == "EXIT" || "$token" == "z" || "$token" == "Z" ]]; then clonestart; fi
  curl --request POST --data "code=${token}&client_id=${pgclonepublic}&client_secret=${pgclonesecret}&redirect_uri=urn:ietf:wg:oauth:2.0:oob&grant_type=authorization_code" https://accounts.google.com/o/oauth2/token >/var/plexguide/token.part1
  curl -H "GData-Version: 3.0" -H "Authorization: Bearer $(cat /var/plexguide/token.part1 | grep access_token | awk '{ print $2 }' | cut -c2- | rev | cut -c3- | rev)" $gtype >$storage
  teamdriveselect
}

<<<<<<< HEAD
teamdriveselect() {
  cat /var/plexguide/teamdrive.output | grep "id" | awk '{ print $2 }' | cut -c2- | rev | cut -c3- | rev >/var/plexguide/teamdrive.id
  cat /var/plexguide/teamdrive.output | grep "name" | awk '{ print $2 }' | cut -c2- | rev | cut -c2- | rev >/var/plexguide/teamdrive.name
=======
teamdriveselect () {
  cat /pg/rclone/teamdrive.output | grep "id" | awk '{ print $2 }' | cut -c2- | rev | cut -c3- | rev > /pg/rclone/teamdrive.id
  cat /pg/rclone/teamdrive.output | grep "name" | awk '{ print $2 }' | cut -c2- | rev | cut -c2- | rev > /pg/rclone/teamdrive.name
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 Listed Team Drives
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  A=0
  while read p; do
<<<<<<< HEAD
    ((A++))
    name=$(sed -n ${A}p /var/plexguide/teamdrive.name)
    echo "[$A] $p - $name"
  done </var/plexguide/teamdrive.id

  if [[ $(cat /var/plexguide/teamdrive.name) == "" ]]; then
    tee <<-EOF
=======
  ((A++))
  name=$(sed -n ${A}p /pg/rclone/teamdrive.name)
  echo "[$A] $p - $name"
done </pg/rclone/teamdrive.id

if [[ $(cat /pg/rclone/teamdrive.name) == "" ]]; then
tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 No Team Drives Exist or Bad Token!
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

NOTE1: Create a Team Drive First or Share on to this account and retry the
process again!

NOTE2: If a bad token, ensure that you are using the correct account when
signing in (and/or conducting a proper copy and paste of the token)!

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
    read -p '↘️  Acknowlege Info | Press [ENTER] ' typed </dev/tty
    clonestart
  fi

  echo ""
  read -p '↘️  Type Number | Press [ENTER]: ' typed </dev/tty
  if [[ "$typed" -ge "1" && "$typed" -le "$A" ]]; then
    a=b
  else teamdriveselect; fi

<<<<<<< HEAD
  name=$(sed -n ${typed}p /var/plexguide/teamdrive.name)
  id=$(sed -n ${typed}p /var/plexguide/teamdrive.id)
  echo "$name" >/var/plexguide/pgclone.teamdrive
  echo "$id" >/var/plexguide/pgclone.teamid
=======
  name=$(sed -n ${typed}p /pg/rclone/teamdrive.name)
  id=$(sed -n ${typed}p /pg/rclone/teamdrive.id)
  echo "$name" > /pg/rclone/pgclone.teamdrive
  echo "$id" > /pg/rclone/pgclone.teamid
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 Process Complete! TeamDrive [$name]
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

NOTE: Do not share out your teamdrives to others! The usage counts against
you and if others share your content, you have no control (and your team
drive can be shutdown!)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  read -p '↘️  Acknowledge Info | PRESS [ENTER] ' temp </dev/tty
}
tlabelchecker() {
  pgclonevars
  if [[ "$tdname" == "NOT-SET" ]]; then

<<<<<<< HEAD
    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🌎 Fail Notice
=======
mountchecker () {
pgclonevars
  if [[ "$transport" == "gd" ]]; then
    if [[ "$gdstatus" != "ACTIVE" ]]; then mountfail; fi
elif [[ "$transport" == "gc" ]]; then
  if [[ "$gdstatus" != "ACTIVE" || "$gcstatus" != "ACTIVE" ]]; then mountfail; fi
elif [[ "$transport" == "sd" ]]; then
  if [[ "$gdstatus" != "ACTIVE" || "$sdstatus" != "ACTIVE" ]]; then mountfail; fi
elif [[ "$transport" == "sd" ]]; then
  if [[ "$gdstatus" != "ACTIVE" || "$sdstatus" != "ACTIVE" || "$sdstatus" != "ACTIVE" || "$scstatus" != "ACTIVE" ]]; then mountfail; fi
fi
}

mountfail () {
tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🌎 Fail Notice ~ pgclone.pgblitz.com
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

💬  All Mounts Must Be Active!

NOTE: If any mount says [NOT-SET]; that process must be completed first!
We will continue to block this process until completed!

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF
read -p '↘️  Acknowledge Info | Press [ENTER] ' typed < /dev/tty
clonestart
}

tlabelchecker () {
pgclonevars
if [[ "$sdname" == "NOT-SET" ]]; then

tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🌎 Fail Notice ~ oauth.pgblitz.com
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

💬  Team Drive Label Not Set!

NOTE: Unless we know your Team Drive name, we have no way of configuring
the Team Drive! Please complete this first!

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
    read -p '↘️  Acknowledge Info | Press [ENTER] ' typed </dev/tty
    clonestart
  fi
}
