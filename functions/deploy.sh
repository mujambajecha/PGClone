#!/bin/bash
#
<<<<<<< HEAD
# Title:      basic parts 
# Author:     MrDoob
# GNU:        General Public License v3.0
################################################################################
deploypgblitz() {
  deployblitzstartcheck 
  # At Bottom - Ensure Keys Are Made
  # RCLONE BUILD
  echo "#------------------------------------------" >/opt/appdata/plexguide/rclone.conf
  echo "# rClone.config created over rclone " >>/opt/appdata/plexguide/rclone.conf
  echo "#------------------------------------------" >>/opt/appdata/plexguide/rclone.conf
  cat /opt/appdata/plexguide/.gdrive >>/opt/appdata/plexguide/rclone.conf
  if [[ $(cat "/opt/appdata/plexguide/.gcrypt") != "NOT-SET" ]]; then
    echo ""
    cat /opt/appdata/plexguide/.gcrypt >>/opt/appdata/plexguide/rclone.conf
  fi
  cat /opt/appdata/plexguide/.tdrive >>/opt/appdata/plexguide/rclone.conf
  if [[ $(cat "/opt/appdata/plexguide/.tcrypt") != "NOT-SET" ]]; then
    echo ""
    cat /opt/appdata/plexguide/.tcrypt >>/opt/appdata/plexguide/rclone.conf
  fi
  cat /opt/appdata/plexguide/.keys >>/opt/appdata/plexguide/rclone.conf
  deploydrives
}
updatesystem() {
  # update system to new packages
  apt-get update -yq && apt-get upgrade -yq
  pip uninstall ansible 2>&1 >>/dev/null
  pip install ansible-base 2>&1 >>/dev/null
  pip install ansible 2>&1 >>/dev/null
  python3 -m pip install ansible 2>&1 >>/dev/null
  pip install --ignore-installed --upgrade ansible 2>&1 >>/dev/null
  ansible-playbook /opt/pgclone/ymls/update.yml 2>&1 >>/dev/null
}
stopmunts() {
mount=$(docker ps --format '{{.Names}}' | grep "mount**")
if [[ "$mount" == "mount**" ]]; then 
   docker stop mount** >> /dev/null
   fusermount -uzq /mnt/unionfs >> /dev/null
fi
}
removeoldui() {
UI=$(docker ps --format '{{.Names}}' | grep "pgui")
if [[ "$UI" == "pgui" ]]; then 
   docker stop pgui >> /dev/null
   docker rm pgui >> /dev/null
   rm -rf /opt/appdata/pgui/ >> /dev/null
fi
}
update_pip() {
pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip3 install -U
}
vnstat() {
apt-get install ethtool vnstat vnstati -yqq 2>&1 >>/dev/null
export DEBIAN_FRONTEND=noninteractive
network=$(ifconfig | grep -E 'eno1|enp|ens5' | awk '{print $1}' | sed -e 's/://g')
sed -i 's/eth0/'$network'/g' /etc/vnstat.conf
sed -i '/UseLogging/s/2/0/' /etc/vnstat.conf
sed -i '/RateUnit/s/1/0/' /etc/vnstat.conf
sed -i '/UnitMode/s/0/1/' /etc/vnstat.conf
sed -i 's/Locale "-"/Locale "LC_ALL=en_US.UTF-8"/g' /etc/vnstat.conf
/etc/init.d/vnstat restart 2>&1 >>/dev/null
}

