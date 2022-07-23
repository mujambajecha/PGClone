<<<<<<< HEAD
#!/bin/bash
# Title:      PGBlitz (Reference Title File)
# Authors:    Admin9705, Deiteq, and many PGBlitz Contributors
# URL:        https://pgblitz.com - http://github.pgblitz.com
# GNU:        General Public License v3.0
################################################################################
defaultvars() {
  touch /var/plexguide/rclone.gdrive
  touch /var/plexguide/rclone.gcrypt
=======
#
# Title:      Reference Title File - PGBlitz
# Author(s):  Admin9705 & https://github.com/PGBlitz/PGClone/graphs/contributors ~ Physik - FlickerRate
# URL:        https://pgblitz.com - http://github.pgblitz.com
# GNU:        General Public License v3.0
################################################################################
defaultvars () {
  touch /pg/var/rclone.gdrive
  touch /pg/var/rclone.gcrypt
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
}

# FOR START DEPLOYMENT END #####################################################

deploygcryptcheck() {
  type=gcrypt
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
  rclone mkdir --config /opt/appdata/plexguide/rclone.conf $type:/plexguide
  tee <<-EOF
=======
  rclone mkdir --config /pg/rclone/blitz.conf $type:/plexguide
tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: Checking Existance of $type:/plexguide
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  rcheck=$(rclone lsd --config /pg/rclone/blitz.conf $type: | grep -oP plexguide | head -n1)

  if [ "$rcheck" != "plexguide" ]; then
    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
⛔  System Message: Validation Checks Failed
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

TIPS:
[ 1. ] Did you set up your gcrypt accordingly to the wiki?

[ 2. ] Did you ensure that the gcrypt overlapped on gdrive per the wiki?

EOF
    read -p '↘️  Acknowledge Info | Press [ENTER] ' typed2 </dev/tty
    question1
  else
    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: Validation Checks Passed - $type
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF

  fi
}

deploygdrivecheck() {
  type=gdrive
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
  rclone mkdir --config /opt/appdata/plexguide/rclone.conf $type:/plexguide
  tee <<-EOF
=======
  rclone mkdir --config /pg/rclone/blitz.conf $type:/plexguide
tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: Checking Existance of $type:/plexguide
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  rcheck=$(rclone lsd --config /pg/rclone/blitz.conf $type: | grep -oP plexguide | head -n1)

  if [ "$rcheck" != "plexguide" ]; then
    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
⛔  System Message: Validation Checks Failed
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

TIPS:
[ 1. ] Did you set up your $type accordingly to the wiki?

EOF
    read -p '↘️  Acknowledge Info | Press [ENTER] ' typed2 </dev/tty
    question1
  else
    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: Validation Checks Passed - $type
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF

  fi
}

<<<<<<< HEAD
deploytdrivecheck() {
  type=tdrive
  tee <<-EOF
=======
deploysdrivecheck () {
type=sdrive
tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

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
  rclone mkdir --config /opt/appdata/plexguide/rclone.conf $type:/plexguide
  tee <<-EOF
=======
  rclone mkdir --config /pg/rclone/blitz.conf $type:/plexguide
tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: Checking Existance of $type:/plexguide
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  rcheck=$(rclone lsd --config /pg/rclone/blitz.conf $type: | grep -oP plexguide | head -n1)

  if [ "$rcheck" != "plexguide" ]; then
    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
⛔  System Message: Validation Checks Failed
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

TIPS:
[ 1. ] Did you set up your $type accordingly to the wiki?

EOF
    read -p '↘️  Acknowledge Info | Press [ENTER] ' typed2 </dev/tty
    question1
  else
    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: Validation Checks Passed - $type
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF

  fi
}

deploygdsa01check() {
  type=GDSA01
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
  rclone mkdir --config /opt/appdata/plexguide/rclone.conf $type:/plexguide
  tee <<-EOF
=======
  rclone mkdir --config /pg/rclone/blitz.conf $type:/plexguide
tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: Checking Existance of $type:/plexguide
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  rcheck=$(rclone lsd --config /pg/rclone/blitz.conf $type: | grep -oP plexguide | head -n1)

  if [ "$rcheck" != "plexguide" ]; then
    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
⛔  System Message: Validation Checks Failed
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

TIPS:
[ 1. ] Did you set up your keys and share out your emails per the blitz wiki?

EOF
    read -p '↘️  Acknowledge Info | Press [ENTER] ' typed2 </dev/tty
    question1
  else
    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: Validation Checks Passed - $type
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF

  fi
}
# FOR FINAL DEPLOYMENT END #####################################################

<<<<<<< HEAD
tdrivecheck() {
  type=tdrive
  tee <<-EOF
=======
sdrivecheck () {
type=sdrive
tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

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
  rclone mkdir --config /opt/appdata/plexguide/rclone.conf $type:/plexguide
  tee <<-EOF
=======
  rclone mkdir --config /pg/rclone/blitz.conf $type:/plexguide
tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: Checking Existance of $type:/plexguide
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  rcheck=$(rclone lsd --config /pg/rclone/blitz.conf $type: | grep -oP plexguide | head -n1)

  if [ "$rcheck" != "plexguide" ]; then
    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
⛔  System Message: Validation Checks Failed
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

TIPS:
[ 1. ] Did you copy your username and password correctly?
[ 2. ] When you created the credentials, did you select "Other"?
[ 3. ] Did you enable your API?

EOF
<<<<<<< HEAD
    echo "Not Active" >/var/plexguide/gdrive.pgclone
    read -p '↘️  Acknowledge Info | Press [ENTER] ' typed2 </dev/tty
=======
    echo "Not Active" > /pg/var/gd.pgclone
    read -p '↘️  Acknowledge Info | Press [ENTER] ' typed2 < /dev/tty
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
    question1
  else
    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: Validation Checks Passed - $type
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF

  fi
  read -p '↘️  Acknowledge Info | Press [ENTER] ' typed2 </dev/tty
  EOF
}

<<<<<<< HEAD
deletekeys2() {
  choicedel=$(cat /var/plexguide/gdsa.cut)
  if [ "$choicedel" != "" ]; then
    echo ""
    echo "Deleting All Previous Service Accounts & Keys!"
    echo ""

    while read p; do
      gcloud iam service-accounts delete $p --quiet
    done </var/plexguide/gdsa.cut

    rm -rf /opt/appdata/plexguide/keys/processed/* 1>/dev/null 2>&1
    tee <<-EOF
=======
deletekeys2 () {
choicedel=$(cat /pg/var/gdsa.cut)
if [ "$choicedel" != "" ]; then
  echo ""
  echo "Deleting All Previous Service Accounts & Keys!"
  echo ""

  while read p; do
  gcloud iam service-accounts delete $p --quiet
  done </pg/var/gdsa.cut

rm -rf /pg/var/keys/processed/* 1>/dev/null 2>&1
tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 SYSTEM MESSAGE: Prior Service Accounts & Keys Deleted
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
    sleep 2
    keymenu
  else
    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 SYSTEM MESSAGE: No Prior Service Accounts or Keys!
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
    sleep 2
  fi
  question1
}

deletekeys() {
  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 ID: Key Gen Information
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
<<<<<<< HEAD
  gcloud iam service-accounts list --filter="GDSA" >/var/plexguide/gdsa.list
  cat /var/plexguide/gdsa.list | awk '{print $2}' | tail -n +2 >/var/plexguide/gdsa.cut
  cat /var/plexguide/gdsa.cut
  tee <<-EOF
=======
gcloud iam service-accounts list --filter="GDSA" > /pg/var/gdsa.list
cat /pg/var/gdsa.list | awk '{print $2}' | tail -n +2 > /pg/var/gdsa.cut
cat /pg/var/gdsa.cut
tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

Items listed are all service accounts that have been created! Proceeding
onward will destroy all service accounts and current keys!

EOF
  read -p '🌍 Proceed? y or n | Press [ENTER]: ' typed </dev/tty

  if [[ "$typed" == "Y" || "$typed" == "y" ]]; then
    deletekeys2
  elif [[ "$typed" == "N" || "$typed" == "n" ]]; then
    question1
  else
    badinput
    deletekeys
  fi
}
gdsabuild() {
  ## what sets if encrypted is on or not
<<<<<<< HEAD
  downloadpath=$(cat /var/plexguide/server.hd.path)
  tempbuild=$(cat /var/plexguide/json.tempbuild)
  path=/opt/appdata/plexguide/keys
  rpath=/opt/appdata/plexguide/rclone.conf
  tdrive=$(cat /opt/appdata/plexguide/rclone.conf | grep team_drive | head -n1)
  tdrive="${tdrive:13}"

  if [[ "$(cat /var/plexguide/pgclone.transport)" == "be" ]]; then
    # PASSWORD=$(cat /var/plexguide/pgclone.password)
    # SALT=$(cat /var/plexguide/pgclone.salt)
    ENC_PASSWORD=$(rclone obscure "$(cat /var/plexguide/pgclone.password)")
    ENC_SALT=$(rclone obscure "$(cat /var/plexguide/pgclone.salt)")
=======
  encheck=$(cat /pg/rclone/pgclone.transport)
  bencrypted=no
  if [ "$encheck" == "sc" ]; then bencrypted=yes; fi

  downloadpath=$(cat /pg/var/server.hd.path)
  tempbuild=$(cat /pg/var/json.tempbuild)
  path=/pg/var/keys
  rpath=/pg/rclone/blitz.conf
  sdrive=$( cat /pg/rclone/blitz.conf | grep team_drive | head -n1 )
  sdrive="${sd:13}"

  if [ "$bencrypted" == "yes" ]; then
  PASSWORD=$(cat /pg/rclone/pgclone.password)
  SALT=$(cat /pg/rclone/pgclone.salt)
  ENC_PASSWORD=`rclone obscure "$PASSWORD"`
  ENC_SALT=`rclone obscure "$SALT"`; fi
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

    mkdir -p $downloadpath/move/$tempbuild
    echo "" >>$rpath
    echo "[$tempbuild]" >>$rpath
    echo "type = drive" >>$rpath
    echo "client_id =" >>$rpath
    echo "client_secret =" >>$rpath
    echo "scope = drive" >>$rpath
    echo "root_folder_id =" >>$rpath
    echo "service_account_file = /opt/appdata/plexguide/keys/processed/$tempbuild" >>$rpath
    echo "team_drive = $tdrive" >>$rpath

    echo "" >>$rpath
    echo "[${tempbuild}C]" >>$rpath
    echo "type = crypt" >>$rpath
    echo "remote = $tempbuild:/encrypt" >>$rpath
    echo "filename_encryption = standard" >>$rpath
    echo "directory_name_encryption = true" >>$rpath
    echo "password = $ENC_PASSWORD" >>$rpath
    echo "password2 = $ENC_SALT" >>$rpath
  fi
  
  if [[ "$(cat /var/plexguide/pgclone.transport)" == "bu" ]]; then
  ####tempbuild is need in order to call the correct gdsa
<<<<<<< HEAD
    mkdir -p $downloadpath/move/$tempbuild
    echo "" >>$rpath
    echo "[$tempbuild]" >>$rpath
    echo "type = drive" >>$rpath
    echo "client_id =" >>$rpath
    echo "client_secret =" >>$rpath
    echo "scope = drive" >>$rpath
    echo "root_folder_id =" >>$rpath
    echo "service_account_file = /opt/appdata/plexguide/keys/processed/$tempbuild" >>$rpath
    echo "team_drive = $tdrive" >>$rpath
  fi
=======
  mkdir -p $downloadpath/move/$tempbuild
  echo "" >> $rpath
  echo "[$tempbuild]" >> $rpath
  echo "type = drive" >> $rpath
  echo "client_id =" >> $rpath
  echo "client_secret =" >> $rpath
  echo "scope = drive" >> $rpath
  echo "root_folder_id =" >> $rpath
  echo "service_account_file = /pg/var/keys/processed/$tempbuild" >> $rpath
  echo "team_drive = $sdrive" >> $rpath
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

}
deploykeys3() {
 kread=$(gcloud --account=${pgcloneemail} iam service-accounts list | awk '{print $1}' | tail -n +2 | cut -c7- | cut -f1 -d "?" | sort | uniq | head -n 1 >/var/plexguide/.gcloudposs)
 keyposs=$(cat /var/plexguide/.gcloudposs )

FIRSTV=$keyposs
SECONDV=1
keysposscount=$(expr $FIRSTV - $SECONDV)
#echo $keysposscount

  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 SYSTEM MESSAGE: Key Number Selection! (From 6 thru 20 )
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
QUESTION - Create how many keys for TDrive? 

MATH:
Min  6 Keys = 4.5TB Daily
Max 20 Keys = 15 TB Daily

Possible $keysposscount before you hit the 100 SAC's

NOTE 1: Creating more keys DOES NOT SPEED up your transfers
NOTE 2: Realistic key generation for most are 6 - 8 keys
NOTE 3: maximum of SAC is 100 , remove unused keys !!

💬 # of Keys Generated Sets Your Daily Upload Limit!
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  read -p '↘️  Type a Number [ 1 thru 20 ] | Press [ENTER]: ' typed </dev/tty

  num=$typed
  echo ""
 if [[ "$typed" -le "6" || "$typed" -ge "21" ]]; then
    echo "Creating $typed Keys" && keys=$typed
  fi
  sleep 2
  echo ""
   if [[ "$typed" -le "0" || "$typed" -ge "21" ]]; then deploykeys3; fi
  num=$keys
  count=0
  project=$(cat /pg/rclone/pgclone.project)

  ##wipe previous keys stuck there
  mkdir -p /pg/var/keys/processed/
  rm -rf /pg/var/keys/processed/* 1>/dev/null 2>&1

<<<<<<< HEAD
  ## purpose of the rewrite is to save gdrive and tdrive info and toss old GDSAs
  cat /opt/appdata/plexguide/rclone.conf | grep -w "\[tdrive\]" -A 5 >/opt/appdata/plexguide/tdrive.info
  cat /opt/appdata/plexguide/rclone.conf | grep -w "\[gdrive\]" -A 4 >/opt/appdata/plexguide/gdrive.info
  cat /opt/appdata/plexguide/rclone.conf | grep -w "\[tcrypt\]" -A 6 >/opt/appdata/plexguide/tcrypt.info
  cat /opt/appdata/plexguide/rclone.conf | grep -w "\[gcrypt\]" -A 6 >/opt/appdata/plexguide/gcrypt.info

  echo "#### rclone rewrite generated by rClone" >/opt/appdata/plexguide/rclone.conf
  echo "" >>/opt/appdata/plexguide/rclone.conf
  echo "" >>/opt/appdata/plexguide/rclone.conf
  cat /opt/appdata/plexguide/gdrive.info >>/opt/appdata/plexguide/rclone.conf
  echo "" >>/opt/appdata/plexguide/rclone.conf
  cat /opt/appdata/plexguide/tdrive.info >>/opt/appdata/plexguide/rclone.conf
  echo "" >>/opt/appdata/plexguide/rclone.conf
  cat /opt/appdata/plexguide/tcrypt.info >>/opt/appdata/plexguide/rclone.conf
  echo "" >>/opt/appdata/plexguide/rclone.conf
  cat /opt/appdata/plexguide/gcrypt.info >>/opt/appdata/plexguide/rclone.conf
=======
  ## purpose of the rewrite is to save gdrive and sdrive info and toss old GDSAs
      cat /pg/rclone/blitz.conf | grep -w "\[sdrive\]" -A 5 > /pg/var/sdrive.info
      cat /pg/rclone/blitz.conf | grep -w "\[gdrive\]" -A 4 > /pg/var/gdrive.info
      cat /pg/rclone/blitz.conf | grep -w "\[scrypt\]" -A 6 > /pg/var/scrypt.info
      cat /pg/rclone/blitz.conf | grep -w "\[gcrypt\]" -A 6 > /pg/var/gcrypt.info

      echo "#### rclone rewrite generated by pgblitz.com" > /pg/rclone/blitz.conf
      echo "" >> /pg/rclone/blitz.conf
      echo "" >> /pg/rclone/blitz.conf
      cat /pg/var/gdrive.info >> /pg/rclone/blitz.conf
      echo "" >> /pg/rclone/blitz.conf
      cat /pg/var/sdrive.info >> /pg/rclone/blitz.conf
      echo "" >> /pg/rclone/blitz.conf
      cat /pg/var/scrypt.info >> /pg/rclone/blitz.conf
      echo "" >> /pg/rclone/blitz.conf
      cat /pg/var/gcrypt.info >> /pg/rclone/blitz.conf
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

  while [ "$count" != "$keys" ]; do
    ((count++))
    rand=$(echo $((1 + RANDOM * RANDOM)))

    if [ "$count" -ge 1 -a "$count" -le 9 ]; then
      gcloud iam service-accounts create gdsa$rand --display-name “gdsa0$count”
<<<<<<< HEAD
      gcloud iam service-accounts keys create /opt/appdata/plexguide/keys/processed/gdsa0$count --iam-account gdsa$rand@$project.iam.gserviceaccount.com --key-file-type="json"
      echo "gdsa0$count" >/var/plexguide/json.tempbuild
=======
      gcloud iam service-accounts keys create /pg/var/keys/processed/gdsa0$count --iam-account gdsa$rand@$project.iam.gserviceaccount.com --key-file-type="json"
      echo "gdsa0$count" > /pg/var/json.tempbuild
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
      gdsabuild
      echo ""
    else
      gcloud iam service-accounts create gdsa$rand --display-name “gdsa$count”
<<<<<<< HEAD
      gcloud iam service-accounts keys create /opt/appdata/plexguide/keys/processed/gdsa$count --iam-account gdsa$rand@$project.iam.gserviceaccount.com --key-file-type="json"
      echo "gdsa$count" >/var/plexguide/json.tempbuild
=======
      gcloud iam service-accounts keys create /pg/var/keys/processed/gdsa$count --iam-account gdsa$rand@$project.iam.gserviceaccount.com --key-file-type="json"
      echo "gdsa$count" > /pg/var/json.tempbuild
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
      gdsabuild
      echo ""
    fi
  done

<<<<<<< HEAD
  echo "no" >/var/plexguide/project.deployed
=======
  echo "no" > /pg/var/project.deployed
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

  tee <<-EOF
  
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 SYSTEM MESSAGE: Key Generation Complete!
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

💬 Use the E-Mail Generator Next! Do Not Forget!

EOF
  read -p '↘️  Acknowledge Info | Press [ENTER] ' typed </dev/tty
}

deploykeys2() {
  deploykeys3
}

<<<<<<< HEAD
deploykeys() {
  gcloud iam service-accounts list --filter="gdsa" >/var/plexguide/gdsa.list
  cat /var/plexguide/gdsa.list | awk '{print $2}' | tail -n +2 >/var/plexguide/gdsa.cut
  deploykeys2
}

projectid() {
  # gcloud projects list >/var/plexguide/projects.list
  gcloud projects list | cut -d' ' -f1 | tail -n +2 >/var/plexguide/project.cut
  projectlist=$(gcloud projects list | cut -d' ' -f1 | tail -n +2)
  tee <<-EOF
=======
deploykeys () {
  gcloud iam service-accounts list --filter="GDSA" > /pg/var/gdsa.list
  cat /pg/var/gdsa.list | awk '{print $2}' | tail -n +2 > /pg/var/gdsa.cut
deploykeys2
}

projectid () {
gcloud projects list > /pg/var/projects.list
cat /pg/var/projects.list | cut -d' ' -f1 | tail -n +2 > /pg/var/project.cut
projectlist=$(cat /pg/var/project.cut)
tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 Projects Interface Menu
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

$projectlist

EOF

<<<<<<< HEAD
  read -p '↘️  Type EXACT Project Name to Utilize | Press [ENTER]: ' typed2 </dev/tty
  list=$(cat /var/plexguide/project.cut | grep $typed2)
=======
read -p '↘️  Type EXACT Project Name to Utilize | Press [ENTER]: ' typed2 < /dev/tty
  list=$(cat /pg/var/project.cut | grep $typed2)
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
  if [ "$list" == "" ]; then
    badinput && projectid
  fi
  gcloud config set project $typed2
  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 Standby - Enabling Your API
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  gcloud services enable drive.googleapis.com --project $typed2
<<<<<<< HEAD
  echo $typed2 >/var/plexguide/project.final
  echo
  read -p '🌍 Process Complete | Press [ENTER] ' typed2 </dev/tty

}

ufsbuilder() {
  downloadpath=$(cat /var/plexguide/server.hd.path)
  ls -la /opt/appdata/plexguide/keys/processed | awk '{ print $9}' | tail -n +4 >/tmp/pg.gdsa.ufs
  rm -rf /tmp/pg.gdsa.build 1>/dev/null 2>&1

  encryption="off"
=======
  echo $typed2 > /pg/var/project.final
echo
read -p '🌍 Process Complete | Press [ENTER] ' typed2 < /dev/tty

}

ufsbuilder () {
  downloadpath=$(cat /pg/var/server.hd.path)
  ls -la /pg/var/keys/processed | awk '{ print $9}' | tail -n +4 > /tmp/pg.gdsa.ufs
  rm -rf /tmp/pg.gdsa.build 1>/dev/null 2>&1
  #echo -n "/pg/sd=RO:" > /tmp/pg.gdsa.build
  #echo -n "/pg/gd=RO:" >> /tmp/pg.gdsa.build
  ##### Encryption Portion ### Start
  #scrypt=$(grep "scrypt" /pg/rclone/blitz.conf)
  #gcrypt=$(grep "gcrypt" /pg/rclone/blitz.conf)

  #if [ "$scrypt" == "[scrypt]" ]  && [ "$gcrypt" == "[gcrypt]" ]; then
  #    encryption="on"
  #  else
      encryption="off"
  #fi

  #if [ "$encryption" == "on" ]; then
  #  echo -n "/pg/gc=RO:" >> /tmp/pg.gdsa.build
  #fi
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
  ##### Encryption Portion ### END
  file="/pg/var/unionfs.pgpath"
  if [ -e "$file" ]; then rm -rf /pg/var/unionfs.pgpath && touch /pg/var/unionfs.pgpath; fi

  while read p; do
<<<<<<< HEAD
    mkdir -p $downloadpath/move/$p
    echo -n "$downloadpath/move/$p=RO:" >>/var/plexguide/unionfs.pgpath
=======
  mkdir -p $downloadpath/move/$p
  echo -n "$downloadpath/move/$p=RO:" >> /pg/var/unionfs.pgpath
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
  done </tmp/pg.gdsa.ufs
  builder=$(cat /pg/var/unionfs.pgpath)
}

blitzchecker() {
  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: Conducting RClone Validation Checks
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  sleep 1
  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: Creating Test Directory - GDSA01:/plexguide
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  sleep 1
<<<<<<< HEAD
  rclone mkdir --config /opt/appdata/plexguide/rclone.conf GDSA01:/plexguide
  tee <<-EOF
=======
  rclone mkdir --config /pg/rclone/blitz.conf gdsa01:/plexguide
tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: Checking Existance of GDSA01:/plexguide
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
<<<<<<< HEAD
  rcheck=$(rclone lsd --config /opt/appdata/plexguide/rclone.conf GDSA01: | grep -oP plexguide | head -n1)
=======
  rcheck=$(rclone lsd --config /pg/rclone/blitz.conf gdsa01: | grep -oP plexguide | head -n1)
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

  if [ "$rcheck" != "plexguide" ]; then
    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: RClone Validation Check Failed
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

TIPS:
1. Did you share out your emails to your teamdrives?

EOF
    read -p '↘️  Acknowledge Info | Press [ENTER] ' typed2 </dev/tty
    question1
  fi
}

rchecker() {
  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: Conducting RClone Validation Checks
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  sleep 1
  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: Creating Test Directory - sd:/plexguide
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  sleep 1
<<<<<<< HEAD
  rclone mkdir --config /opt/appdata/plexguide/rclone.conf tdrive:/plexguide
  tee <<-EOF
=======
  rclone mkdir --config /pg/rclone/blitz.conf sd:/plexguide
tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: Checking Existance of sd:/plexguide
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  rcheck=$(rclone lsd --config /pg/rclone/blitz.conf sd: | grep -oP plexguide | head -n1)

  if [ "$rcheck" != "plexguide" ]; then
    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: RClone Validation Check Failed
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

TIPS:
1. Did you set your sdrive correctly along with your teamdrive?

EOF
    rchecker=fail
    read -p '↘️  Acknowledge Info | Press [ENTER] ' typed2 </dev/tty
    question1
  fi
}

pgbdeploy() {
  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: Blitz Deployed!
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  read -p '↘️  Acknowledge Info | Press [ENTER] ' typed2 </dev/tty
}

<<<<<<< HEAD
keymenu() {
  gcloud info | grep Account: | cut -c 10- >/var/plexguide/project.account
  account=$(cat /var/plexguide/project.account)
  project=$(cat /var/plexguide/pgclone.project)
=======
keymenu () {
gcloud info | grep Account: | cut -c 10- > /pg/var/project.account
account=$(cat /pg/var/project.account)
project=$(cat /pg/rclone/pgclone.project)
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

  if [ "$account" == "NOT-SET" ]; then
    display5="[NOT-SET]"
  else
    display5="$account"
  fi

  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 Blitz Key Generation 
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[1] Google Account Login: [ $display5 ]
[2] Project Options     : [ $project ]
[3] Create Service Keys
[4] EMail Generator

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[A] Backup  Keys
[C] Destory All Prior Service Accounts
[Z] Exit
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF

  read -p '↘️  Type Choice | Press [ENTER]: ' typed </dev/tty

<<<<<<< HEAD
  if [ "$typed" == "1" ]; then
    gcloud auth login
    gcloud info | grep Account: | cut -c 10- >/var/plexguide/project.account
    account=$(cat /var/plexguide/project.account)
    keymenu
  elif [ "$typed" == "2" ]; then
    projectmenu
    keymenu
  elif [ "$typed" == "3" ]; then
    rchecker
    if [ $rchecker=fail ]; then
      deploykeys
      keymenu
    fi
  elif [ "$typed" == "4" ]; then
    bash /opt/pgclone/emails.sh && echo
    read -p '↘️  Confirm Info | Press [ENTER]: ' typed </dev/tty
    keymenu
  elif [[ "$typed" == "Z" || "$typed" == "z" ]]; then
    question1
  elif [[ "$typed" == "C" || "$typed" == "c" ]]; then
    deletekeys
    keymenu
  elif [[ "$typed" == "A" || "$typed" == "a" ]]; then
    keybackup
    keymenu
  else
    badinput
    keymenu
  fi
=======
if [ "$typed" == "1" ]; then
  gcloud auth login
  gcloud info | grep Account: | cut -c 10- > /pg/var/project.account
  account=$(cat /pg/var/project.account)
  keymenu
elif [ "$typed" == "2" ]; then
  projectmenu
  keymenu
elif [ "$typed" == "3" ]; then
  rchecker
  if [ $rchecker=fail ]; then
  deploykeys
  keymenu; fi
elif [ "$typed" == "4" ]; then
  bash /pg/pgclone/emails.sh && echo
  read -p '↘️  Confirm Info | Press [ENTER]: ' typed < /dev/tty
  keymenu
elif [[ "$typed" == "Z" || "$typed" == "z" ]]; then
  question1
elif [[ "$typed" == "C" || "$typed" == "c" ]]; then
  deletekeys
  keymenu
elif [[ "$typed" == "A" || "$typed" == "a" ]]; then
  keybackup
  keymenu
elif [[ "$typed" == "B" || "$typed" == "b" ]]; then
  keyrestore
  keymenu
else
  badinput
  keymenu; fi
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
}
