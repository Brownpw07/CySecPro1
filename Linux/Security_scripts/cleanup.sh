#~/bin/bash
rm /tmp/*
rm /var/tmp/*
apt cache clean -y
rm -rf /home/sysadmin/.cache/thumbnails
rm -rf /home/instructor/.cache/thumbnails
rm -rf /home/student/.cache/thumbnails
rm -rf /home/root/.cache/thumbnails
