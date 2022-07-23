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

# BAD INPUT
exitclone() {
  if [[ "$typed" == "exit" || "$typed" == "Exit" || "$typed" == "EXIT" || "$typed" == "z" || "$typed" == "Z" ]]; then clonestart; fi
}

variable() {
  file="$1"
  if [ ! -e "$file" ]; then echo "$2" >$1; fi
}

mustset() {
  pgclonevars

  if [[ "$transport" == "NOT-SET" ]]; then
    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
💪 Welcome to rClone  
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
NOTE: rClone is a service that automates mergerfs; with mount, rclone,
and key development to mount user drives and move/store data accordingly.
Visit the link above before starting this process!

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[1] rClone Method: [ $transport ]

[Z] Exit
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF

    read -rp '↘️  Input Selection | Press [ENTER]: ' typed </dev/tty

    case $typed in
    1) transportselect ;;
    z) exit ;;
    Z) exit ;;
    *) mustset ;;
    esac
  fi
}

<<<<<<< HEAD
rcpiece() {
  tee "/etc/fuse.conf" >/dev/null <<EOF
=======
setthrottleblitz () {
tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: BW Limit Notice        📓 Reference: move.pgblitz.com
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

💬 100MB = 1 Gig Speeds | 1000MB = 10 Gig Speeds - Remember that your
   upload speeds are still limited to your server's max upload connection

EOF
  read -rp '↘️  Type a Speed from 1 - 1000 | Press [ENTER]: ' typed < /dev/tty
  if [[ "$typed" -ge "1" && "$typed" -le "1000" ]]; then echo "$typed" > /pg/var/blitz.bw
else setthrottleblitz; fi
}

setthrottlemove () {
tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: BW Limit Notice        📓 Reference: move.pgblitz.com
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

💬 10MB is a safe limit. If exceeding 10MB and uploading straight for
24 hours, an upload ban will be triggered.

EOF
  read -rp '↘️  Type a Speed from 1 - 1000 | Press [ENTER]: ' typed < /dev/tty
  if [[ "$typed" -ge "1" && "$typed" -le "1000" ]]; then echo "$typed" > /pg/var/move.bw
else setthrottlemove; fi
}

rcpiece () {
tee "/etc/fuse.conf" > /dev/null <<EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
# /etc/fuse.conf - Configuration file for Filesystem in Userspace (FUSE)
# Set the maximum number of FUSE mounts allowed to non-root users.
# The default is 1000.
#mount_max = 1000
# Allow non-root users to specify the allow_other or allow_root mount options.
user_allow_other
EOF
}

<<<<<<< HEAD
removepgservices() {
  ansible-playbook /opt/pgclone/ymls/remove.yml
}

keysprocessed() {
  mkdir -p /opt/appdata/plexguide/keys/processed
  ls -1 /opt/appdata/plexguide/keys/processed | wc -l >/var/plexguide/project.keycount
=======

removepgservices () {
  ansible-playbook /pg/pgclone/pgservices.yml
}

readrcloneconfig () {
  touch /pg/rclone/blitz.conf
  mkdir -p /pg/rclone/

  gdcheck=$(cat /pg/rclone/blitz.conf | grep gdrive)
  if [ "$gdcheck" != "" ]; then echo "good" > /pg/rclone/gdrive.status && gdstatus="good";
  else echo "bad" > /pg/rclone/gdrive.status && gdstatus="bad"; fi

  gccheck=$(cat /pg/rclone/blitz.conf | grep "remote = gd:/encrypt")
  if [ "$gccheck" != "" ]; then echo "good" > /pg/rclone/gcrypt.status && gcstatus="good";
  else echo "bad" > /pg/rclone/gcrypt.status && gcstatus="bad"; fi

  tdcheck=$(cat /pg/rclone/blitz.conf | grep sdrive)
  if [ "$tdcheck" != "" ]; then echo "good" > /pg/rclone/sdrive.status && tdstatus="good"
  else echo "bad" > /pg/rclone/sdrive.status && tdstatus="bad"; fi

}

rcloneconfig () {
  rclone config --config /pg/rclone/blitz.conf
}

keysprocessed () {
  mkdir -p /pg/var/keys/processed
  ls -1 /pg/var/keys/processed | wc -l > /pg/var/project.keycount
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
}

ShortNotice() {

    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✔️ Settings have been updated!
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
    read -rp '↘️  Press [ENTER] to continue ' typed </dev/tty
}
