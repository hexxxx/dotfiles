#!/bin/bash

sudo yum install git
cd ~/
git clone https://github.com/hexxxx/dotfiles.git
rm ~/.bashrc
mv dotfiles/.bashrc ~/
source ~/.bashrc
sudo chmod +x ~/dotfiles/vimrc.sh
sh ~/dotfiles/vimrc.shcd /opt/
sudo wget -O splunk-6.5.0-59c8927def0f-Linux-x86_64.tgz 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=6.5.0&product=splunk&filename=splunk-6.5.0-59c8927def0f-Linux-x86_64.tgz&wget=true'
sudo tar xzvf splunk-6.5.0-59c8927def0f-Linux-x86_64.tgz
sudo chown -R splunkuser:splunkuser /opt/splunk
splunkbin
./splunk start --accept-license
splunkbin
sudo ./splunk enable boot-start -user splunkuser
./splunk disable local-index
./splunk restart
