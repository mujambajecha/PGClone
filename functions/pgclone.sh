#!/bin/bash
#
<<<<<<< HEAD
# Title:      PGBlitz (Reference Title File)
# Authors:    Admin9705, Deiteq, and many PGBlitz Contributors
# URL:        https://pgblitz.com - http://github.pgblitz.com
# GNU:        General Public License v3.0
################################################################################
=======
# Title:      Reference Title File - PGBlitz
# Author(s):  Admin9705 & https://github.com/PGBlitz/PGClone/graphs/contributors
# URL:        https://pgblitz.com - http://github.pgblitz.com
# GNU:        General Public License v3.0
################################################################################
bandwidth () {
tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: BW Limit Notice        📓 Reference: move.pgblitz.com
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

💬 10MB is a safe limit. If exceeding 10MB and uploading straight for
24 hours, an upload ban will be triggered.

EOF
  read -p '↘️  Type a Speed from 1 - 1000 | Press [ENTER]: ' typed < /dev/tty
  if [[ "$typed" -ge "1" && "$typed" -le "1000" ]]; then echo "$typed" > /pg/var/move.bw && question1;
  else badinput && bandwidth; fi
}

bandwidthblitz () {
tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: BW Limit Notice        📓 Reference: move.pgblitz.com
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

💬 100MB = 1 Gig Speeds | 1000MB = 10 Gig Speeds - Remember that your
   upload speeds are still limited to your server's max upload connection

EOF
  read -p '↘️  Type a Speed from 1 - 1000 | Press [ENTER]: ' typed < /dev/tty
  if [[ "$typed" -ge "1" && "$typed" -le "1000" ]]; then echo "$typed" > /pg/var/blitz.bw && question1;
  else badinput && bandwidth; fi
}

statusmount () {
  mcheck5=$(cat /pg/rclone/blitz.conf | grep "$type")
  if [ "$mcheck5" != "" ]; then
tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
⚠️  System Message: Warning!
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
NOTE: $type already exists! To proceed, we must delete the prior
configuration for you.

EOF
  read -p '↘️  Proceed? y or n | Press [ENTER]: ' typed < /dev/tty

  if [[ "$typed" == "Y" || "$typed" == "y" ]]; then a=b
elif [[ "$typed" == "N" || "$typed" == "n" ]]; then mountsmenu
  else
    badinput
    statusmount
  fi

  rclone config delete $type --config /pg/rclone/blitz.conf

  encheck=$(cat /pg/rclone/pgclone.transport)
  if [[ "$encheck" == "sc" || "$encheck" == "gc" ]]; then
    if [ "$type" == "gc" ]; then
    rclone config delete gcrypt --config /pg/rclone/blitz.conf; fi
    if [ "$type" == "sd" ]; then
    rclone config delete scrypt --config /pg/rclone/blitz.conf; fi
  fi

tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: $type deleted!
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
read -p '↘️  Acknowledge Info | Press [ENTER] ' typed < /dev/tty
fi
}

>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
tmgen() {
  secret=$(cat /var/plexguide/pgclone.secret)
  public=$(cat /var/plexguide/pgclone.public)

<<<<<<< HEAD
  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 Google Auth - Team Drives
=======
secret=$(cat /pg/rclone/pgclone.secret)
public=$(cat /pg/rclone/pgclone.public)

tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 Google Auth - Shared Drives | 📓 Reference: oauth.pgblitz.com
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

NOTE: Copy & Paste Url into Browser | Use Correct Google Account!

<<<<<<< HEAD
https://accounts.google.com/o/oauth2/auth?client_id=$public&redirect_uri=http://localhost:3000&scope=https://www.googleapis.com/auth/drive&response_type=code

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Z] Exit
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  read -p '↘️  Token | PRESS [ENTER]: ' token </dev/tty
  if [ "$token" = "exit" ] || [ "$token" = "EXIT" ] || [ "$token" = "q" ] || [ "$token" = "Q" ]; then mountsmenu; fi
  curl --request POST --data "code=$token&client_id=$public&client_secret=$secret&redirect_uri=http://localhost:3000&grant_type=authorization_code" https://accounts.google.com/o/oauth2/token >/var/plexguide/pgtokentm.output
  cat /var/plexguide/pgtokentm.output | grep access_token | awk '{ print $2 }' | cut -c2- | rev | cut -c3- | rev >/var/plexguide/pgtokentm2.output
  primet=$(cat /var/plexguide/pgtokentm2.output)
  curl -H "GData-Version: 3.0" -H "Authorization: Bearer $primet" https://www.googleapis.com/drive/v3/teamdrives >/var/plexguide/teamdrive.output
  tokenscript
  name=$(sed -n ${typed}p /var/plexguide/teamdrive.name)
  id=$(sed -n ${typed}p /var/plexguide/teamdrive.id)
  echo "$name" >/var/plexguide/pgclone.teamdrive
  echo "$id" >/var/plexguide/pgclone.teamid
  tee <<-EOF
=======
https://accounts.google.com/o/oauth2/v2/auth?scope=email%20profile&response_type=code&state=security_token%3D138r5719ru3e1%26url%3Dhttps%3A%2F%2Foauth2.example.com%2Ftoken&redirect_uri=redirect_uri=http://localhost:3000%3A/oauth2redirect&client_id=client_id

