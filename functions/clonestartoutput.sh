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
rcstored="$(rclone --version | awk '{print $2}' | tail -n 3 | head -n 1 )"
sudocheck() {
  if [[ $EUID -ne 0 ]]; then
    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
⛔️  You Must Execute as a SUDO USER (with sudo) or as ROOT!
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
    exit 0
  fi
}
clonestartoutput() {
    pgclonevars
echo "ACTIVELY DEPLOYED: 	  $dversionoutput "
echo ""
    if [[ "$demo" == "ON " ]]; then mainid="********"; else mainid="$pgcloneemail"; fi
    if [[ "$transport" == "mu" ]]; then
        tee <<-EOF
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[1] Client ID & Secret       [ ${pgcloneid} ]
[2] GDrive                   [ $gstatus ]

<<<<<<< HEAD
EOF
    elif [[ "$transport" == "me" ]]; then
        tee <<-EOF
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[1] Client ID & Secret       [ ${pgcloneid} ]
[2] Passwords                [ $pstatus ]
[3] GDrive                   [ $gstatus ] - [ $gcstatus ]

EOF
    elif [[ "$transport" == "bu" ]]; then
        tee <<-EOF
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[1] Google Account Login     [ $mainid ]
[2] Project Name             [ $pgcloneproject ]
[3] Client ID & Secret       [ ${pgcloneid} ]
[4] TDrive Label             [ $tdname ]
[5] TDrive OAuth             [ $tstatus ]
[6] GDrive OAuth             [ $gstatus ] 
[7] Key Management           [ $displaykey ] Built
[8] TDrive	             ( E-Mail Share Generator )
EOF
    elif [[ "$transport" == "be" ]]; then
        tee <<-EOF
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[1] Google Account Login     [ $mainid ]
[2] Project Name             [ $pgcloneproject ]
[3] Client ID & Secret       [ ${pgcloneid} ]
[4] Passwords                [ $pstatus ]
[5] TDrive Label             [ $tdname ]
[6] TDrive | TCrypt          [ $tstatus ] - [ $tcstatus ]
[7] GDrive | GCrypt          [ $gstatus ] - [ $gcstatus ]
[8] Key Management           [ $displaykey ] Built
[9] TDrive	             ( E-Mail Share Generator )

=======
if [[ "$transport" == "gd" ]]; then
tee <<-EOF
[1] Client ID & Secret    [${pgcloneid}]
[2] GDrive                [$gdstatus]
EOF
elif [[ "$transport" == "gc" ]]; then
tee <<-EOF
[1] Client ID & Secret    [${pgcloneid}]
[2] Passwords             [$pstatus]
[3] GDrive                [$gdstatus] - [$gcstatus]
EOF
elif [[ "$transport" == "sd" ]]; then
tee <<-EOF
[1] Google Account Login  [$mainid]
[2] Project Name          [$pgcloneproject]
[3] Client ID & Secret    [${pgcloneid}]
[4] SDrive Label          [$sdname]
[5] SDrive OAuth          [$sdstatus]
[6] GDrive OAuth          [$gdstatus]
[7] Key Management        [$displaykey] Built
[8] SDrive (E-Mail Share Generator)
EOF
elif [[ "$transport" == "sc" ]]; then
tee <<-EOF
[1] Google Account Login  [$mainid]
[2] Project Name          [$pgcloneproject]
[3] Client ID & Secret    [${pgcloneid}]
[4] Passwords             [$pstatus]
[5] SDrive Label          [$sdname]
[6] SDrive | SDrive       [$sdstatus] - [$scstatus]
[7] GDrive | GCrypt       [$gdstatus] - [$gcstatus]
[8] Key Management        [$displaykey] Built
[9] SDrive (E-Mail Share Generator)
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
EOF
    elif [[ "$transport" == "le" ]]; then
        tee <<-EOF
NOTE: The default drive is already factored in! Only additional locations
or hard drives are required to be added!
EOF
    fi
}
<<<<<<< HEAD
errorteamdrive() {
    if [[ "$tdname" == "NOT-SET" ]]; then
        tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 Setup the TDrive Label First!
=======

errorteamdrive ()

{
if [[ "$sdname" == "NOT-SET" ]]; then
tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 Setup the SDrive Label First! ~ http://pgclone.pgblitz.com
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

NOTE: Set up your SDrive Label prior to executing the SDrive OAuth.
Basically, we cannot authorize a ShareDrive without knowing which
ShareDrive is being utilized first!

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
        read -rp '↘️  Acknowledge Info | Press [ENTER] ' typed </dev/tty
        clonestart
    fi
}
<<<<<<< HEAD
clonestart() {
    pgclonevars
    # pull throttle speeds based on role
    if [[ "$transport" == "mu" || "$transport" == "me" ]]; then
        output1="[C] Transport Select"
    fi
    if [[ "$transport" != "mu" && "$transport" != "me" && "$transport" != "bu" && "$transport" != "be" && "$transport" != "le" ]]; then
        rm -rf /var/plexguide/pgclone.transport 1>/dev/null 2>&1
        mustset
    fi
    if [[ "$transport" == "mu" ]]; then
        outputversion="Unencrypted Mounts"
        output="Gdrive"
    elif [[ "$transport" == "me" ]]; then
        outputversion="Encrypted Mounts"
        output="Gcrypt"
    elif [[ "$transport" == "bu" ]]; then
        outputversion="Unencrypted Mounts"
        output="TDrive"
    elif [[ "$transport" == "be" ]]; then
        outputversion="Encrypted Mounts"
        output="Tcrypt"
    elif [[ "$transport" == "le" ]]; then
        outputversion="Local Hard Drives"
    fi
    if [[ "$transport" == "le" ]]; then
        tee <<-EOF
=======

clonestart () {
pgclonevars

# pull throttle speeds based on role
if [[ "$transport" == "gd" || "$transport" == "gc" ]]; then
throttle=$(cat /pg/var/move.bw)
output1="[C] Transport Select"
else
throttle=$(cat /pg/var/blitz.bw)
output1="[C] Options"
fi

if [[ "$transport" != "gd" && "$transport" != "gc" && "$transport" != "sd" && "$transport" != "sc" && "$transport" != "le" ]]; then
rm -rf /pg/rclone/pgclone.transport 1>/dev/null 2>&1
mustset; fi

    if [[ "$transport" == "gd" ]]; then outputversion="GDrive Unencrypted"
  elif [[ "$transport" == "gc" ]]; then outputversion="GDrive Encrypted"
  elif [[ "$transport" == "sd" ]]; then outputversion="SDrive Unencrypted"
  elif [[ "$transport" == "sc" ]]; then outputversion="SDrive Encrypted"
  elif [[ "$transport" == "le" ]]; then outputversion="Local Hard Drives"
  fi

if [[ "$transport" == "le" ]]; then
tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
💪 Welcome to the Local-Edition || mergerfs $mgstored
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
        clonestartoutput
        tee <<-EOF

[1] Deploy               ( Local HD / Mounts )
[2] MultiHD              ( Add Mounts or Hard Drives )
[3] Transport            ( Change Transportion Mode )

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Z] Exit
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━


EOF
        read -rp '↘️  Input Selection | Press [ENTER]: ' typed </dev/tty
        localstartoutput
    else
        tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
💪 Welcome to rClone      rclone $rcstored
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
        clonestartoutput
        dockerstatus
        dockerstatusmounts
        tee <<-EOF
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[A] Deploy Docker Mounts     [ $dmstatus ]
[D] Deploy Docker Uploader   [ $dstatus ] - [ $output ]
[O] Options
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Z] Exit

EOF
        read -rp '↘️  Input Selection | Press [ENTER]: ' typed </dev/tty
        clonestartactions
    fi
}
<<<<<<< HEAD
dockerstatus() {
upper=$(docker ps --format '{{.Names}}' | grep "uploader")
if [[ "$upper" == "uploader" ]]; then
 dstatus="✅ DEPLOYED"
  else dstatus="⚠️ NOT DEPLOYED"; fi
}
dockerstatusmounts() {
dmount=$(docker ps --format '{{.Names}}' | grep "mount")
if [[ "$dmount" == "mount" ]]; then
 dmstatus="✅ DEPLOYED"
  else dmstatus="⚠️ NOT DEPLOYED"; fi
}
localstartoutput() {
    case $typed in
    1) executelocal ;;
    2) bash /opt/plexguide/menu/multihd/multihd.sh ;;
    3) transportselect ;;
    z) exit ;;
    Z) exit ;;
    *) clonestart ;;
    esac
    clonestart
