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
keystart() {
  pgclonevars

 kread=$(gcloud --account=${pgcloneemail} iam service-accounts list | awk '{print $1}' | tail -n +2 | cut -c7- | cut -f1 -d "?" | sort | uniq | head -n 1 >/var/plexguide/.gcloudposs)
 keyposs=$( cat /var/plexguide/.gcloudposs )

FIRSTV=$keyposs
SECONDV=1
keysposscount=$(expr $FIRSTV - $SECONDV)
#echo $keysposscount

  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 SYSTEM MESSAGE: Key Number Selection! (From 2 thru 20 )
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
QUESTION - Create how many keys for Blitz? 

MATH:
2  Keys = 1.5 TB Daily | 6  Keys = 4.5 TB Daily
10 Keys = 7.5 TB Daily | 20 Keys = 15  TB Daily

Possible $keysposscount keys to build for $pgcloneproject

NOTE 1: Creating more keys DOES NOT SPEED up your transfers
NOTE 2: Realistic key generation for most are 6 - 8 keys
NOTE 3: 20 Keys are only for GCE Feeder !!

💬 # of Keys Generated Sets Your Daily Upload Limit!
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  read -p '↘️  Type a Number [ 2 thru 20 ] | Press [ENTER]: ' typed </dev/tty

  exitclone

  num=$typed
  if [[ "$typed" -ge "1" && "$typed" -le "21" ]]; then
    keyphase2
  else keystart; fi
}

