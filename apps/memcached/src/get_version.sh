sudo echo "memcached:" $(docker inspect memcached:$(docker images | grep memcached |awk '{print $2}') |grep -m 1 "MEMCACHED_VERSION"|cut -d'=' -f2|cut -d"\"" -f1) |sudo tee -a /data/logs/install_version.txt