=======

localstartoutput () {
  case $typed in
  1 )
      executelocal ;;
  2 )
      bash /pg/pgblitz/menu/pgcloner/multihd.sh ;;
  3 )
      transportselect ;;
  z )
      exit ;;
  Z )
      exit ;;
  * )
      clonestart ;;
  esac
clonestart
}

clonestartactions () {
if [[ "$transport" == "gd" ]]; then
  case $typed in
      1 )
          keyinputpublic ;;
      2 )
          publicsecretchecker
          echo "gd" > /pg/rclone/deploy.version
          oauth ;;
      z )
          exit ;;
      Z )
          exit ;;
      a )
          publicsecretchecker
          mountchecker
          deploygdrive
          ;; ## fill
      A )
          publicsecretchecker
          mountchecker
          deploygdrive
          ;; ## flll
      b )
          setthrottlemove ;;
      B )
          setthrottlemove ;;
      c )
          optionsmengu ;;
      C )
          optionsmengu ;;
      * )
          clonestart ;;
    esac
elif [[ "$transport" == "gc" ]]; then
  case $typed in
      1 )
          keyinputpublic ;;
      2 )
          publicsecretchecker
          blitzpasswordmain ;;
      3 )
          publicsecretchecker
          passwordcheck
          echo "gd" > /pg/rclone/deploy.version
          oauth ;;
      z )
          exit ;;
      Z )
          exit ;;
      a )
          publicsecretchecker
          passwordcheck
          mountchecker
          deploygdrive
          ;; ## fill
      A )
          publicsecretchecker
          passwordcheck
          mountchecker
          deploygdrive
          ;; ## flll
      b )
          setthrottlemove ;;
      B )
          setthrottlemove ;;
      c )
          optionsmengu ;;
      C )
          optionsmengu ;;
      * )
          clonestart ;;
    esac
