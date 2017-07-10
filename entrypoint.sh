#!/bin/bash
sleep 2

cd /home/container

# Update Rust Server
./steam/steamcmd.sh +login anonymous +force_install_dir /home/container +app_update 258550 +quit

# Replace Startup Variables
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":/home/container$ ${MODIFIED_STARTUP}"

if [ -f OXIDE_FLAG ]; then
    echo "Updating OxideMod..."
    curl "https://dl.bintray.com/oxidemod/builds/Oxide-Rust.zip" > oxide.zip
    unzip oxide.zip
    rm oxide.zip
fi

# Fix for Rust not starting
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(pwd)

# Run the Server
node /wrapper.js "${MODIFIED_STARTUP}"
