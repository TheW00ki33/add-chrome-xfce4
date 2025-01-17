
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb

read -p "PRESS ENTER TO CONTINUE...(1/8)"

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

read -p "PRESS ENTER TO CONTINUE...(2/8)"

mv ./chrome-remote-desktop_current_amd64.deb ~/chrome-remote-desktop_current_amd64.deb
mv ./google-chrome-stable_current_amd64.deb ~/google-chrome-stable_current_amd64.deb
cd ~

read -p "PRESS ENTER TO CONTINUE...(3/8)"

sudo apt install ./chrome-remote-desktop_current_amd64.deb

read -p "PRESS ENTER TO CONTINUE...(4/8)"

sudo apt install ./google-chrome-stable_current_amd64.deb

read -p "PRESS ENTER TO CONTINUE...(5/8)"

sudo DEBIAN_FRONTEND=noninteractive \
	apt install --assume-yes xfce4 desktop-base dbus-x11 xscreensaver

read -p "PRESS ENTER TO CONTINUE...(6/8)"

sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'

read -p "PRESS ENTER TO CONTINUE...(7/8)"

sudo systemctl disable lightdm.service

read -p "FINISCH! --> PRESS ENTER TO CLOSE...(8/8)"
