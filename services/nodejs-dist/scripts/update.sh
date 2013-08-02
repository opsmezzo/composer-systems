#!/bin/sh
rsync -avP --port 8730 www.nodejs.org::nodejs /opt/local/html/