keyphase2() {
  num=$typed

<<<<<<< HEAD
  rm -rf /opt/appdata/plexguide/blitzkeys 1>/dev/null 2>&1
  mkdir -p /opt/appdata/plexguide/blitzkeys

  cat /opt/appdata/plexguide/.gdrive >/opt/appdata/plexguide/rclone.conf
  if [ -e "/opt/appdata/plexguide/.tdrive" ]; then cat /opt/appdata/plexguide/.tdrive >>/opt/appdata/plexguide/.keytemp; fi
  if [ -e "/opt/appdata/plexguide/.gcrypt" ]; then cat /opt/appdata/plexguide/.gcrypt >>/opt/appdata/plexguide/.keytemp; fi
  if [ -e "/opt/appdata/plexguide/.tcrypt" ]; then cat /opt/appdata/plexguide/.tcrypt >>/opt/appdata/plexguide/.keytemp; fi

  gcloud --account=${pgcloneemail} iam service-accounts list | awk '{print $1}' | tail -n +2 | cut -c2- | cut -f1 -d "?" | sort | uniq >/var/plexguide/.gcloudblitz

  rm -rf /var/plexguide/.blitzbuild 1>/dev/null 2>&1
  touch /var/plexguide/.blitzbuild
  while read p; do
    echo $p >/var/plexguide/.blitztemp
    blitzcheck=$(grep "blitz" /var/plexguide/.blitztemp)
    if [[ "$blitzcheck" != "" ]]; then echo $p >>/var/plexguide/.blitzbuild; fi
  done </var/plexguide/.gcloudblitz

  keystotal=$(cat /var/plexguide/.blitzbuild | wc -l)
  # do a 100 calculation - reminder

  keysleft=$num
  count=0
  gdsacount=0
  gcount=0
  tempbuild=0
  rm -rf /opt/appdata/plexguide/.keys 1>/dev/null 2>&1
  touch /opt/appdata/plexguide/.keys
  rm -rf /opt/appdata/plexguide/.blitzkeys
  mkdir -p /opt/appdata/plexguide/.blitzkeys
  echo "" >/opt/appdata/plexguide/.keys
=======
rm -rf /pg/var/blitzkeys 1>/dev/null 2>&1
mkdir -p /pg/var/blitzkeys

cat /pg/rclone/.gd > /pg/rclone/blitz.conf
if [ -e "/pg/rclone/.sd" ]; then cat /pg/rclone/.sd >> /pg/var/.keytemp; fi
if [ -e "/pg/rclone/.gc" ]; then cat /pg/rclone/.gc >> /pg/var/.keytemp; fi
if [ -e "/pg/rclone/.sc" ]; then cat /pg/rclone/.sc >> /pg/var/.keytemp; fi

gcloud --account=${pgcloneemail} iam service-accounts list |  awk '{print $1}' | \
       tail -n +2 | cut -c2- | cut -f1 -d "?" | sort | uniq > /pg/var/.gcloudblitz

 rm -rf /pg/var/.blitzbuild 1>/dev/null 2>&1
 touch /pg/var/.blitzbuild
 while read p; do
   echo $p > /pg/var/.blitztemp
   blitzcheck=$(grep "blitz" /pg/var/.blitztemp)
   if [[ "$blitzcheck" != "" ]]; then echo $p >> /pg/var/.blitzbuild; fi
 done </pg/var/.gcloudblitz

keystotal=$(cat /pg/var/.blitzbuild | wc -l)
# do a 100 calculation - reminder

keysleft=$num
count=0
gdsacount=0
gcount=0
tempbuild=0
rm -rf /pg/var/.keys 1>/dev/null 2>&1
touch /pg/var/.keys
rm -rf /pg/var/.blitzkeys
mkdir -p /pg/var/.blitzkeys
echo "" > /pg/var/.keys
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 Key Generator ~ [$num] keys
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF

  gdsacount() {
    ((gcount++))
    if [[ "$gcount" -ge "1" && "$gcount" -le "9" ]]; then
      tempbuild=0${gcount}
    else tempbuild=$gcount; fi
  }

  keycreate1() {
    #echo $count # for tshoot
    gdsacount
    gcloud --account=${pgcloneemail} iam service-accounts create blitz0${count} --display-name “blitz0${count}”
    gcloud --account=${pgcloneemail} iam service-accounts keys create /pg/var/.blitzkeys/GDSA${tempbuild} --iam-account blitz0${count}@${pgcloneproject}.iam.gserviceaccount.com --key-file-type="json"
    gdsabuild
    if [[ "$gcount" -ge "1" && "$gcount" -le "9" ]]; then
      echo "blitz0${count} is linked to GDSA${tempbuild}"
    else echo "blitz0${count} is linked to GDSA${gcount}"; fi
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    keysleft=$((keysleft - 1))
    flip=on
  }

  keycreate2() {
    #echo $count # for tshoot
    gdsacount
    gcloud --account=${pgcloneemail} iam service-accounts create blitz${count} --display-name “blitz${count}”
    gcloud --account=${pgcloneemail} iam service-accounts keys create /pg/var/.blitzkeys/GDSA${tempbuild} --iam-account blitz${count}@${pgcloneproject}.iam.gserviceaccount.com --key-file-type="json"
    gdsabuild
    if [[ "$gcount" -ge "1" && "$gcount" -le "9" ]]; then
      echo "blitz${count} is linked to GDSA${tempbuild}"
    else echo "blitz${count} is linked to GDSA${gcount}"; fi
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    keysleft=$((keysleft - 1))
    flip=on
  }

<<<<<<< HEAD
  keysmade=0
  while [[ "$keysleft" -gt "0" ]]; do
    flip=off
    while [[ "$flip" == "off" ]]; do
      ((count++))
      if [[ "$count" -ge "1" && "$count" -le "9" ]]; then
        if [[ $(grep "0${count}" /var/plexguide/.blitzbuild) == "" ]]; then keycreate1; fi
      else
        if [[ $(grep "${count}" /var/plexguide/.blitzbuild) == "" ]]; then keycreate2; fi
      fi
    done
=======
keysmade=0
while [[ "$keysleft" -gt "0" ]]; do
  flip=off
  while [[ "$flip" == "off" ]]; do
    ((count++))
    if [[ "$count" -ge "1" && "$count" -le "9" ]]; then
      if [[ $(grep "0${count}" /pg/var/.blitzbuild) = "" ]]; then keycreate1; fi
    else
      if [[ $(grep "${count}" /pg/var/.blitzbuild) = "" ]]; then keycreate2; fi; fi
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
  done

}

