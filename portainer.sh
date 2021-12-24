echo '安装portainer镜像并汉化'
docker volume create portainer_data &&
wget https://hub.fastgit.org/Wpenga/myself/releases/download/portainer-cn/public.zip && unzip public.zip && docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v $PWD/public:/public portainer/portainer
