#!/bin/bash
BANNER="/home/thor/nautilus_banner"
TARGET="/etc/motd"
SERVER_LIST="servers.txt"

if [ ! = "$BANNER" ]; then
   echo "no file found"
   exit 1
fi

while read -r server  
do
   echo "updating banner on $server"
   scp "$BANNER" "$server:/tmp/banner" || { 
   echo "scp failed for $server"
   continue
}

   ssh "$server" "sudo install -m 644 -o root -g root /tmp/banner $TARGET" || {
   echo "install failed for $server"
   continue
}
   echo "Success: $server updated."


done < "$SERVER_LIST"
