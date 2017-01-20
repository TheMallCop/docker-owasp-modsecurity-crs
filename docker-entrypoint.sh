#!/bin/sh
set -ex
cd /data
curl -OL https://github.com/SpiderLabs/owasp-modsecurity-crs/archive/v${CRS_VERSION}.tar.gz
tar --strip-components 1 -xzf v${CRS_VERSION}.tar.gz owasp-modsecurity-crs-${CRS_VERSION}/rules owasp-modsecurity-crs-${CRS_VERSION}/crs-setup.conf.example
rm v${CRS_VERSION}.tar.gz
mv crs-setup.conf.example crs-setup.conf
echo ${CRS_VERSION} > version
chown -R $UID:$GID crs-setup.conf version rules
