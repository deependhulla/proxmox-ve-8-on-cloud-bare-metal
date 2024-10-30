#/bin/bash



apt-get install -y whiptail

whiptail --title "Check Your HostName and DateTime" --infobox "Please make sure your System Date Time is OK in Sync\n `date` \n\n Also Make sure hostname is set proper \n Host: `hostname -f`" 12 58

# for Debian 12
## set to India IST timezone -- You can dissable it if needed
export LANG=C
export LC_CTYPE=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen
sed -i -e 's/en_IN UTF-8/# en_IN UTF-8/' /etc/locale.gen
locale-gen en_US en_US.UTF-8
echo "LANG=en_US.UTF-8" > /etc/environment
echo "LC_ALL=en_US.UTF-8" >> /etc/environment
update-locale LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8

echo "You see hostname"
hostname -f 
echo "you should see single ip only for (hostname -i) ...else check /etc/hosts and add or update hostname for ip"
hostname -i