elif [[ "$transport" == "sd" ]]; then
  case $typed in
        1 )
            glogin ;;
        2 )
            exisitingproject ;;
        3 )
            keyinputpublic ;;
        4 )
            publicsecretchecker
            tlabeloauth ;;
        5 )
            publicsecretchecker
            tlabelchecker
            echo "sd" > /pg/rclone/deploy.version
            oauth ;;
        6 )
            publicsecretchecker
            echo "gd" > /pg/rclone/deploy.version
            oauth ;;
        7 )
            publicsecretchecker
            tlabelchecker
            mountchecker
            projectnamecheck
            keystart
            gdsaemail ;;
        8 )
            publicsecretchecker
            tlabelchecker
            mountchecker
            projectnamecheck
            deployblitzstartcheck
            emailgen ;;
        z )
            exit ;;
        Z )
            exit ;;
        a )
            publicsecretchecker
            tlabelchecker
            mountchecker
            deploysdrive
            ;; ## fill
        A )
            publicsecretchecker
            tlabelchecker
            mountchecker
            deploysdrive
            ;; ## flll
        b )
            setthrottleblitz ;;
        B )
            setthrottleblitz ;;
        c )
            optionsmenu ;;
        C )
            optionsmenu ;;
        d )
            mountnumbers ;;
        D )
            mountnumbers ;;
        * )
            clonestart ;;
      esac
elif [[ "$transport" == "sc" ]]; then
  case $typed in
        1 )
            glogin ;;
        2 )
            exisitingproject ;;
        3 )
            keyinputpublic ;;
        4 )
            publicsecretchecker
            blitzpasswordmain ;;
        5 )
            publicsecretchecker
            tlabeloauth ;;
        6 )
            publicsecretchecker
            passwordcheck
            tlabelchecker
            echo "sc" > /pg/rclone/deploy.version
            oauth ;;
        7 )
            publicsecretchecker
            passwordcheck
            echo "sc" > /pg/rclone/deploy.version
            oauth ;;

        8 )
            publicsecretchecker
            passwordcheck
            tlabelchecker
            mountchecker
            projectnamecheck
            keystart
            gdsaemail ;;
        9 )
            publicsecretchecker
            passwordcheck
            tlabelchecker
            mountchecker
            projectnamecheck
            deployblitzstartcheck
            emailgen ;;
        z )
            exit ;;
        Z )
            exit ;;
        a )
            publicsecretchecker
            passwordcheck
            tlabelchecker
            mountchecker
            deploysdrive
            ;; ## fill
        A )
            publicsecretchecker
            passwordcheck
            tlabelchecker
            mountchecker
            deploysdrive
            ;; ## flll
        b )
            setthrottleblitz ;;
        B )
            setthrottleblitz ;;
        c )
            optionsmenu ;;
        C )
            optionsmenu ;;
        d )
            mountnumbers ;;
        D )
            mountnumbers ;;
        * )
            clonestart ;;
      esac