EOF
  read -p '↘️  Token | PRESS [ENTER]: ' token < /dev/tty
  if [ "$token" = "exit" ]; then mountsmenu; fi
  curl --request POST --data "code=$token&client_id=$public&client_secret=$secret&redirect_uri=http://localhost:3000&grant_type=authorization_code" https://accounts.google.com/o/oauth2/token > /pg/var/pgtokentm.output
  cat /pg/var/pgtokentm.output | grep access_token | awk '{ print $2 }' | cut -c2- | rev | cut -c3- | rev > /pg/var/pgtokentm2.output
  primet=$(cat /pg/var/pgtokentm2.output)
  curl -H "GData-Version: 3.0" -H "Authorization: Bearer $primet" https://www.googleapis.com/drive/v3/teamdrives > /pg/rclone/teamdrive.output
  tokenscript

  name=$(sed -n ${typed}p /pg/rclone/teamdrive.name)
  id=$(sed -n ${typed}p /pg/rclone/teamdrive.id)
echo "$name" > /pg/rclone/pgclone.teamdrive
echo "$id" > /pg/rclone/pgclone.teamid
tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
😂 What a Lame Shared Drive Name: $name
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  read -p '↘️  Acknowledge Info | PRESS [ENTER] ' temp </dev/tty
}

<<<<<<< HEAD
tokenscript() {
  cat /var/plexguide/teamdrive.output | grep "id" | awk '{ print $2 }' | cut -c2- | rev | cut -c3- | rev >/var/plexguide/teamdrive.id
  cat /var/plexguide/teamdrive.output | grep "name" | awk '{ print $2 }' | cut -c2- | rev | cut -c2- | rev >/var/plexguide/teamdrive.name
  tee <<-EOF
=======
tokenscript () {
  cat /pg/rclone/teamdrive.output | grep "id" | awk '{ print $2 }' | cut -c2- | rev | cut -c3- | rev > /pg/rclone/teamdrive.id
  cat /pg/rclone/teamdrive.output | grep "name" | awk '{ print $2 }' | cut -c2- | rev | cut -c2- | rev > /pg/rclone/teamdrive.name

tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

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
  echo ""
  read -p '↘️  Type Number | PRESS [ENTER]: ' typed </dev/tty
  if [[ "$typed" -ge "1" && "$typed" -le "$A" ]]; then
    a=b
  else
    badinput
    tokenscript
  fi
=======
  ((A++))
  name=$(sed -n ${A}p /pg/rclone/teamdrive.name)
  echo "[$A] $p - $name"
done </pg/rclone/teamdrive.id

echo ""
read -p '↘️  Type Number | PRESS [ENTER]: ' typed < /dev/tty
if [[ "$typed" -ge "1" && "$typed" -le "$A" ]]; then a=b
else
  badinput
  tokenscript; fi
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
}

inputphase() {
  deploychecks
  if [[ "$transport" == "PG Move /w No Encryption" || "$transport" == "PG Move /w Encryption" ]]; then
    display=""
  else
    if [ "$type" == "tdrive" ]; then
      display="TEAMDRIVE: $teamdrive
  "
    fi
  fi

<<<<<<< HEAD
  tee <<-EOF
=======
if [[ "$transport" == "PG Move /w No Encryption" || "$transport" == "PG Move /w Encryption" ]]; then
  display=""
else
  if [ "$type" == "sd" ]; then
  display="TEAMDRIVE: $teamdrive
  ";fi; fi

tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: PG Clone - $type
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
💬 PG is Deploying /w the Following Values:

🌅 ID
$public

💎 SECRET
$secret
$display
EOF

  read -p '↘️  Proceed? y or n | Press [ENTER]: ' typed </dev/tty
  if [[ "$typed" == "Y" || "$typed" == "y" ]]; then
    a=b
  elif [[ "$typed" == "N" || "$typed" == "n" ]]; then
    question1
  else
    badinput
    inputphase
  fi
  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: Google Auth
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

NOTE: Copy & Paste Url into Browser | Use Correct Google Account!

<<<<<<< HEAD
https://accounts.google.com/o/oauth2/auth?client_id=$public&redirect_uri=http://localhost:3000&scope=https://www.googleapis.com/auth/drive&response_type=code

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Z] Exit
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  read -p '↘️  Token | PRESS [ENTER]: ' token </dev/tty
  if [ "$token" = "exit" ] || [ "$token" = "EXIT" ] || [ "$token" = "q" ] || [ "$token" = "Q" ]; then mountsmenu; fi
  curl --request POST --data "code=$token&client_id=$public&client_secret=$secret&redirect_uri=http://localhost:3000&grant_type=authorization_code" https://accounts.google.com/o/oauth2/token >/opt/appdata/plexguide/pgclone.info
  accesstoken=$(cat /opt/appdata/plexguide/pgclone.info | grep access_token | awk '{print $2}')
  refreshtoken=$(cat /opt/appdata/plexguide/pgclone.info | grep refresh_token | awk '{print $2}')
=======
https://accounts.google.com/o/oauth2/v2/auth?scope=email%20profile&response_type=code&state=security_token%3D138r5719ru3e1%26url%3Dhttps%3A%2F%2Foauth2.example.com%2Ftoken&redirect_uri=redirect_uri=http://localhost:3000%3A/oauth2redirect&client_id=client_id

EOF
  read -p '↘️  Token | PRESS [ENTER]: ' token < /dev/tty
  if [ "$token" = "exit" ]; then mountsmenu; fi
  curl --request POST --data "code=$token&client_id=$public&client_secret=$secret&redirect_uri=http://localhost:3000&grant_type=authorization_code" https://accounts.google.com/o/oauth2/token > /pg/rclone/pgclone.info

  accesstoken=$(cat /pg/rclone/pgclone.info | grep access_token | awk '{print $2}')
  refreshtoken=$(cat /pg/rclone/pgclone.info | grep refresh_token | awk '{print $2}')
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
  rcdate=$(date +'%Y-%m-%d')
  rctime=$(date +"%H:%M:%S" --date="$givenDate 60 minutes")
  rczone=$(date +"%:z")
  final=$(echo "${rcdate}T${rctime}${rczone}")
  testphase
}

