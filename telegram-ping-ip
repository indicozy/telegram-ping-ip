#!/usr/bin/bash
for i in 'chat_id.txt' 'token.txt'; do
  if [ ! -f "$i" ]; then
      echo "ERROR: File $i not found!"
      exit 1
  fi
done

if [ -f "ip.txt" ]; then
  test_ip=`cat ip.txt 2> /dev/null`
else
  test_ip=''
fi
_ip=`curl ifconfig.me 2> /dev/null`
token=`cat token.txt 2> /dev/null`
chat_id=`cat chat_id.txt 2> /dev/null`
message="IP has changed. now it is $_ip"

echo "IP is $_ip"

  if [[ $_ip != $test_ip ]]; then
    echo "Not Equal, tested at `date`"
    ./telegram -t "$token" -c "$chat_id" "$message"
    echo $_ip > ip.txt
  else
    echo "Equal, tested at `date`"
  fi
exit 0
