#!/usr/bin/bash
_ip=`curl ifconfig.me 2> /dev/null`
test_ip=`cat ip.txt`
token=`cat token.txt`
chat_id=`cat chat_id.txt`
message="IP has changed. now it is $_ip"

echo "IP is $_ip"

  if [ $_ip != $test_ip ]; then
    echo "Not Equal, tested at `date`"
    telegram -t "$token" -c "$chat_id" "$message" && echo "Message Sent to $chat_id"
    echo $_ip > ip.txt
  else
    echo "Equal, tested at `date`"
  fi