mountsmenu() {
  # Sets Display Status if Passwords are not set for the encryhpted edition
  check5=$(cat /var/plexguide/pgclone.password)
  check6=$(cat /var/plexguide/pgclone.salt)
  if [[ "$check5" == "" || "$check6" == "" ]]; then
    passdisplay="⚠️  Not Activated"
  else passdisplay="✅ Activated"; fi
  projectid=$(cat /var/plexguide/pgclone.project)
  secret=$(cat /var/plexguide/pgclone.secret)
  public=$(cat /var/plexguide/pgclone.public)
  teamdrive=$(cat /var/plexguide/pgclone.teamdrive)
  if [ "$secret" == "" ]; then dsecret="NOT SET"; else dsecret="SET"; fi
  if [ "$public" == "" ]; then dpublic="NOT SET"; else dpublic="SET"; fi
  if [ "$teamdrive" == "" ]; then dteamdrive="NOT SET"; else dteamdrive=$teamdrive; fi
  gstatus=$(cat /var/plexguide/gdrive.pgclone)
  tstatus=$(cat /var/plexguide/tdrive.pgclone)

<<<<<<< HEAD
  ###### START
  if [ "$transport" == "PG Move /w No Encryption" ]; then
    tee <<-EOF
=======
# Sets Display Status if Passwords are not set for the encryhpted edition
check5=$(cat /pg/rclone/pgclone.password)
check6=$(cat /pg/rclone/pgclone.salt)
if [[ "$check5" == "" || "$check6" == "" ]]; then passdisplay="⚠️  Not Activated"
else passdisplay="✅ Activated"; fi

projectid=$(cat /pg/rclone/pgclone.project)
secret=$(cat /pg/rclone/pgclone.secret)
public=$(cat /pg/rclone/pgclone.public)
teamdrive=$(cat /pg/rclone/pgclone.teamdrive)

if [ "$secret" == "" ]; then dsecret="NOT SET"; else dsecret="SET"; fi
if [ "$public" == "" ]; then dpublic="NOT SET"; else dpublic="SET"; fi
if [ "$teamdrive" == "" ]; then dteamdrive="NOT SET"; else dteamdrive=$teamdrive; fi

gdstatus=$(cat /pg/var/gd.pgclone)
sdstatus=$(cat /pg/var/sd.pgclone)

###### START
if [ "$transport" == "PG Move /w No Encryption" ]; then
tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🌎 rClone - OAuth & Mounts
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

💾   OAuth
[1] Client ID: $dpublic
[2] Secret ID: ${dsecret}

<<<<<<< HEAD
📁   RClone Configuration
[3] gdrive   : $gstatus
=======
📁 RClone Configuration
[3] gdrive   : $gdstatus
[Z] Exit
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Z] Exit
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF

    read -p '↘️  Set Choice | Press [ENTER]: ' typed </dev/tty

    if [ "$typed" == "1" ]; then
      publickeyinput
      mountsmenu
    elif [ "$typed" == "2" ]; then
      secretkeyinput
      mountsmenu
    elif [ "$typed" == "3" ]; then
      type=gdrive
      inputphase
      mountsmenu
    elif [[ "$typed" == "Z" || "$typed" == "z" ]]; then
      question1
    else
      badinput
      mountsmenu
    fi
  fi
  ########## END

  ########## START
  if [ "$transport" == "PG Move /w Encryption" ]; then
    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🌎 rClone - OAuth & Mounts
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

💾   OAuth
[1] Client ID: $dpublic
[2] Secret ID: ${dsecret}

💡   Required Tasks
[3] Passwords: $passdisplay

<<<<<<< HEAD
📁  RClone Configuration
[4] gdrive   : $gstatus
=======
📁 RClone Configuration
[4] gdrive   : $gdstatus
[Z] Exit
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Z] Exit
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF
    read -p '↘️  Set Choice | Press [ENTER]: ' typed </dev/tty
    if [ "$typed" == "1" ]; then
      publickeyinput
      mountsmenu
    elif [ "$typed" == "2" ]; then
      secretkeyinput
      mountsmenu
    elif [ "$typed" == "3" ]; then
      blitzpasswords
      mountsmenu
    elif [ "$typed" == "4" ]; then
      encpasswdcheck
      type=gdrive
      inputphase
      mountsmenu
    elif [[ "$typed" == "Z" || "$typed" == "z" ]]; then
      question1
    else
      badinput
      mountsmenu
    fi
  fi
  ###### END

  ###### START
  if [ "$transport" == "PG Blitz /w No Encryption" ]; then
    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🌎 rClone - OAuth & Mounts
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

