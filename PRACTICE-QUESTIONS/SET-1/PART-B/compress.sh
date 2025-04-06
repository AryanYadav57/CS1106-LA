#!/bin/bash

tar -cvf varlog.tar /var/log
gzip varlog.tar
ls -lh varlog.tar.gz