fi
clonestart
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
}
clonestartactions() {
    if [[ "$transport" == "mu" ]]; then
        case $typed in
        1) keyinputpublic ;;
        2) publicsecretchecker && echo "gdrive" >/var/plexguide/rclone/deploy.version && oauth ;;
        z) exit ;;
        Z) exit ;;
        a) publicsecretchecker && deploydockermount ;;
        A) publicsecretchecker && deploydockermount ;;
        D) publicsecretchecker && deploydockeruploader ;;
        d) publicsecretchecker && deploydockeruploader ;;
        o) optionsmenumove ;;
        O) optionsmenumove ;;
        *) clonestart ;;
        esac

    elif [[ "$transport" == "me" ]]; then
        case $typed in
        1) keyinputpublic ;;
        2) publicsecretchecker && blitzpasswordmain ;;
        3) publicsecretchecker && passwordcheck && echo "gdrive" >/var/plexguide/rclone/deploy.version && oauth ;;
        z) exit ;;
        Z) exit ;;
        a) publicsecretchecker && passwordcheck && deploydockermount ;;
        A) publicsecretchecker && passwordcheck && deploydockermount ;;
        D) publicsecretchecker && passwordcheck && deploydockeruploader ;;
        d) publicsecretchecker && passwordcheck && deploydockeruploader ;;
        o) optionsmenumove ;;
        O) optionsmenumove ;;
        *) clonestart ;;
        esac

    elif [[ "$transport" == "bu" ]]; then
        case $typed in
        1) glogin ;;
        2) exisitingproject ;;
        3) keyinputpublic ;;
        4) publicsecretchecker && tlabeloauth ;;
        5) publicsecretchecker && tlabelchecker && echo "tdrive" >/var/plexguide/rclone/deploy.version && oauth ;;
        6) publicsecretchecker && echo "gdrive" >/var/plexguide/rclone/deploy.version && oauth ;;
        7) publicsecretchecker && tlabelchecker && projectnamecheck && keystart && gdsaemail ;;
        8) publicsecretchecker && tlabelchecker && projectnamecheck && deployblitzstartcheck && emailgen ;;
        z) exit ;;
        Z) exit ;;
        a) publicsecretchecker && tlabelchecker && deploydockermount ;;
        A) publicsecretchecker && tlabelchecker && deploydockermount ;;
        D) publicsecretchecker && tlabelchecker && deploydockeruploader ;;
        d) publicsecretchecker && tlabelchecker && deploydockeruploader ;;
        b) publicsecretchecker && keybackup ;;
        B) publicsecretchecker && keybackup ;;
        o) optionsmenu ;;
        O) optionsmenu ;;
        *) clonestart ;;
        esac

    elif [[ "$transport" == "be" ]]; then
        case $typed in
        1) glogin ;;
        2) exisitingproject ;;
        3) keyinputpublic ;;
        4) publicsecretchecker && blitzpasswordmain ;;
        5) publicsecretchecker && tlabeloauth ;;
        6) publicsecretchecker && passwordcheck && tlabelchecker && echo "tdrive" >/var/plexguide/rclone/deploy.version && oauth ;;
        7) publicsecretchecker && passwordcheck && echo "gdrive" >/var/plexguide/rclone/deploy.version && oauth ;;
        8) publicsecretchecker && passwordcheck && tlabelchecker && projectnamecheck && keystart && gdsaemail ;;
        9) publicsecretchecker && passwordcheck && tlabelchecker && projectnamecheck && deployblitzstartcheck && emailgen ;;
        z) exit ;;
        Z) exit ;;
        a) publicsecretchecker && passwordcheck && tlabelchecker && deploydockermount ;;
        A) publicsecretchecker && passwordcheck && tlabelchecker && deploydockermount ;;
        D) publicsecretchecker && passwordcheck && tlabelchecker && deploydockeruploader ;;
        d) publicsecretchecker && passwordcheck && tlabelchecker && deploydockeruploader ;;
        o) optionsmenu ;;
        O) optionsmenu ;;
        *) clonestart ;;
        esac
    fi
    clonestart
}
# For Blitz
optionsmenu() {
    pgclonevars
    tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
💪 Options Interface
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

<<<<<<< HEAD
[1] Transport Select             | INFO: Change Transport Type
[2] Multi-HD Option              | INFO: Add Multi-Points and Options
[3] Destroy All Service Keys     | WARN: Wipes All Keys for the Project
[4] Create New Project           | WARN: Resets Everything
[5] Demo Mode                    | Hide the E-Mail Address on the Front

[6] Create a TeamDrive

NOTE: When creating a NEW PROJECT, the USER must create the
CLIENT ID and SECRET for that project! We will assist in creating the
project and enabling the API! Everything resets when complete!
=======
[1] Transport Select         | Change Transport Type
[2] RClone Mount Settings    | Change Varibles to for the Mount
[3] Multi-HD Option          | Add Multi-Points and Options
[4] Destroy All Service Keys | Wipes All Keys for the Project
[5] Create New Project       | Wipes Resets Everything
[6] Demo Mode                | Hide Displaying the E-Mail Address - ${demo}
[7] Clone Clean              | Destory Garbage Files - After [$cloneclean]M
[8] Change User Agent        | Currently: ${uagent}
[9] Create a Share Drive
[Z] Exit

NOTE: Creating NEW PROJECT [9]? User must create a CLIENT ID & SECRET for
that project! We will assist in creating the project and enabling the API!
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Z] Exit
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
    read -rp '↘️  Input Selection | Press [ENTER]: ' typed </dev/tty