💾   OAuth
[1] Client ID: $dpublic
[2] Secret ID: ${dsecret}

💡   Required Tasks
[3] TD Label : $dteamdrive

<<<<<<< HEAD
📁  RClone Configuration
[4] gdrive   : $gstatus
[5] tdrive   : $tstatus
=======
📁 RClone Configuration
[4] gdrive   : $gdstatus
[5] sdrive   : $sdstatus
[Z] Exit
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Z] Exit
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF

<<<<<<< HEAD
    read -p '↘️  Set Choice | Press [ENTER]: ' typed </dev/tty
    if [ "$typed" == "1" ]; then
      publickeyinput
      mountsmenu
    elif [ "$typed" == "2" ]; then
      secretkeyinput
      mountsmenu
    elif [ "$typed" == "3" ]; then
      tmgen
      mountsmenu
    elif [ "$typed" == "4" ]; then
      type=gdrive
      inputphase
      mountsmenu
    elif [ "$typed" == "5" ]; then
      tmcheck=$(cat /var/plexguide/pgclone.teamdrive)
      if [ "$tmcheck" == "" ]; then
        tee <<-EOF
=======
read -p '↘️  Set Choice | Press [ENTER]: ' typed < /dev/tty

if [ "$typed" == "1" ]; then
  publickeyinput
  mountsmenu
elif [ "$typed" == "2" ]; then
  secretkeyinput
  mountsmenu
elif [ "$typed" == "3" ]; then
  tmgen
  mountsmenu
elif [ "$typed" == "4" ]; then
  type=gdrive
  statusmount
  inputphase
  mountsmenu
elif [ "$typed" == "5" ]; then
  tmcheck=$(cat /pg/rclone/pgclone.teamdrive)
  if [ "$tmcheck" == "" ]; then
tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
⛔ Warning! TeamDrive is blank! Must be Set Prior!
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
<<<<<<< HEAD
        read -p '↘️  Acknowledge Info | Press [ENTER] ' typed </dev/tty
        mountsmenu
      fi
      type=tdrive
      inputphase
      mountsmenu
    elif [[ "$typed" == "Z" || "$typed" == "z" ]]; then
      question1
    else
      badinput
      mountsmenu
    fi
  fi
  #################### END
  ##### START
  if [ "$transport" == "PG Blitz /w Encryption" ]; then
    tee <<-EOF
=======
  read -p '↘️  Acknowledge Info | Press [ENTER] ' typed < /dev/tty
  mountsmenu; fi
  type=sdrive
  statusmount
  inputphase
  mountsmenu
elif [[ "$typed" == "Z" || "$typed" == "z" ]]; then question1;
else badinput
  mountsmenu; fi
fi
#################### END

##### START
if [ "$transport" == "PG Blitz /w Encryption" ]; then
tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🌎 rClone - OAuth & Mounts
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

💾   OAuth
[1] Client ID: $dpublic
[2] Secret ID: ${dsecret}

💡   Required Tasks
[3] TD Label : $dteamdrive
[4] Passwords: $passdisplay

<<<<<<< HEAD
📁  RClone Configuration
[5] gdrive   : $gstatus
[6] tdrive   : $tstatus
=======
📁 RClone Configuration
[5] gdrive   : $gdstatus
[6] sdrive   : $sdstatus
[Z] Exit
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Z] Exit
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
<<<<<<< HEAD
    read -p '↘️  Set Choice | Press [ENTER]: ' typed </dev/tty
    if [ "$typed" == "1" ]; then
      publickeyinput
      mountsmenu
    elif [ "$typed" == "2" ]; then
      secretkeyinput
      mountsmenu
    elif [ "$typed" == "3" ]; then
      tmgen
      mountsmenu
    elif [ "$typed" == "4" ]; then
      blitzpasswords
      mountsmenu
    elif [ "$typed" == "5" ]; then
      encpasswdcheck
      type=gdrive
      inputphase
      mountsmenu
    elif [ "$typed" == "6" ]; then
      encpasswdcheck
      tmcheck=$(cat /var/plexguide/pgclone.teamdrive)
      if [ "$tmcheck" == "" ]; then
        tee <<-EOF
=======

read -p '↘️  Set Choice | Press [ENTER]: ' typed < /dev/tty

if [ "$typed" == "1" ]; then
  publickeyinput
  mountsmenu
elif [ "$typed" == "2" ]; then
  secretkeyinput
  mountsmenu
elif [ "$typed" == "3" ]; then
  tmgen
  mountsmenu
elif [ "$typed" == "4" ]; then
  blitzpasswords
  mountsmenu
elif [ "$typed" == "5" ]; then
  encpasswdcheck
  type=gdrive
  statusmount
  inputphase
  mountsmenu
elif [ "$typed" == "6" ]; then
  encpasswdcheck
  tmcheck=$(cat /pg/rclone/pgclone.teamdrive)
  if [ "$tmcheck" == "" ]; then
tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
⛔ Warning! TeamDrive is blank! Must be Set Prior!
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
<<<<<<< HEAD
        read -p '↘️  Acknowledge Info | Press [ENTER] ' typed </dev/tty
        mountsmenu
      fi
      type=tdrive
      inputphase
      mountsmenu
    elif [[ "$typed" == "Z" || "$typed" == "z" ]]; then
      question1
    else
      badinput
      mountsmenu
    fi
  fi
  #################### END

}
encpasswdcheck() {
  check5=$(cat /var/plexguide/pgclone.password)
  check6=$(cat /var/plexguide/pgclone.salt)
  if [[ "$check5" == "" || "$check6" == "" ]]; then
    tee <<-EOF
=======
  read -p '↘️  Acknowledge Info | Press [ENTER] ' typed < /dev/tty
  mountsmenu; fi
  type=sdrive
  statusmount
  inputphase
  mountsmenu
elif [[ "$typed" == "Z" || "$typed" == "z" ]]; then question1;
else badinput
  mountsmenu; fi
fi
#################### END

}

encpasswdcheck () {
check5=$(cat /pg/rclone/pgclone.password)
check6=$(cat /pg/rclone/pgclone.salt)

if [[ "$check5" == "" || "$check6" == "" ]]; then
tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
⛔ Warning! You Need to Setup Your Passwords for the Encrypted Edition
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
    read -p '↘️  Acknowledge Info | Press [ENTER] ' typed </dev/tty
    mountsmenu
  fi
}
blitzpasswords() {
  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🌎 Primary Password
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Please set a Primary Password for Encryption! Do not forget it! If you do,
you will be locked out from all your data!

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Z] Exit
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  read -p ' ↘️  Type Prime PW | Press [ENTER]: ' bpassword </dev/tty

  if [ "$bpassword" == "" ]; then
    badinput
    blitzpasswords
  elif [[ "$bpassword" == "exit" || "$bpassword" == "Exit" || "$bpassword" == "EXIT" || "$bpassword" == "z" || "$bpassword" == "Z" ]]; then mountsmenu; fi
  blitzsalt
}
blitzsalt() {
  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🌎 SALT (Secondary Password)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Please set a Secondary Password (SALT) for Encryption! Do not forget it!
If you do, you will be locked out from all your data!  SALT randomizes
your data to further protect you! It is not recommended to use the same
password, but may.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Z] Exit
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  read -p ' ↘️  Type SALT PW | Press [ENTER]: ' bsalt </dev/tty
  if [ "$bsalt" == "" ]; then
    badinput
    blitzsalt
  elif [[ "$bsalt" == "exit" || "$bsalt" == "Exit" || "$bsalt" == "EXIT" || "$bsalt" == "z" || "$bsalt" == "Z" ]]; then mountsmenu; fi
  blitzpfinal

}
blitzpfinal() {
  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🌎 Set Passwords?
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Are you happy with the following info? Type y or n!

Primary  : $bpassword
Secondary: $bsalt

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Z] Exit
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
<<<<<<< HEAD
  read -p '↘️  Type y or n | Press [ENTER]: ' typed </dev/tty
  if [ "$typed" == "n" ]; then
    mountsmenu
  elif [ "$typed" == "y" ]; then
    echo $bpassword >/var/plexguide/pgclone.password
    echo $bsalt >/var/plexguide/pgclone.salt
    mountsmenu
  else
    badinput
    blitzpfinal
  fi
=======

read -p '↘️  Type y or n | Press [ENTER]: ' typed < /dev/tty

if [ "$typed" == "n" ]; then mountsmenu;
elif [ "$typed" == "y" ]; then
echo $bpassword > /pg/rclone/pgclone.password
echo $bsalt > /pg/rclone/pgclone.salt
mountsmenu;
else
  badinput
  blitzpfinal; fi
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
}
publickeyinput() {
  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 Google OAuth Keys - Client ID
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
NOTE: Visit reference for Google OAuth Keys!

<<<<<<< HEAD
=======
EOF

read -p '↘️  Client ID  | Press [Enter]: ' public < /dev/tty
if [ "$public" = "exit" ]; then mountsmenu; fi
echo "$public" > /pg/rclone/pgclone.public

tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Z] Exit
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF

  read -p '↘️  Client ID  | Press [Enter]: ' public </dev/tty
  if [ "$public" = "exit" ]; then mountsmenu; fi
  echo "$public" >/var/plexguide/pgclone.public
  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🌎 Client ID Set
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  read -p '↘️  Acknowledge Info  | Press [ENTER] ' public </dev/tty
  mountsmenu
}
secretkeyinput() {
  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 Google OAuth Keys - Secret Key
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
NOTE: Visit reference for Google OAuth Keys!

<<<<<<< HEAD
=======
EOF
read -p '↘️  Secret Key  | Press [Enter]: ' secret < /dev/tty
if [ "$secret" = "exit" ]; then mountsmenu; fi
echo "$secret" > /pg/rclone/pgclone.secret

tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Z] Exit
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  read -p '↘️  Secret Key  | Press [Enter]: ' secret </dev/tty
  if [ "$secret" = "exit" ]; then mountsmenu; fi
  echo "$secret" >/var/plexguide/pgclone.secret

  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🌎 Secret ID Set
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  read -p '↘️  Acknowledge Info  | Press [ENTER] ' public </dev/tty
  mountsmenu
}

