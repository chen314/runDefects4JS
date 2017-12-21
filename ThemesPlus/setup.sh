#! /bin/bash

cd /workspace
# Xvfb or X virtual framebuffer is a display server implementing the X11 display server protocol.
Xvfb :99 -ac -screen 0 1280x1024x24 &
# 172.88.0.3 --> ram-test.mzw.jp
cp /etc/hosts ~/hosts.txt
sed -i '$a 172.88.0.3 ram-test.mzw.jp' ~/hosts.txt
cp -f ~/hosts.txt /etc/hosts
# run c314/defects4js:wordpressPlugins_themesPlus_defect1
docker run -i -d --net defects4js -h ram-test.mzw.jp --ip 172.88.0.3 -p 28088:80 -m 2g --name ram-test -t c314/defects4js:wordpressPlugins_themesPlus_defect1
# run apache2 and mysql in ram-test
docker exec -it ram-test /bin/bash service apache2 start
docker exec -it ram-test /bin/bash mysqld_safe &
