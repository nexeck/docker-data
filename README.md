# Data Only Container

### Ghost
This is a data-only Docker image. concept in two lines. first line is for running data only container.

```
$ docker run --name ghost-data -e DATA_DIR=/var/lib/ghost nexeck/docker-data
```

And second line is for running ghost
```
$ docker run --restart=always --name ghost --volumes-from ghost-data ghost:latest
```

### Rancher Server
This is a data-only Docker image. concept in two lines. first line is for running data only container.

```
$ sudo docker run --name rancher-data -e DATA_DIR=/var/lib/mysql nexeck/docker-data
```

And second line is for running ghost
```
$ sudo docker run -d --restart=always --name=rancher-server --volumes-from rancher-data -p 8080:8080 rancher/server
```