### Launch Nightscout (cgm-remote-monitor) with MongoDB 6 on your Android phone/TV/etc using Termux

Working on Android phones/TV boxes with Aarch64 cpu.
You can check this by entering the command.
```
uname -a
```
Run in Termux command
```
pkg update -y && curl -Lso- https://github.com/Stan-Di/nightscout-termux/raw/main/i.sh | sh
```
Script will download NodeJS 18 from old termux repository and precompiled Nightscout 15.0.2 with Termux services 

Restart Termux by typing
```
exit
```
And run it again

Nightscout and MongoDB Database will  be started automatically

Type http://localhost:1337 and use it

You can edit Nightscout variables with
```
nano cgm/start.sh
```
And restart NightScout Service
```
killall node
```
