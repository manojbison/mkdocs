# Mkdocs

Mkdocs docker image

## Produce

First make sure that you have a mkdocs project in your file system.
You can build the web page given this project like this:

```bash
$ docker run -v <local path to mkdocs dir>:<container mount point to mkdocs dir> <docker image name> produce <container mount point to mkdocs dir>
```

This command will send a tar.gz file to stdout (result.tar.gz in the example). This compressed file is a directory containing a mkdocs generated site.

## Serve

You can serve the web page given this project like this:

```bash
$ cat <compressed mkdocs site> | docker run --rm -p 8000:8000 -i <docker image name> serve
```

This command will serve the tar.gz web site in port 8000 via port forwarding using Docker.

## Tests

The repository comes with a Jenkinsfile that executes the two files produce.sh and serve.sh. Make sure that jenkins has access to the docker CLI.
