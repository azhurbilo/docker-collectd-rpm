Build-CollectD
============

Using a Docker container, we are able to build all the RPMS needed to use CollectD.  The RPMs will be placed in the output folder once built.

### Building RPMs

```sh
docker run --rm=true -v ~/path/to/ouput/:/output bbcnews/build_collectd
```

### Build Image

```
docker build -t bbcnews/build_collectd .
```
