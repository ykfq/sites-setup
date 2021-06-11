# Things will be done
- Build nginx container that serve nginx-gopl-zh
- Build gopl-zh from source and mount `_book` to nginx container
- Add daily crontab settings

# Install dependencies
```bash
 yum install -y yum-utils
 yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
 yum -y install docker-ce

 yum install vim net-tools git
 curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
 chmod +x /usr/local/bin/docker-compose
```

# Build docker image
```
docker-compose up --build -d
```

# Build gopl-zh from source for the first time
```
bash make_gopl-zh.sh
```

# Auto build gopl-zh daily
```
bash add_cron.sh
chmod +x /etc/cron.daily
```
# Access
```
http://server_name:80

# server_name can be found in nginx/conf.d/gopl.conf
```

