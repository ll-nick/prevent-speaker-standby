#!/bin/bash

if crontab -l | grep -q 'preventStandbyHum.wav'
then
  echo 'Crontab already installed. Exiting now.'
  exit 1
fi

echo 'Installing crontab now...'
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
(crontab -l 2>/dev/null; echo "*/4 * * * * /usr/bin/aplay $SCRIPT_DIR/preventStandbyHum.wav") | crontab -

if crontab -l | grep -q 'preventStandbyHum.wav' 
then
  echo 'Crontab successfully installed!'
  exit 0
else
  echo 'Installation of crontab failed. You should manually add the following line using "crontab -e":'
  echo "*/4 * * * * /usr/bin/aplay $SCRIPT_DIR/preventStandbyHum.wav"
  exit 1
fi
