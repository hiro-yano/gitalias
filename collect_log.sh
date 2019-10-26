#!/bin/sh
ssh vagrant@$1 "sudo tar -cvf - -C /usr/local/src/ apache-tomcat-9.0.27/logs/ -C /var/opt/test/ abc/logs -C /var/lib/pgsql/11/logs/" | gzip >> logs.tar.gz
#ssh vagrant@vm-cluster-node2 "sudo tar -cf - -C /var/opt/test/ abc/logs" | gzip >> logs.tar.gz