<<<<<<< HEAD
projectmenu() {
  projectid=$(cat /var/plexguide/pgclone.project)
=======
projectmenu () {
projectid=$(cat /pg/rclone/pgclone.project)
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🌎 GCloud Project Interface
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Project ID: $projectid

[1] Establish
[2] Create
[3] Destroy (NOT READY)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Z] Exit
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF

  read -p '↘️  Set Choice | Press [ENTER]: ' typed </dev/tty

  if [ "$typed" == "1" ]; then
    projectestablish
  elif [ "$typed" == "2" ]; then
    projectcreate
  elif [[ "$typed" == "z" || "$typed" == "Z" ]]; then
    question1
  else
    badinput
    projectmenu
  fi
}

projectestablish() {

<<<<<<< HEAD
  gcloud projects list >/var/plexguide/projects.list
  projectcheck=(cat /var/plexguide/projects.list)
=======
  gcloud projects list > /pg/var/projects.list
  projectcheck=(cat /pg/var/projects.list)
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
  if [ "$projectcheck" == "" ]; then
    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
⛔  System Message: Error! There are no projects! Make one first!
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
    read -p ' ↘️  Acknowledge Info | Press [ENTER] ' typed </dev/tty
    projectmenu
  fi

  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🌎 Established Projects
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Project ID: $projectid

EOF
<<<<<<< HEAD
  cat /var/plexguide/projects.list | cut -d' ' -f1 | tail -n +2
  cat /var/plexguide/projects.list | cut -d' ' -f1 | tail -n +2 >/var/plexguide/project.cut
=======
  cat /pg/var/projects.list | cut -d' ' -f1 | tail -n +2
  cat /pg/var/projects.list | cut -d' ' -f1 | tail -n +2 > /pg/var/project.cut
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
  echo
  changeproject
  echo
  projectidset
  gcloud config set project $typed

  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🌎 System Message: Enabling Drive API ~ Project $typed
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  gcloud services enable drive.googleapis.com --project $typed
  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🌎 System Message: Project Established ~ $typed
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
<<<<<<< HEAD
  echo $typed >/var/plexguide/pgclone.project
  read -p '↘️  Acknowledge Info | Press [ENTER] ' typed </dev/tty
  projectmenu

}
transportdisplay() {
  temp=$(cat /var/plexguide/pgclone.transport)
  if [ "$temp" == "mu" ]; then
    transport="PG Move /w No Encryption"
  elif [ "$temp" == "me" ]; then
    transport="PG Move /w Encryption"
  elif [ "$temp" == "bu" ]; then
    transport="PG Blitz /w No Encryption"
  elif [ "$temp" == "be" ]; then
    transport="PG Blitz /w Encryption"
  elif [ "$temp" == "le" ]; then
    transport="PG Local"
  else transport="NOT-SET"; fi
=======
  echo $typed > /pg/rclone/pgclone.project
  read -p '↘️  Acknowledge Info | Press [ENTER] ' typed < /dev/tty
  projectmenu

}

transportdisplay () {
temp=$(cat /pg/rclone/pgclone.transport)
  if [ "$temp" == "gd" ]; then transport="GDrive Unencrypted"
elif [ "$temp" == "gc" ]; then transport="GDrive Encrypted"
elif [ "$temp" == "sd" ]; then transport="SDrive Unencrypted"
elif [ "$temp" == "sc" ]; then transport="SDrive Encrypted"
elif [ "$temp" == "solohd" ]; then transport="PG Local"
else transport="NOT-SET"; fi
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
}
transportmode() {
  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🌟 Select Transport Mode
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

<<<<<<< HEAD
[1] GDRIVE  /w No Encryption | Upload 750GB Daily ~ Simple
[2] GDRIVE  /w Encryption    | Upload 750GB Daily ~ Simple
[3] TDRIVE  /w No Encryption | Exceed 750GB Daily ~ Complex
[4] TDRIVE  /w Encryption    | Exceed 750GB Daily ~ Complex
[5] Local                    | No GSuite - Stays Local

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
=======
[1] GDrive Unencrypted | Upload 750GB Daily ~ Simple
[2] GDrive Encrypted   | Upload 750GB Daily ~ Simple
[3] SDrive Unencrypted | Exceed 750GB Daily ~ Complex
[4] SDrive Encrypted   | Exceed 750GB Daily ~ Complex
[5] PG Local           | No GSuite - Stays Local
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
[Z] Exit
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  read -p '↘️  Set Choice | Press [ENTER]: ' typed </dev/tty
  if [ "$typed" == "1" ]; then
    echo "mu" >/var/plexguide/pgclone.transport && echo
  elif [ "$typed" == "2" ]; then
    echo "me" >/var/plexguide/pgclone.transport && echo
  elif [ "$typed" == "3" ]; then
    echo "bu" >/var/plexguide/pgclone.transport && echo
  elif [ "$typed" == "4" ]; then
    echo "be" >/var/plexguide/pgclone.transport && echo
  elif [ "$typed" == "5" ]; then
    echo "le" >/var/plexguide/pgclone.transport && echo
  elif [[ "$typed" == "Z" || "$typed" == "z" ]]; then

<<<<<<< HEAD
    # If a New Installer, User Cannot Exit & Must Select a Version
    transport=$(cat /var/plexguide/pgclone.transport)
    if [ "$transport" == "NOT-SET" ]; then
      transportmode
    fi
    question1
  else
    badinput
    transportmode
  fi
=======
  if [ "$typed" == "1" ]; then echo "gd" > /pg/rclone/pgclone.transport && echo;
elif [ "$typed" == "2" ]; then echo "gc" > /pg/rclone/pgclone.transport && echo;
elif [ "$typed" == "3" ]; then echo "sd" > /pg/rclone/pgclone.transport && echo;
elif [ "$typed" == "4" ]; then echo "sc" > /pg/rclone/pgclone.transport && echo;
elif [ "$typed" == "5" ]; then echo "solohd" > /pg/rclone/pgclone.transport && echo;
elif [[ "$typed" == "Z" || "$typed" == "z" ]]; then

# If a New Installer, User Cannot Exit & Must Select a Version
transport=$(cat /pg/rclone/pgclone.transport)
if [ "$transport" == "NOT-SET" ]; then
transportmode; fi

question1;
else
  badinput
  transportmode; fi
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
}

