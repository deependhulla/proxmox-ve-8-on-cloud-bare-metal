## backup existing repo by copy just for safety
mkdir -p /opt/old-config-backup/ 2>/dev/null
/bin/cp -pR /etc/apt/sources.list /opt/old-config-backup/old-sources.list-`date +%s`

##disable the default aws
/bin/mv /etc/apt/sources.list.d/debian.sources /opt/old-config-backup/old-debian.sources-`date +%s` 2>/dev/null
/bin/mv /etc/apt/mirrors/debian-security.list /opt/old-config-backup/debian-security.list-`date +%s` 2>/dev/null
/bin/mv /etc/apt/mirrors/debian.list /opt/old-config-backup/debian.list-`date +%s` 2>/dev/null


echo "" >  /etc/apt/sources.list

echo "deb http://deb.debian.org/debian/ bookworm main non-free-firmware contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian/ bookworm main non-free-firmware contrib non-free" >> /etc/apt/sources.list
echo "deb http://security.debian.org/debian-security bookworm-security main non-free-firmware contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://security.debian.org/debian-security bookworm-security main non-free-firmware contrib non-free" >> /etc/apt/sources.list
echo "deb http://deb.debian.org/debian/ bookworm-updates main non-free-firmware contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian/ bookworm-updates main non-free-firmware contrib non-free" >> /etc/apt/sources.list

apt update

apt-get -y upgrade
apt-get -y full-upgrade
