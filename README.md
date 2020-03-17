# docker-webdav
Docker image for running an Apache WebDAV server

```sh
mkfs -t xfs /dev/xvdb
mkdir -p /storage
mount /dev/xvdb /storage
docker run --restart always -v /storage:/var/lib/dav \
    -e AUTH_TYPE=Digest -e USERNAME=user -e PASSWORD=password \
    --publish 80:80 \
    -e LOCATION=/ -d damiencriado/webdav
```
