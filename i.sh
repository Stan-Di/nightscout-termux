#!/data/data/com.termux/files/usr/bin/sh
pkg update -y
pkg i termux-services -y
pkg i tur-repo -y
pkg update -y
curl -O https://github.com/Stan-Di/nightscout-termux/releases/download/0.0.1/nodejs-lts_18.16.1-2_aarch64.deb
curl -O https://github.com/Stan-Di/nightscout-termux/releases/download/0.0.1/cgm-termux.tar.gz
curl -O https://github.com/Stan-Di/nightscout-termux/releases/download/0.0.1/service.tar.gz
dpkg -i nodejs-lts_18.16.1-2_aarch64.deb
apt --fix-broken install -y
dpkg -i mongodb_6.1.0-1_aarch64.deb
tar xzf cgm-termux.tar.gz --checkpoint-action="ttyout=."
rm ns_termux.tar.gz
tar xzf service.tar.gz -C $PREFIX/var/
exit
