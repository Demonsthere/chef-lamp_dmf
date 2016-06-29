#!/bin/bash
cd /var/www/html
for dirs in attachments avatars cache Packages Packages/installed.list Smileys Themes agreement.txt Settings.php Settings_bak.php;
do 
  chmod 777 $dirs; 
done