<<<<<<< HEAD
    case $typed in
    1)  transportselect && clonestart ;;
    2)  bash /opt/plexguide/menu/multihd/multihd.sh ;;
    3)  deletekeys ;;
    4)  projectnameset ;;
    5)  demomode ;;
    6)  ctdrive ;;
    Z)  clonestart ;;
    z)  clonestart ;;
    *)  optionsmenu ;;
    esac
    optionsmenu
=======
case $typed in
      1 )
          transportselect
          clonestart ;;
      2 )
          mountnumbers ;;
      3 )
          bash /pg/pgblitz/menu/pgcloner/multihd.sh ;;
      4 )
          deletekeys ;;
      5 )
          projectnameset ;;
      6 )
          demomode ;;
      7 )
          cloneclean ;;
      8 )
          uagent ;;
      9 )
          csdrive ;;
      Z )
          clonestart ;;
      z )
          clonestart ;;
      * )
          optionsmenu ;;
esac
optionsmenu
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
}
# For Move
<<<<<<< HEAD
optionsmenumove() {
    pgclonevars
    tee <<-EOF
=======
optionsmengu () {
pgclonevars
tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
💪 Options Interface
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

<<<<<<< HEAD
[1] Transport Select           | INFO: Change Transport Type
[2] Multi-HD Option            | INFO: Add Multi-Points and Options

NOTE: When creating a NEW PROJECT, the USER must create the
CLIENT ID and SECRET for that project! We will assist in creating the
project and enabling the API! Everything resets when complete!

=======
[1] Transport Select         | Change Transport Type
[2] RClone Mount Settings    | Change Varibles to for the Mount
[3] Multi-HD Option          | Add Multi-Points and Options
[4] Clone Clean              | Destory Garbage Files - After [$cloneclean]M
[5] Change User Agent - ${uagent}
[Z] Exit

>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Z] Exit
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
    read -rp '↘️  Input Selection | Press [ENTER]: ' typed </dev/tty

<<<<<<< HEAD
    case $typed in
    1) transportselect && clonestart ;;
    2) bash /opt/plexguide/menu/multihd/multihd.sh ;;
    Z) clonestart ;;
    z) clonestart ;;
    *) optionsmenu ;;
    esac
    optionsmenu
=======
case $typed in
      1 )
          transportselect
          clonestart ;;
      2 )
          mountnumbers ;;
      3 )
          bash /pg/pgblitz/menu/pgcloner/multihd.sh ;;
      4 )
          cloneclean ;;
      5 )
          uagent ;;
      Z )
          clonestart ;;
      z )
          clonestart ;;
      * )
          optionsmenu ;;
esac
optionsmenu
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965
}
demomode() {
    if [[ "$demo" == "OFF" ]]; then
        echo "ON " >/var/plexguide/pgclone.demo
    else echo "OFF" >/var/plexguide/pgclone.demo; fi

<<<<<<< HEAD
    pgclonevars
    tee <<-EOF
=======
demomode () {
  if [[ "$demo" = "OFF" ]]; then echo "ON " > /pg/rclone/pgclone.demo
  else echo "OFF" > /pg/rclone/pgclone.demo; fi

pgclonevars
tee <<-EOF
>>>>>>> ba72cca3f19b78e8913b8ea0e801932c5efe6965

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 DEMO MODE IS NOW: $demo | PRESS [ENTER] to CONFIRM!
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
    read -rp '' typed </dev/tty
    optionsmenu
}