<<<<<<< HEAD
gdsabuild() {
  pgclonevars
  ####tempbuild is need in order to call the correct gdsa
  tee >>/opt/appdata/plexguide/.keys <<-EOF
=======
gdsabuild () {
pgclonevars
####tempbuild is need in order to call the correct gdsa
tee >> /pg/var/.keys <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
[GDSA${tempbuild}]
type = drive
scope = drive
service_account_file = /pg/var/.blitzkeys/GDSA${tempbuild}
team_drive = ${sdid}

EOF

<<<<<<< HEAD
  if [[ "$transport" == "be" ]]; then
    encpassword=$(rclone obscure "${clonepassword}")
    encsalt=$(rclone obscure "${clonesalt}")

    tee >>/opt/appdata/plexguide/.keys <<-EOF
=======
if [[ "$transport" == "sc" || "$transport" == "sd" ]]; then
encpassword=$(rclone obscure "${clonepassword}")
encsalt=$(rclone obscure "${clonesalt}")

tee >> /pg/var/.keys <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
[GDSA${tempbuild}C]
type = crypt
remote = GDSA${tempbuild}:/encrypt
filename_encryption = standard
directory_name_encryption = true
password = $encpassword
password2 = $encsalt

EOF

<<<<<<< HEAD
  fi
  #echo "" /opt/appdata/plexguide/.keys
=======
fi
#echo "" /pg/var/.keys
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
}

gdsaemail() {
  tee <<-EOF
EOF

  read -rp '↘️  Process Complete! Ready to Share E-Mails? | Press [ENTER] ' typed </dev/tty
  emailgen
}

<<<<<<< HEAD
deletekeys() {
  pgclonevars
  gcloud --account=${pgcloneemail} iam service-accounts list >/var/plexguide/.deletelistpart1
=======
deletekeys () {
pgclonevars
gcloud --account=${pgcloneemail} iam service-accounts list > /pg/var/.deletelistpart1
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

  if [[ $(cat /pg/var/.deletelistpart1) == "" ]]; then

    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 Error! Nothing To Delete!
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

NOTE: No Accounts for Project ~ $pgcloneproject
are detected! Exiting!

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
    read -p '↘️  Acknowledge Info! | PRESS [ENTER] ' token </dev/tty
    clonestart
  fi

  rm -rf /pg/var/.listpart2 1>/dev/null 2>&1
  while read p; do
<<<<<<< HEAD
    echo $p >/var/plexguide/.listpart1
    writelist=$(grep pg-bumpnono-143619 /var/plexguide/.listpart1)
    if [[ "$writelist" != "" ]]; then echo $writelist >>/var/plexguide/.listpart2; fi
  done </var/plexguide/.deletelistpart1

  cat /var/plexguide/.listpart2 | awk '{print $2}' |
    sort | uniq >/var/plexguide/.gcloudblitz
=======
  echo $p > /pg/var/.listpart1
  writelist=$(grep pg-bumpnono-143619 /pg/var/.listpart1)
  if [[ "$writelist" != "" ]]; then echo $writelist >> /pg/var/.listpart2; fi
done </pg/var/.deletelistpart1

cat /pg/var/.listpart2 |  awk '{print $2}' | \
    sort | uniq > /pg/var/.gcloudblitz
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 Keys to Delete?
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
<<<<<<< HEAD
  cat /var/plexguide/.gcloudblitz
  tee <<-EOF
=======
cat /pg/var/.gcloudblitz
tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

Delete All Keys for Project ~ ${pgcloneproject}?

WARNING: If Plex, Emby, and/or JellyFin are using these keys, stop the
containers! Deleting keys in use by this project will result in those
containers losing metadata (due to being unable to access teamdrives)!

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF

  read -p '↘️  Type y or n | PRESS [ENTER]: ' typed </dev/tty
  case $typed in
  y) yesdeletekeys ;;
  Y) yesdeletekeys ;;
  N) clonestart ;;
  n) clonestart ;;
  *) deletekeys ;;
  esac
}

<<<<<<< HEAD
yesdeletekeys() {
  rm -rf /opt/appdata/plexguide/.blitzkeys/* 1>/dev/null 2>&1
  echo ""
  while read p; do
    gcloud --account=${pgcloneemail} iam service-accounts delete $p --quiet
  done </var/plexguide/.gcloudblitz
=======
yesdeletekeys () {
rm -rf /pg/var/.blitzkeys/* 1>/dev/null 2>&1
echo ""
while read p; do
gcloud --account=${pgcloneemail} iam service-accounts delete $p --quiet
done </pg/var/.gcloudblitz
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

  echo
  read -p '↘️  Process Complete! | PRESS [ENTER]: ' token </dev/tty
  clonestart
}
