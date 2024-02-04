pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
pacman-key --lsign-key 3056513887B78AEB
pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

echo '\n\n[chaotic-aur]\nInclude = /etc/pacman.d/chaotic-mirrorlist' >> /etc/pacman.conf
echo '\n\n[blackarch]\nSigLevel = Never\nServer = https://blackarch.org/blackarch/$repo/os/$arch\n' >> /etc/pacman.conf


pacman -Syy
pacman -Syu
pacman -S zsh
pacman -S noto-color-emoji-fontconfig
pacman -S zsh-syntax-highlighting

cp .zshrc /home/*/.
cp .zshrc /root/.
