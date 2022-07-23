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
oauthcheck() {
  pgclonevars
  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 Conducting Validation Checks: $oauthcheck
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  rcheck=$(rclone lsd --config /pg/rclone/.$oauthcheck $oauthcheck: | grep -oP plexguide | head -n1)
  if [[ "$rcheck" != "plexguide" ]]; then
    rclone mkdir --config /pg/rclone/.$oauthcheck $oauthcheck:/plexguide
    rcheck=$(rclone lsd --config /pg/rclone/.$oauthcheck $oauthcheck: | grep -oP plexguide | head -n1)
  fi

  if [ "$rcheck" != "plexguide" ]; then
    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
⛔  Validation Checks Failed: $oauthcheck
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

NOTES:

[1] Did you set up your $oauthcheck accordingly to the wiki?
[2] Is your project active?

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
<<<<<<< HEAD
    rm -rf /opt/appdata/plexguide/.$oauthcheck 1>/dev/null 2>&1

    if [[ "$oauthcheck" == "gdrive" ]]; then rm -rf /opt/appdata/plexguide/.gcrypt 1>/dev/null 2>&1; fi
    if [[ "$oauthcheck" == "tdrive" ]]; then rm -rf /opt/appdata/plexguide/.tcrypt 1>/dev/null 2>&1; fi
    read -p '↘️  Acknowledge Info | Press [ENTER] ' typed2 </dev/tty
=======
rm -rf /pg/rclone/.$oauthcheck 1>/dev/null 2>&1

    if [[ "$oauthcheck" == "gdrive" ]]; then rm -rf /pg/rclone/.gd 1>/dev/null 2>&1; fi
    if [[ "$oauthcheck" == "sdrive" ]]; then rm -rf /pg/rclone/.sd 1>/dev/null 2>&1; fi

    read -p '↘️  Acknowledge Info | Press [ENTER] ' typed2 < /dev/tty
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
    clonestart
  else
    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 System Message: Validation Checks Passed - $oauthcheck
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
  fi
}
