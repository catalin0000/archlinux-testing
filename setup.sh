echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
echo "deb http://kali.download/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
wget https://archive.kali.org/archive-key.asc -O /etc/apt/trusted.gpg.d/kali-archive-keyring.asc
apt update
apt --fix-broken install
apt -y upgrade
apt -y dist-upgrade
apt -y autoremove --purge
apt -y install kali-linux-everything
