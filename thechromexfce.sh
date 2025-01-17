
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb

read -p "PRESS ENTER TO CONTINUE...(1/5)"

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

read -p "PRESS ENTER TO CONTINUE...(2/5)"

sudo DEBIAN_FRONTEND=noninteractive \
	apt install --assume-yes xfce4 desktop-base dbus-x11 xscreensaver

read -p "PRESS ENTER TO CONTINUE...(3/5)"

sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'

read -p "PRESS ENTER TO CONTINUE...(4/5)"

sudo systemctl disable lightdm.service

read -p "FINISCH! --> PRESS ENTER TO CLOSE...(5/5)"

