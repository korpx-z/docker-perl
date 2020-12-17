__### 5.026 is built within its [respected branch](https://github.com/korpx-z/docker-perl/tree/5.026-buster)__

### This image is built to run on s390x architecture.
-    [build source](https://github.com/korpx-z/docker-perl/tree/5.026-buster)
-    [original source code](https://github.com/Perl/docker-perl)

### Versions (built within their respected branches)
5.026 (buster)

# Perl

Perl is a high-level, general-purpose, interpreted, dynamic programming language. The Perl language borrows features from other programming languages, including C, shell scripting (sh), AWK, and sed.

> [wikipedia.org/wiki/Perl](https://en.wikipedia.org/wiki/Perl)

![logo](https://raw.githubusercontent.com/docker-library/docs/2f0c63f66919d5f310ba8357cec5f12d93ef4208/perl/logo.png)

# How to use this image

## Create a `Dockerfile` in your Perl app project

```dockerfile
FROM quay.io/ibm/perl:5.026
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
CMD [ "perl", "./your-daemon-or-script.pl" ]
```

Then, build and run the Docker image:

```console
$ docker build -t my-perl-app .
$ docker run -it --rm --name my-running-app my-perl-app
```

## Run a Perl script

For many simple, single file projects, you may find it inconvenient to write a complete `Dockerfile`. In such cases, you can run a Perl script by using the Perl Docker image directly:

```console
$ docker run -it --rm --name my-running-script -v <docker_volume>/path/to/myapp:/usr/src/myapp -w /usr/src/myapp quay.io/ibm/perl:5.026 perl your-script.pl
```

# License

View [license information](http://dev.perl.org/licenses/) for the software contained in this image.

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

Some additional license information which was able to be auto-detected might be found in [the `repo-info` repository's `perl/` directory](https://github.com/docker-library/repo-info/tree/master/repos/perl).
