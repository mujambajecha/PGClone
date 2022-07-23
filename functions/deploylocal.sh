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
# NOTES
# Variable recall comes from /functions/variables.sh
################################################################################
<<<<<<< HEAD
executelocal() {
    # Reset Front Display
    rm -rf plexguide/deployed.version
    # Call Variables
    pgclonevars
	# update system to new packages
    ansible-playbook /opt/pgclone/ymls/update.yml
    # flush and clear service logs
    cleanlogs
    # to remove all service running prior to ensure a clean launch
    ansible-playbook /opt/pgclone/ymls/remove.yml
    # builds multipath
    multihdreadonly
    # deploy union
    multihds=$(cat /var/plexguide/.tmp.multihd)
    ansible-playbook /opt/pgclone/ymls/local.yml -e "multihds=$multihds"
    # stores deployed version
    echo "le" >/var/plexguide/deployed.version
=======
executelocal () {

# Reset Front Display
rm -rf plexguide/deployed.version

# Call Variables
pgclonevars

# to remove all service running prior to ensure a clean launch
ansible-playbook /pg/pgclone/ymls/remove.yml

# builds multipath
multihdreadonly

# deploy union
multihds=$(cat /pg/var/.tmp.multihd)
ansible-playbook /pg/pgclone/ymls/local.yml -e "multihds=$multihds hdpath=$hdpath"

# stores deployed version
echo "le" > /pg/rclone/deployed.version

# display edition final
tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
💪 DEPLOYED: PG Local Edition
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF

read -rp '↘️  Acknowledge Info | Press [ENTER] ' typed < /dev/tty

>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
}
