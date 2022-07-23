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
badinput() {
    echo
    read -p '⛔️ ERROR - Bad Input! | Press [ENTER] ' typed </dev/tty
}
<<<<<<< HEAD
variable /var/plexguide/project.email "NOT-SET"
emailaccount=$(cat /var/plexguide/project.email)
=======

glogin () {

emailaccount=$(cat /pg/var/project.email)
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

glogin() {
if [[ "$emailaccount" == "NOT-SET" ]]; then
    echo
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo " Email Account - NOT-SET - First Start "
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
 fi
  
    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
💪 Set E-Mail Address
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
What email address from the Google Console do you want to be associated
with from your Google GSuite? Ensure that it exists!

[Z] Exit

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF

    read -p '↘️  Input E-Mail | Press [ENTER]: ' typed </dev/tty

    if [[ "$typed" == "" ]]; then glogin; fi
    if [[ "$typed" == "exit" || "$typed" == "Exit" || "$typed" == "EXIT" || "$typed" == "z" || "$typed" == "Z" ]]; then clonestart; fi

<<<<<<< HEAD
    gcloud auth login --account = $typed
    gcloud info | grep Account: | cut -c 10- >/var/plexguide/project.account
    account=$(cat /var/plexguide/project.account)
=======
gcloud auth login --account = $typed
gcloud info | grep Account: | cut -c 10- > /pg/var/project.account
account=$(cat /pg/var/project.account)
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

    testcheck=$(gcloud auth list | grep "$typed")
    if [[ "$testcheck" == "" ]]; then
        echo
        echo "INFO CHECK: E-Mail Address Failed!"
        read -p '↘️  Acknowledge Info | Press [ENTER] ' typed </dev/tty
        glogin
    fi

<<<<<<< HEAD
    echo "$typed" >/var/plexguide/pgclone.email
=======
echo "$typed" > /pg/rclone/pgclone.email
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
}
