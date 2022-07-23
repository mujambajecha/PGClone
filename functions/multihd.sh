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
multihdreadonly() {

  # calls up standard variables
  pgclonevars

  # removes the temporary variable when starting
  rm -rf /pg/var/.tmp.multihd 1>/dev/null 2>&1

  # reads the list of paths
  while read p; do

<<<<<<< HEAD
    # prevents copying blanks areas
    if [[ "$p" != "" ]]; then
      echo -n "$p=NC:" >>/var/plexguide/.tmp.multihd
      chown -R 1000:1000 "$p"
      chmod -R 755 "$p"
    fi

  done </var/plexguide/multihd.paths
=======
       # prevents copying blanks areas
       if [[ "$p" != "" ]]; then
         echo -n "$p=NC:" >> /pg/var/.tmp.multihd
         chown -R 1000:1000 "$p"
         chmod -R 755 "$p"
       fi

    done </pg/var/multihd.paths
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

}