deploydockermount() {
tee <<-EOF
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
     🚀      Deploy of Docker Mounts
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF
   vnstat
   norcloneconf
   update_pip
   updatesystem
   removeoldui
   cleanlogs
   stopmunts
   ansible-playbook /opt/pgclone/ymls/remove-2.yml
   ansible-playbook /opt/pgclone/ymls/mounts.yml
  read -rp '↘️  Acknowledge Info | Press [ENTER] ' typed </dev/tty
tee <<-EOF
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
     💪     DEPLOYED sucessfully !
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
     The Mounts is under
     https://mount.${domain}
     or
     http://${ip}:7755
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF
    read -p '↘️  Acknowledge Info | Press [ENTER] ' typed2 </dev/tty
    clonestart
=======
# Title:      Reference Title File - PGBlitz
# Author(s):  Admin9705 & https://github.com/PGBlitz/PGClone/graphs/contributors
# URL:        https://pgblitz.com - http://github.pgblitz.com
# GNU:        General Public License v3.0
################################################################################
deploysdrive () {
  deployblitzstartcheck # At Bottom - Ensure Keys Are Made

# RCLONE BUILD
echo "#------------------------------------------" > /pg/rclone/blitz.conf
echo "#RClone Rewrite | Visit https://pgblitz.com" >> /pg/rclone/blitz.conf
echo "#------------------------------------------" >> /pg/rclone/blitz.conf

cat /pg/rclone/.gd >> /pg/rclone/blitz.conf

if [[ $(cat "/pg/rclone/.gc") != "NOT-SET" ]]; then
echo ""
cat /pg/rclone/.gc >> /pg/rclone/blitz.conf; fi

cat /pg/rclone/.sd >> /pg/rclone/blitz.conf

if [[ $(cat "/pg/rclone/.sc") != "NOT-SET" ]]; then
echo ""
cat /pg/rclone/.sc >> /pg/rclone/blitz.conf; fi

cat /pg/var/.keys >> /pg/rclone/blitz.conf

deploydrives
}

deploygdrive () {
# RCLONE BUILD
echo "#------------------------------------------" > /pg/rclone/blitz.conf
echo "#RClone Rewrite | Visit https://pgblitz.com" >> /pg/rclone/blitz.conf
echo "#------------------------------------------" >> /pg/rclone/blitz.conf

cat /pg/rclone/.gd > /pg/rclone/blitz.conf

if [[ $(cat "/pg/rclone/.gc") != "NOT-SET" ]]; then
echo ""
cat /pg/rclone/.gc >> /pg/rclone/blitz.conf; fi
deploydrives
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
}
norcloneconf() {
rcc=/opt/appdata/plexguide/rclone.conf
if [[ ! -f "$rcc" ]]; then
tee <<-EOF
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    ⛔ Fail Notice for deploy of Docker 
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
     Sorry we cant Deploy the Docker.
     We cant find any rclone.conf file 
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    ⛔ Fail Notice for deploy of Docker
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF
  read -rp '↘️  Acknowledge Info | Press [ENTER] ' typed </dev/tty
clonestart
else
  echo ""
fi
}
deploydockeruploader() {
tee <<-EOF
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
     🚀  Deploy of Docker Uploader
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF
   vnstat
   norcloneconf
   update_pip
   updatesystem
   removeoldui
   cleanlogs
   ansible-playbook /opt/pgclone/ymls/uploader.yml
  read -rp '↘️  Acknowledge Info | Press [ENTER] ' typed </dev/tty
tee <<-EOF
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
     💪     DEPLOYED sucessfully !
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
     The Uploader is under
     https://uploader.${domain}
     or
     http://${ip}:7777
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF
    read -p '↘️  Acknowledge Info | Press [ENTER] ' typed2 </dev/tty
    clonestart
}
### Docker Uploader Deploy end ##
deploydrives() {
  fail=0
tee <<-EOF
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
      🚀 Conducting RClone Mount Checks
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF

<<<<<<< HEAD
  if [ -e "/var/plexguide/.drivelog" ]; then rm -rf /var/plexguide/.drivelog; fi
  touch /var/plexguide/.drivelog
  transport=$(cat /var/plexguide/pgclone.transport)
  if [[ "$transport" == "bu" ]]; then
=======
if [ -e "/pg/logs/.drivelog" ]; then rm -rf /pg/logs/.drivelog; fi
touch /pg/logs/.drivelog

  if [[ "$transport" = "gd" ]]; then
    gdrivemod
    multihdreadonly
  elif [[ "$transport" == "gc" ]]; then
    gdrivemod
    gcryptmod
    multihdreadonly
  elif [[ "$transport" == "sd" ]]; then
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
    gdrivemod
    sdrivemod
    gdsamod
    multihdreadonly
<<<<<<< HEAD
    updatesystem
    stopmunts
    deploydockermount
    deploydockeruploader
  elif [[ "$transport" == "be" ]]; then
=======
  elif [[ "$transport" == "sc" ]]; then
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
    gdrivemod
    sdrivemod
    gdsamod
    gcryptmod
    scryptmod
    gdsacryptmod
    multihdreadonly
    updatesystem
    stopmunts
    deploydockermount
    deploydockeruploader
  fi
<<<<<<< HEAD
  cat /var/plexguide/.drivelog
  logcheck=$(cat /var/plexguide/.drivelog | grep "Failed")
  if [[ "$logcheck" == "" ]]; then
     if [[ "$transport" == "bu" || "$transport" == "be" ]]; then executeblitz; fi
  else
    if [[ "$transport" == "me" || "$transport" == "be" ]]; then
      emessage="
=======

cat /pg/logs/.drivelog
logcheck=$(cat /pg/logs/.drivelog | grep "Failed")

if [[ "$logcheck" == "" ]]; then
  if [[ "$transport" == "gd" || "$transport" == "gc" || "$transport" == "sd" || "$transport" == "sc" ]]; then executetransport; fi
else
  if [[ "$transport" == "sd" || "$transport" == "sc" ]]; then
  emessage="
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
  NOTE1: User forgot to share out GDSA E-Mail to Team Drive
  NOTE2: Conducted a blitz key restore and keys are no longer valid
  "
    fi
    tee <<-EOF
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  🚀 RClone Mount Checks - Failed
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  CANNOT DEPLOY!

  POSSIBLE REASONS:
  1. GSuite Account is no longer valid or suspended
  2. Client ID and/or Secret are invalid and/or no longer exist
  $emessage
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF
  read -p '↘️  Acknowledge Info | Press [ENTER] ' typed2 </dev/tty
    clonestart
  fi
}

########################################################################################
<<<<<<< HEAD
doneokay() {
 echo
  read -p 'Confirm Info | PRESS [ENTER] ' typed </dev/tty
}
gdrivemod() {
  initial=$(rclone lsd --config /opt/appdata/plexguide/rclone.conf gdrive: | grep -oP plexguide | head -n1)
=======
gdrivemod ()
{
  initial=$(rclone lsd --config /pg/rclone/blitz.conf gd: | grep -oP plexguide | head -n1)

>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
  if [[ "$initial" != "plexguide" ]]; then
    rclone mkdir --config /pg/rclone/blitz.conf gd:/plexguide
    initial=$(rclone lsd --config /pg/rclone/blitz.conf gd: | grep -oP plexguide | head -n1)
  fi
<<<<<<< HEAD
  if [[ "$initial" == "plexguide" ]]; then echo "GDRIVE :  Passed" >>/var/plexguide/.drivelog; else echo "GDRIVE :  Failed" >>/var/plexguide/.drivelog; fi
}
tdrivemod() {
  initial=$(rclone lsd --config /opt/appdata/plexguide/rclone.conf tdrive: | grep -oP plexguide | head -n1)
=======

  if [[ "$initial" == "plexguide" ]]; then echo "GDRIVE :  Passed" >> /pg/logs/.drivelog; else echo "GDRIVE :  Failed" >> /pg/logs/.drivelog; fi
}
sdrivemod ()
{
  initial=$(rclone lsd --config /pg/rclone/blitz.conf sd: | grep -oP plexguide | head -n1)

>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
  if [[ "tinitial" != "plexguide" ]]; then
    rclone mkdir --config /pg/rclone/blitz.conf gd:/plexguide
    initial=$(rclone lsd --config /pg/rclone/blitz.conf sd: | grep -oP plexguide | head -n1)
  fi
<<<<<<< HEAD
  if [[ "$initial" == "plexguide" ]]; then echo "TDRIVE :  Passed" >>/var/plexguide/.drivelog; else echo "TDRIVE :  Failed" >>/var/plexguide/.drivelog; fi
}
gcryptmod() {
  c1initial=$(rclone lsd --config /opt/appdata/plexguide/rclone.conf gdrive: | grep -oP encrypt | head -n1)
  c2initial=$(rclone lsd --config /opt/appdata/plexguide/rclone.conf gcrypt: | grep -oP plexguide | head -n1)
=======

  if [[ "$initial" == "plexguide" ]]; then echo "SDRIVE :  Passed" >> /pg/logs/.drivelog; else echo "SDRIVE :  Failed" >> /pg/logs/.drivelog; fi
}
gcryptmod ()
{
  c1initial=$(rclone lsd --config /pg/rclone/blitz.conf gd: | grep -oP encrypt | head -n1)
  c2initial=$(rclone lsd --config /pg/rclone/blitz.conf gc: | grep -oP plexguide | head -n1)

>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
  if [[ "$c1initial" != "encrypt" ]]; then
    rclone mkdir --config /pg/rclone/blitz.conf gd:/encrypt
    c1initial=$(rclone lsd --config /pg/rclone/blitz.conf gd: | grep -oP encrypt | head -n1)
  fi
  if [[ "$c2initial" != "plexguide" ]]; then
    rclone mkdir --config /pg/rclone/blitz.conf gc:/plexguide
    c2initial=$(rclone lsd --config /pg/rclone/blitz.conf gc: | grep -oP plexguide | head -n1)
  fi
<<<<<<< HEAD
  if [[ "$c1initial" == "encrypt" ]]; then echo "GCRYPT1:  Passed" >>/var/plexguide/.drivelog; else echo "GCRYPT1:  Failed" >>/var/plexguide/.drivelog; fi
  if [[ "$c2initial" == "plexguide" ]]; then echo "GCRYPT2:  Passed" >>/var/plexguide/.drivelog; else echo "GCRYPT2:  Failed" >>/var/plexguide/.drivelog; fi
}
tcryptmod() {
  c1initial=$(rclone lsd --config /opt/appdata/plexguide/rclone.conf tdrive: | grep -oP encrypt | head -n1)
  c2initial=$(rclone lsd --config /opt/appdata/plexguide/rclone.conf tcrypt: | grep -oP plexguide | head -n1)
=======

  if [[ "$c1initial" == "encrypt" ]]; then echo "GCRYPT1:  Passed" >> /pg/logs/.drivelog; else echo "GCRYPT1:  Failed" >> /pg/logs/.drivelog; fi
  if [[ "$c2initial" == "plexguide" ]]; then echo "GCRYPT2:  Passed" >> /pg/logs/.drivelog; else echo "GCRYPT2:  Failed" >> /pg/logs/.drivelog; fi
}
scryptmod ()
{
  c1initial=$(rclone lsd --config /pg/rclone/blitz.conf sd: | grep -oP encrypt | head -n1)
  c2initial=$(rclone lsd --config /pg/rclone/blitz.conf sc: | grep -oP plexguide | head -n1)

>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
  if [[ "$c1initial" != "encrypt" ]]; then
    rclone mkdir --config /pg/rclone/blitz.conf sd:/encrypt
    c1initial=$(rclone lsd --config /pg/rclone/blitz.conf sd: | grep -oP encrypt | head -n1)
  fi
  if [[ "$c2initial" != "plexguide" ]]; then
    rclone mkdir --config /pg/rclone/blitz.conf sc:/plexguide
    c2initial=$(rclone lsd --config /pg/rclone/blitz.conf sc: | grep -oP plexguide | head -n1)
  fi
<<<<<<< HEAD
  if [[ "$c1initial" == "encrypt" ]]; then echo "TCRYPT1:  Passed" >>/var/plexguide/.drivelog; else echo "TCRYPT1:  Failed" >>/var/plexguide/.drivelog; fi
  if [[ "$c2initial" == "plexguide" ]]; then echo "TCRYPT2:  Passed" >>/var/plexguide/.drivelog; else echo "TCRYPT2:  Failed" >>/var/plexguide/.drivelog; fi
}
gdsamod() {
  initial=$(rclone lsd --config /opt/appdata/plexguide/rclone.conf GDSA01: | grep -oP plexguide | head -n1)
=======

  if [[ "$c1initial" == "encrypt" ]]; then echo "SCRYPT1:  Passed" >> /pg/logs/.drivelog; else echo "SCRYPT1:  Failed" >> /pg/logs/.drivelog; fi
  if [[ "$c2initial" == "plexguide" ]]; then echo "SCRYPT2:  Passed" >> /pg/logs/.drivelog; else echo "SCRYPT2:  Failed" >> /pg/logs/.drivelog; fi
}
gdsamod ()
{
  initial=$(rclone lsd --config /pg/rclone/blitz.conf GDSA01: | grep -oP plexguide | head -n1)

>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
  if [[ "$initial" != "plexguide" ]]; then
    rclone mkdir --config /pg/rclone/blitz.conf GDSA01:/plexguide
    initial=$(rclone lsd --config /pg/rclone/blitz.conf GDSA01: | grep -oP plexguide | head -n1)
  fi
<<<<<<< HEAD
  if [[ "$initial" == "plexguide" ]]; then echo "GDSA01 :  Passed" >>/var/plexguide/.drivelog; else echo "GDSA01 :  Failed" >>/var/plexguide/.drivelog; fi
}
gdsacryptmod() {
  initial=$(rclone lsd --config /opt/appdata/plexguide/rclone.conf GDSA01C: | grep -oP encrypt | head -n1)
=======

  if [[ "$initial" == "plexguide" ]]; then echo "GDSA01 :  Passed" >> /pg/logs/.drivelog; else echo "GDSA01 :  Failed" >> /pg/logs/.drivelog; fi
}
gdsacryptmod ()
{
  initial=$(rclone lsd --config /pg/rclone/blitz.conf GDSA01C: | grep -oP encrypt | head -n1)
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

  if [[ "$initial" != "plexguide" ]]; then
    rclone mkdir --config /pg/rclone/blitz.conf GDSA01C:/plexguide
    initial=$(rclone lsd --config /pg/rclone/blitz.conf GDSA01C: | grep -oP plexguide | head -n1)
  fi
<<<<<<< HEAD
  if [[ "$initial" == "plexguide" ]]; then echo "GDSA01C:  Passed" >>/var/plexguide/.drivelog; else echo "GDSA01C:  Failed" >>/var/plexguide/.drivelog; fi
=======

  if [[ "$initial" == "plexguide" ]]; then echo "GDSA01C:  Passed" >> /pg/logs/.drivelog; else echo "GDSA01C:  Failed" >> /pg/logs/.drivelog; fi
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
}
################################################################################
deployblitzstartcheck() {
  pgclonevars
  if [[ "$displaykey" == "0" ]]; then
    tee <<-EOF
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
   ⛔ Fail Notice
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

  💬  There are [0] keys generated for Blitz! Create those first!
  NOTE: 

  Without any keys, Blitz cannot upload any data without the use
  of service accounts

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF
    read -p '↘️  Acknowledge Info | Press [ENTER] ' typed </dev/tty
    clonestart
  fi
}
################################################################################
cleanlogs() {
  echo "Prune service logs..."
  journalctl --flush
  journalctl --rotate
  journalctl --vacuum-time=1s
  truncate -s 0 /var/plexguide/logs/*.log
  rm -rf /var/plexguide/logs/ >>/dev/null 2>&1
  find /var/logs -name "*.gz" -delete >>/dev/null 2>&1
}
prunedocker() {
  echo "Prune docker images and volumes..."
  docker system prune --volumes -f
}
################################################################################
deploySuccess() {
  tee <<-EOF
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
💪 DEPLOYED: $finaldeployoutput
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  rClone has been deployed sucessfully!
  All services are active and running normally.

  The Uploader is under

     https://uploader.$(cat /var/plexguide/server.domain)
     or
     http://$(cat /var/plexguide/server.ip):7777

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF
  read -rp '↘️  Acknowledge Info | Press [ENTER] ' typed </dev/tty
}
deploymountSuccess() {
  tee <<-EOF
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
💪 DEPLOYED: $finaldeployoutput
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  rClone has been deployed sucessfully!
  All services are active and running normally.

  The Mounts is under

     https://mounts.$(cat /var/plexguide/server.domain)
     or
     http://$(cat /var/plexguide/server.ip):7755

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF
  read -rp '↘️  Acknowledge Info | Press [ENTER] ' typed </dev/tty
}
