# docker-rsync

# Modules
Volumes [ "/modules" ]
Map to a shared directory from which you wish to create one or more rsync modules

contents of /modules/.modules.conf is automatically appended to rsyncd.conf, create this file in your local mapped drive and use it to configure your rsync modules. 

# Example
docker run -d -v /media/md127/rsync:/modules -p 873:873 --name rsync edseymour/rsync
