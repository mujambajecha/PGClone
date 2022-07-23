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
emailgen() {

<<<<<<< HEAD
  rm -rf /var/plexguide/.emailbuildlist 1>/dev/null 2>&1
  rm -rf /var/plexguide/.emaillist 1>/dev/null 2>&1

  ls -la /opt/appdata/plexguide/.blitzkeys | awk '{print $9}' | tail -n +4 >/var/plexguide/.emailbuildlist
  while read p; do
    cat /opt/appdata/plexguide/.blitzkeys/$p | grep client_email | awk '{print $2}' | sed 's/"//g' | sed 's/,//g' >>/var/plexguide/.emaillist
  done </var/plexguide/.emailbuildlist
=======
rm -rf /pg/var/.emailbuildlist 1>/dev/null 2>&1
rm -rf /pg/var/.emaillist  1>/dev/null 2>&1

ls -la /pg/var/.blitzkeys | awk '{print $9}' | tail -n +4 > /pg/var/.emailbuildlist
while read p; do
  cat /pg/var/.blitzkeys/$p | grep client_email | awk '{print $2}' | sed 's/"//g' | sed 's/,//g' >> /pg/var/.emaillist
done </pg/var/.emailbuildlist
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 EMail Share Generator
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

PURPOSE: Share out the service accounts for the TeamDrives. 
Failing to do so will result in Blitz Failing!

Shortcut to Google Team Drives 

NOTE 1: Share the E-Mails with the CORRECT TEAMDRIVE: $sdname
NOTE 2: SAVE TIME! Copy & Paste the all the E-Mails into the share!"

EOF
<<<<<<< HEAD
  cat /var/plexguide/.emaillist
  echo ""
  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  read -rp '↘️  Completed? | Press [ENTER] ' typed </dev/tty
  clonestart
=======
cat /pg/var/.emaillist
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
read -rp '↘️  Completed? | Press [ENTER] ' typed < /dev/tty
clonestart
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

}
