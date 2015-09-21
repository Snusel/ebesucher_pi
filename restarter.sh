#/bin/sh
source config.sh

while(true); do
  content=$(curl -s "http://www.ebesucher.de/?link=restarterzugriff&username=$username&code=$code")
  if [[ $content == *'Timeout_reached=true'* ]]
    then
    killall -9 iceweasel
    sleep 30s
    iceweasel "http://www.ebesucher.de/surfbar/$username" &
    else
    echo 'no restart requiered...'
  fi;
  sleep 120s
done