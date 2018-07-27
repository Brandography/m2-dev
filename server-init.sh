#!/usr/bin/env bash
apt update

# Install Apache
apt install -y apache2

# Install mysql
apt install -y mysql-server
mysql_secure_installation

# Install php
add-apt-repository ppa:ondrej/php
apt install -y php7.1
apt install -y php7.1-cli php7.1-common php7.1-json php7.1-opcache php7.1-mysql php7.1-mbstring php7.1-mcrypt php7.1-zip php7.1-fpm php7.1-curl php7.1-dom php7.1-bcmath php7.1-intl php7.1-gd php7.1-simplexml php7.1-soap

# Install Redis
apt install build-essential tcl
cd /tmp
curl -O http://download.redis.io/redis-stable.tar.gz
tar xzvf redis-stable.tar.gz
cd redis-stable
make
make test
make install
mkdir /etc/redis
cp /tmp/redis-stable/redis.conf /etc/redis
# Edit /var/lib/redis

. . .

# If you run Redis from upstart or systemd, Redis can interact with your
# supervision tree. Options:
#   supervised no      - no supervision interaction
#   supervised upstart - signal upstart by putting Redis into SIGSTOP mode
#   supervised systemd - signal systemd by writing READY=1 to $NOTIFY_SOCKET
#   supervised auto    - detect upstart or systemd method based on
#                        UPSTART_JOB or NOTIFY_SOCKET environment variables
# Note: these supervision methods only signal "process is ready."
#       They do not enable continuous liveness pings back to your supervisor.
supervised systemd

. . .

. . .

# The working directory.
#
# The DB will be written inside this directory, with the filename specified
# above using the 'dbfilename' configuration directive.
#
# The Append Only File will also be created inside this directory.
#
# Note that you must specify a directory here, not a file name.
dir /var/lib/redis

. . .

# Create a Redis systemd Unit File
nano /etc/systemd/system/redis.service

[Unit]
Description=Redis In-Memory Data Store
After=network.target

[Service]
User=redis
Group=redis
ExecStart=/usr/local/bin/redis-server /etc/redis/redis.conf
ExecStop=/usr/local/bin/redis-cli shutdown
Restart=always

[Install]
WantedBy=multi-user.target


adduser --system --group --no-create-home redis
mkdir /var/lib/redis
chown redis:redis /var/lib/redis
chmod 770 /var/lib/redis
# Enable redis to start at boot
systemctl enable redis

