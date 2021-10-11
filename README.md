# Telegram Bot for Sending IP-address of a server if Dynamic IP has changed.
## Requirements:
* Have system packages: `curl`, `cat`, and `date`
* Have token of TG bot at file `token.txt`
* Have chat ID at `chat_id.txt`

## Pre-installed packages
Script uses another bash script for [sending TG messages via bot](https://github.com/fabianonline/telegram.sh) to your PATH, version = v0.4

## Future plans
* ~~add Telegram script from fabianonline/telegram.sh to not install telegram script to PATH~~

*All done, send ideas in ISSUES*

## Additional Information
**FYI IT pings to `ifconfig.me`**
