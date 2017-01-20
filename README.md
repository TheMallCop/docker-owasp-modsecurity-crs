# owasp modsecurity crs
This container downloads the specified version of [OWASP ModSecurity CRS](https://modsecurity.org/crs/) rules into /data (which is exposed as a volume).

## Usage
This image supports the following environment variables
 - CRS\_VERSION (default: 3.0.0)
 - UID (default: 0)
 - GID (default: 0)


The following will download the CRS rules (default version 3.0.0) to ./crs

```
docker run --rm -it -v `pwd`/crs:/data elisiano/owasp-modsecurity-crs
```

If you want specify a different user/group and a specific version:

```
docker run --rm -it -v `pwd`/crs:/data -e UID=1000 -e GID=1000 -e CRS\_VERSION=3.0.0 elisiano/owasp-modsecurity-crs
```
NOTE: all commands inside the container will be executed as root, only the final files will be `chown`'ed.

