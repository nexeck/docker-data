Data Only Container
--------------------

This is a data-only Docker image. concept in two lines. first line is for running data only container.

```
$ docker run --name ghost-data -e DATA_DIR=/var/lib/ghost nexeck/docker-data
```

And second line is for running mongodb
```
$ docker run --name ghost --volumes-from ghost-data ghost:latest
```