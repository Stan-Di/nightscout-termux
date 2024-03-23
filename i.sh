#!/data/data/com.termux/files/usr/bin/sh
pkg i termux-services -y
pkg i tur-repo -y
pkg update -y
pkg i mongodb -y
curl -LO https://github.com/Stan-Di/nightscout-termux/releases/download/0.0.1/nodejs-lts_18.16.1-2_aarch64.deb
curl -LO https://github.com/Stan-Di/nightscout-termux/releases/download/0.0.1/cgm-termux.tar.gz
curl -LO https://github.com/Stan-Di/nightscout-termux/releases/download/0.0.1/service.tar.gz
dpkg -i nodejs-lts_18.16.1-2_aarch64.deb
apt --fix-broken install -y
tar xzf cgm-termux.tar.gz --checkpoint-action="ttyout=."
rm cgm-termux.tar.gz nodejs-lts_18.16.1-2_aarch64.deb service.tar.gz
tar xzf service.tar.gz -C $PREFIX/var/
exit
