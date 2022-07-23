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
transportselect() {
    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
<<<<<<< HEAD
💪 Set Clone Method 
=======
💪 Set PGClone Method ~ http://pgclone.pgblitz.com
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

<<<<<<< HEAD
[1] TDrive-Unencrypt: Data > Complex | Exceed 750GB Transport Cap
[2] TDrive-Encrypted: Data > Complex | Exceed 750GB Transport Cap
=======
[1] Blitz GDrive - Unencrypt | Easy    | 750GB Daily Transfer Max
[2] Blitz GDrive - Encrypted | Novice  | 750GB Daily Transfer Max
[3] Blitz SDrive - Unencrypt | Complex | Exceed 750GB Daily Max Cap
[4] Blitz SDrive - Encrypted | Complex | Exceed 750GB Daily Max Cap
[5] Blitz Local  - Local HDs | Easy    | Utilizes Server HD's Only
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

[3] Local Edition   : Local HDs      | Easy  Utilizes System's HD's Only

[Z] EXIT
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF

    read -rp '↘️  Input Selection | Press [ENTER]: ' typed </dev/tty

<<<<<<< HEAD
    case $typed in
    1)
        echo "bu" >/var/plexguide/pgclone.transport
        echo "Blitz" >/var/plexguide/pg.transport
        ;;
    2)
        echo "be" >/var/plexguide/pgclone.transport
        echo "Blitz Encrypted" >/var/plexguide/pg.transport
        ;;
    3)
        echo "le" >/var/plexguide/pgclone.transport
        echo "Local Edition" >/var/plexguide/pg.transport
        ;;
	z) exit ;;
    Z) exit ;;
    *) transportselect ;;
    esac
=======
case $typed in
    1 )
    echo "gd" > /pg/rclone/pgclone.transport ;;
    2 )
    echo "gc" > /pg/rclone/pgclone.transport ;;
    3 )
    echo "sd" > /pg/rclone/pgclone.transport ;;
    4 )
    echo "sc" > /pg/rclone/pgclone.transport ;;
    5 )
    echo "le" > /pg/rclone/pgclone.transport ;;
    * )
        transportselect ;;
esac
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
}
