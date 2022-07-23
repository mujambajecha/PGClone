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
pgclonevars() {

	variable() {
		file="$1"
		if [ ! -e "$file" ]; then echo "$2" >$1; fi
		}

<<<<<<< HEAD
    # rest standard
    mkdir -p /var/plexguide/rclone
    variable /var/plexguide/project.account "NOT-SET"
    variable /var/plexguide/rclone/deploy.version "null"
    variable /var/plexguide/pgclone.transport "NOT-SET"
    variable /var/plexguide/pgclone.salt ""
    variable /var/plexguide/multihd.paths ""
    variable /var/plexguide/server.hd.path "/mnt"
    hdpath="$(cat /var/plexguide/server.hd.path)"
    variable /var/plexguide/oauth.check ""
    oauthcheck=$(cat /var/plexguide/oauth.check)
    variable /var/plexguide/pgclone.password "NOT-SET"
    if [[ $(cat /var/plexguide/pgclone.password) == "NOT-SET" ]]; then
        pstatus="NOT-SET"
    else
        pstatus="ACTIVE"
        clonepassword=$(cat /var/plexguide/pgclone.password)
        clonesalt=$(cat /var/plexguide/pgclone.salt)
    fi
    variable /opt/appdata/plexguide/.gdrive "NOT-SET"
    if [[ $(cat /opt/appdata/plexguide/.gdrive) == "NOT-SET" ]]; then
        gstatus="NOT-SET"
    else gstatus="ACTIVE"; fi
    variable /opt/appdata/plexguide/.tdrive "NOT-SET"
    if [[ $(cat /opt/appdata/plexguide/.tdrive) == "NOT-SET" ]]; then
        tstatus="NOT-SET"
    else tstatus="ACTIVE"; fi
    variable /opt/appdata/plexguide/.tcrypt "NOT-SET"
    if [[ $(cat /opt/appdata/plexguide/.tcrypt) == "NOT-SET" ]]; then
        tcstatus="NOT-SET"
    else tcstatus="ACTIVE"; fi
    variable /opt/appdata/plexguide/.gcrypt "NOT-SET"
    if [[ $(cat /opt/appdata/plexguide/.gcrypt) == "NOT-SET" ]]; then
        gcstatus="NOT-SET"
    else gcstatus="ACTIVE"; fi
    transport=$(cat /var/plexguide/pgclone.transport)
    variable /var/plexguide/pgclone.teamdrive "NOT-SET"
    tdname=$(cat /var/plexguide/pgclone.teamdrive)
    variable /var/plexguide/pgclone.demo "OFF"
    demo=$(cat /var/plexguide/pgclone.demo)
    variable /var/plexguide/pgclone.teamid ""
    tdid=$(cat /var/plexguide/pgclone.teamid)
    variable /var/plexguide/rclone/deploy.version ""
    type=$(cat /var/plexguide/rclone/deploy.version)
    variable /var/plexguide/pgclone.public ""
    pgclonepublic=$(cat /var/plexguide/pgclone.public)
    mkdir -p /opt/appdata/plexguide/.blitzkeys
    displaykey=$(ls /opt/appdata/plexguide/.blitzkeys | wc -l)
    variable /var/plexguide/pgclone.secret ""
    pgclonesecret=$(cat /var/plexguide/pgclone.secret)
    if [[ "$pgclonesecret" == "" || "$pgclonepublic" == "" ]]; then pgcloneid="NOT-SET"; fi
    if [[ "$pgclonesecret" != "" && "$pgclonepublic" != "" ]]; then pgcloneid="ACTIVE"; fi
    variable /var/plexguide/pgclone.email "NOT-SET"
    pgcloneemail=$(cat /var/plexguide/pgclone.email)
    variable /var/plexguide/oauth.type "NOT-SET" #output for auth type
    oauthtype=$(cat /var/plexguide/oauth.type)
    variable /var/plexguide/pgclone.project "NOT-SET"
    pgcloneproject=$(cat /var/plexguide/pgclone.project)
    variable /var/plexguide/deployed.version ""
    dversion=$(cat /var/plexguide/deployed.version)
    variable /var/plexguide/.tmp.multihd
    multihds=$(cat /var/plexguide/.tmp.multihd)
    if [[ "$dversion" == "mu" ]]; then
        dversionoutput="Move"
    elif [[ "$dversion" == "me" ]]; then
        dversionoutput="Move: Encrypted"
    elif [[ "$dversion" == "bu" ]]; then
        dversionoutput="Blitz"
    elif [[ "$dversion" == "be" ]]; then
        dversionoutput="Blitz: Encrypted"
    elif [[ "$dversion" == "le" ]]; then
        dversionoutput="Local"
    else dversionoutput="None"; fi
=======
  # rest standard
  mkdir -p /pg/logs /pg/rclone
  touch /pg/logs/gd.log /pg/logs/sd.log /pg/logs/ge.log /pg/logs/se.log /pg/logs/pgblitz.log /pg/logs/transport.log

  variable /pg/var/project.account "NOT-SET"
  variable /pg/rclone/deploy.version "null"
  variable /pg/rclone/pgclone.transport "NOT-SET"
  variable /pg/var/move.bw  "9"
  variable /pg/var/blitz.bw  "1000"
  variable /pg/rclone/pgclone.salt ""
  variable /pg/var/multihd.paths ""

  variable /pg/var/server.hd.path "/pg"
  hdpath=$(cat /pg/var/server.hd.path)

  variable /pg/rclone/oauth.check ""
  oauthcheck=$(cat /pg/rclone/oauth.check)

  variable /pg/rclone/pgclone.password "NOT-SET"
  if [[ $(cat /pg/rclone/pgclone.password) == "NOT-SET" ]]; then pstatus="NOT-SET"
  else
    pstatus="ACTIVE"
    clonepassword=$(cat /pg/rclone/pgclone.password)
    clonesalt=$(cat /pg/rclone/pgclone.salt)
  fi

  variable /pg/rclone/.gd "NOT-SET"
  if [[ $(cat /pg/rclone/.gd) == "NOT-SET" ]]; then gdstatus="NOT-SET"
  else gdstatus="ACTIVE"; fi

  variable /pg/rclone/.sd "NOT-SET"
  if [[ $(cat /pg/rclone/.sd) == "NOT-SET" ]]; then sdstatus="NOT-SET"
  else sdstatus="ACTIVE"; fi

  variable /pg/rclone/.sc "NOT-SET"
  if [[ $(cat /pg/rclone/.sc) == "NOT-SET" ]]; then scstatus="NOT-SET"
  else scstatus="ACTIVE"; fi

  variable /pg/rclone/.gc "NOT-SET"
  if [[ $(cat /pg/rclone/.gc) == "NOT-SET" ]]; then gcstatus="NOT-SET"
  else gcstatus="ACTIVE"; fi

  transport=$(cat /pg/rclone/pgclone.transport)

  variable /pg/rclone/pgclone.teamdrive "NOT-SET"
  sdname=$(cat /pg/rclone/pgclone.teamdrive)

  variable /pg/rclone/pgclone.demo "OFF"
  demo=$(cat /pg/rclone/pgclone.demo)

  variable /pg/rclone/pgclone.teamid ""
  sdid=$(cat /pg/rclone/pgclone.teamid)

  variable /pg/rclone/deploy.version ""
  type=$(cat /pg/rclone/deploy.version)

  variable /pg/rclone/pgclone.public ""
  pgclonepublic=$(cat /pg/rclone/pgclone.public)

  mkdir -p /pg/var/.blitzkeys
  displaykey=$(ls /pg/var/.blitzkeys | wc -l)

  variable /pg/rclone/pgclone.secret ""
  pgclonesecret=$(cat /pg/rclone/pgclone.secret)

  if [[ "$pgclonesecret" == "" || "$pgclonepublic" == "" ]]; then pgcloneid="NOT-SET"; fi
  if [[ "$pgclonesecret" != "" && "$pgclonepublic" != "" ]]; then pgcloneid="ACTIVE"; fi

  variable /pg/rclone/pgclone.email "NOT-SET"
  pgcloneemail=$(cat /pg/rclone/pgclone.email)

  variable /pg/var/oauth.type "NOT-SET" #output for auth type
  oauthtype=$(cat /pg/var/oauth.type)

  variable /pg/rclone/pgclone.project "NOT-SET"
  pgcloneproject=$(cat /pg/rclone/pgclone.project)

  variable /pg/rclone/deployed.version ""
  dversion=$(cat /pg/rclone/deployed.version)

  variablet /pg/var/.tmp.multihd
  multihds=$(cat /pg/var/.tmp.multihd)

  if [[ "$dversion" == "gd" ]]; then dversionoutput="GDrive Unencrypted"
elif [[ "$dversion" == "gc" ]]; then dversionoutput="GDrive Encrypted"
elif [[ "$dversion" == "sd" ]]; then dversionoutput="SDrive Unencrypted"
elif [[ "$dversion" == "sc" ]]; then dversionoutput="SDrive Encrypted"
elif [[ "$dversion" == "le" ]]; then dversionoutput="Local HD/Mount"
else dversionoutput="None"; fi

# For Clone Clean
  variable /pg/var/cloneclean "600"
  cloneclean=$(cat /pg/var/cloneclean)

# Copy JSON if Missing
  if [ ! -e "/pg/rclone/pgclone.json" ]; then cp /pg/pgclone/pgclone.json /pg/rclone/pgclone.json; fi

# For PG Blitz Mounts
  bs=$(jq -r '.bs' /pg/rclone/pgclone.json)
  dcs=$(jq -r '.dcs' /pg/rclone/pgclone.json)
  dct=$(jq -r '.dct' /pg/rclone/pgclone.json)
  cma=$(jq -r '.cma' /pg/rclone/pgclone.json)
  rcs=$(jq -r '.rcs' /pg/rclone/pgclone.json)
  rcsl=$(jq -r '.rcsl' /pg/rclone/pgclone.json)
  cm=$(jq -r '.cm' /pg/rclone/pgclone.json)
  cms=$(jq -r '.cms' /pg/rclone/pgclone.json)

  randomagent=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 16 | head -n 1)
  variable /pg/var/uagent "$randomagent"
  uagent=$(cat /pg/var/uagent)
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
}