changeproject() {
  read -p '💬 Set/Change Project ID? (y/n)| Press [ENTER] ' typed </dev/tty
  if [[ "$typed" == "n" || "$typed" == "N" ]]; then
    question1
  elif [[ "$typed" == "y" || "$typed" == "Y" ]]; then
    a=b
  else
    badinput
    echo ""
    changeproject
  fi
}

projectidset() {
  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: Type the Project Name to Utilize
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
<<<<<<< HEAD
  cat /var/plexguide/projects.list | cut -d' ' -f1 | tail -n +2
  cat /var/plexguide/projects.list | cut -d' ' -f1 | tail -n +2 >/var/plexguide/project.cut
=======
  cat /pg/var/projects.list | cut -d' ' -f1 | tail -n +2
  cat /pg/var/projects.list | cut -d' ' -f1 | tail -n +2 > /pg/var/project.cut
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
  echo ""
  read -p '↘️  Type Project Name | Press [ENTER]: ' typed </dev/tty
  echo ""
<<<<<<< HEAD
  list=$(cat /var/plexguide/project.cut | grep $typed)
=======
  list=$(cat /pg/var/project.cut | grep $typed)

>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
  if [ "$typed" != "$list" ]; then
    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
⛔  System Message: Error! Type Exact of the Project Name Listed!
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
    read -p ' ↘️  Acknowledge Info | Press [ENTER] ' typed </dev/tty
    projectidset
  fi
}
<<<<<<< HEAD
testphase() {
  echo "" >/opt/appdata/plexguide/test.conf
  echo "[$type]" >>/opt/appdata/plexguide/test.conf
  echo "client_id = $public" >>/opt/appdata/plexguide/test.conf
  echo "client_secret = $secret" >>/opt/appdata/plexguide/test.conf
  echo "type = drive" >>/opt/appdata/plexguide/test.conf
  echo -n "token = {\"access_token\":${accesstoken}\"token_type\":\"Bearer\",\"refresh_token\":${refreshtoken}\"expiry\":\"${final}\"}" >>/opt/appdata/plexguide/test.conf
  echo "" >>/opt/appdata/plexguide/test.conf
  if [ "$type" == "tdrive" ]; then
    teamid=$(cat /var/plexguide/pgclone.teamid)
    echo "team_drive = $teamid" >>/opt/appdata/plexguide/test.conf
  fi
  echo ""
  ## Adds Encryption to the Test Phase if Move or Blitz Encrypted is On
  encheck=$(cat /var/plexguide/pgclone.transport)
  if [[ "$encheck" == "be" || "$encheck" == "me" ]]; then
    if [ "$type" == "gdrive" ]; then
      entype="gcrypt"
    else entype="tcrypt"; fi
    PASSWORD=$(cat /var/plexguide/pgclone.password)
    SALT=$(cat /var/plexguide/pgclone.salt)
    ENC_PASSWORD=$(rclone obscure "$PASSWORD")
    ENC_SALT=$(rclone obscure "$SALT")
    echo "" >>/opt/appdata/plexguide/test.conf
    echo "[$entype]" >>/opt/appdata/plexguide/test.conf
    echo "type = crypt" >>/opt/appdata/plexguide/test.conf
    echo "remote = $type:/encrypt" >>/opt/appdata/plexguide/test.conf
    echo "filename_encryption = standard" >>/opt/appdata/plexguide/test.conf
    echo "directory_name_encryption = true" >>/opt/appdata/plexguide/test.conf
    echo "password = $ENC_PASSWORD" >>/opt/appdata/plexguide/test.conf
    echo "password2 = $ENC_SALT" >>/opt/appdata/plexguide/test.conf
  fi
  testphase2
=======

testphase () {
  echo "" > /pg/rclone/test.conf
  echo "[$type]" >> /pg/rclone/test.conf
  echo "client_id = $public" >> /pg/rclone/test.conf
  echo "client_secret = $secret" >> /pg/rclone/test.conf
  echo "type = drive" >> /pg/rclone/test.conf
  echo -n "token = {\"access_token\":${accesstoken}\"token_type\":\"Bearer\",\"refresh_token\":${refreshtoken}\"expiry\":\"${final}\"}" >> /pg/rclone/test.conf
  echo "" >> /pg/rclone/test.conf
  if [ "$type" == "sd" ]; then
  teamid=$(cat /pg/rclone/pgclone.teamid)
  echo "team_drive = $teamid" >> /pg/rclone/test.conf; fi
  echo ""

## Adds Encryption to the Test Phase if Move or Blitz Encrypted is On
encheck=$(cat /pg/rclone/pgclone.transport)
if [[ "$encheck" == "sc" || "$encheck" == "gc" ]]; then

  if [ "$type" == "gdrive" ]; then entype="gcrypt";
  else entype="scrypt"; fi

  PASSWORD=`cat /pg/rclone/pgclone.password`
  SALT=`cat /pg/rclone/pgclone.salt`
  ENC_PASSWORD=`rclone obscure "$PASSWORD"`
  ENC_SALT=`rclone obscure "$SALT"`
  echo "" >> /pg/rclone/test.conf
  echo "[$entype]" >> /pg/rclone/test.conf
  echo "type = crypt" >> /pg/rclone/test.conf
  echo "remote = $type:/encrypt" >> /pg/rclone/test.conf
  echo "filename_encryption = standard" >> /pg/rclone/test.conf
  echo "directory_name_encryption = true" >> /pg/rclone/test.conf
  echo "password = $ENC_PASSWORD" >> /pg/rclone/test.conf
  echo "password2 = $ENC_SALT" >> /pg/rclone/test.conf;

fi
testphase2
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
}
testphase2() {
  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: Conducting Validation Checks - $type
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF
  sleep 1
  tee <<-EOF
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: Creating Test Directory - $type:/plexguide
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF
  sleep 1
<<<<<<< HEAD
  rclone mkdir --config /opt/appdata/plexguide/test.conf $type:/plexguide
  tee <<-EOF
=======
  rclone mkdir --config /pg/rclone/test.conf $type:/plexguide
tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: Checking Existance of $type:/plexguide
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
<<<<<<< HEAD
  rcheck=$(rclone lsd --config /opt/appdata/plexguide/test.conf $type: | grep -oP plexguide | head -n1)
  if [ "$rcheck" != "plexguide" ]; then
    tee <<-EOF
=======
  rcheck=$(rclone lsd --config /pg/rclone/test.conf $type: | grep -oP plexguide | head -n1)

  if [ "$rcheck" != "plexguide" ];then
tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
⛔  System Message: Validation Checks Failed
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

TIPS:
1. Did you copy your username and password correctly?
2. When you created the credentials, did you select "Other"?
3. Did you enable your API?

FOR ENCRYPTION (IF SELECTED)
1. Did You Set a Password?

EOF
<<<<<<< HEAD
    echo "⚠️  Not Activated" >/var/plexguide/$type.pgclone
    read -p '↘️  Acknowledge Info | Press [ENTER] ' typed2 </dev/tty
=======
    echo "⚠️  Not Activated" > /pg/var/$type.pgclone
    read -p '↘️  Acknowledge Info | Press [ENTER] ' typed2 < /dev/tty
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
    question1
  else
    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: Validation Checks Passed - $type
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
<<<<<<< HEAD
  fi
  read -p '↘️  Acknowledge Info | Press [ENTER] ' typed2 </dev/tty
  echo "✅ Activated" >/var/plexguide/$type.pgclone
  ## Copy the Test File to the Real RClone Conf
  cat /opt/appdata/plexguide/test.conf >>/opt/appdata/plexguide/rclone.conf
  ## Back to the Main Mount Menu
  mountsmenu
=======

fi

read -p '↘️  Acknowledge Info | Press [ENTER] ' typed2 < /dev/tty
echo "✅ Activated" > /pg/var/$type.pgclone

## Copy the Test File to the Real RClone Conf
cat /pg/rclone/test.conf >> /pg/rclone/blitz.conf

## Back to the Main Mount Menu
mountsmenu

EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
}
deploychecks() {
  secret=$(cat /var/plexguide/pgclone.secret)
  public=$(cat /var/plexguide/pgclone.public)
  teamdrive=$(cat /var/plexguide/pgclone.teamdrive)

<<<<<<< HEAD
  if [ "$secret" == "" ]; then
    tee <<-EOF
=======
deploychecks () {
secret=$(cat /pg/rclone/pgclone.secret)
public=$(cat /pg/rclone/pgclone.public)
teamdrive=$(cat /pg/rclone/pgclone.teamdrive)

if [ "$secret" == "" ]; then
tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
⛔  ERROR: Secret Key Is Blank! Unable to Deploy!
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
    read -p '↘️  Acknowledge Info | Press [Enter] ' typed </dev/tty
    question1
  fi
  if [ "$public" == "" ]; then
    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
⛔  ERROR: Client ID Is Blank! Unable to Deploy!
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
    read -p '↘️  Acknowledge Info | Press [Enter] ' typed </dev/tty
    question1
  fi
}
