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

You can edit Nightscout variables (https://github.com/nightscout/cgm-remote-monitor?tab=readme-ov-file#environment) with
```
nano cgm/start.sh
```
By edit file start.sh and add "export " before variable and restart NightScout Service
```
killall node
```

### Full code for building cgm-remote-monitor on Termux (For advanced users)

```
pkg i termux-services -y
pkg i tur-repo -y
pkg i git -y
pkg update -y
pkg i mongodb -y
curl -LO https://github.com/Stan-Di/nightscout-termux/releases/download/0.0.1/nodejs-lts_18.16.1-2_aarch64.deb
curl -LO https://github.com/Stan-Di/nightscout-termux/releases/download/0.0.1/service.tar.gz
dpkg -i nodejs-lts_18.16.1-2_aarch64.deb
apt --fix-broken install -y

git clone https://github.com/Nightscout/cgm-remote-monitor/
cd cgm-remote-monitor
rm package-lock.json
npm install

rm nodejs-lts_18.16.1-2_aarch64.deb service.tar.gz
tar xzf service.tar.gz -C $PREFIX/var/
exit
```
