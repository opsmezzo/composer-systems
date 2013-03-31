#!/bin/bash

#
# Install graphite files
#
mkdir -p /opt/src
pushd /opt/src
  # carbon@0.9.x (stable) branch
  git clone https://github.com/graphite-project/carbon.git
  cd carbon
  git checkout 0.9.x
  python setup.py install
  cd ..
  
  # whisper@0.9.x (stable) branch
  git clone https://github.com/graphite-project/whisper.git
  cd whisper
  git checkout 0.9.x
  sudo python setup.py install
  cd ..
  
  # Install django, python and graphite-web dependencies
  sudo apt-get install -y python-dev python-cairo-dev python-django python-ldap python-setuptools libcairo2-dev
  sudo easy_install django django-tagging

  # Install py2cairo manually because ... well ... it's python.  
  wget http://cairographics.org/releases/py2cairo-1.10.0.tar.bz2
  tar xjf py2cairo-1.10.0.tar.bz2
  mv py2cairo-1.10.0 py2cairo
  rm py2cairo-1.10.0.tar.bz2
  
  cd py2cairo
  export PYTHON=/usr/bin/python
  export LIBRARY_PATH=$HOME/include:/usr/include/
  export PKG_CONFIG_PATH=$HOME/lib/pkgconfig
  export LD_LIBRARY_PATH=$HOME/lib
  ./waf configure --prefix=/usr
  ./waf build
  ./waf install
  cp -R /usr/lib/python2.7/site-packages/* $(python -c "from distutils.sysconfig import get_python_lib; print(get_python_lib())")

  # graphite-web@0.9.x (stable) branch
  git clone https://github.com/graphite-project/graphite-web.git
  cd graphite-web
  #pip install django tagging
  git checkout 0.9.x
  python check-dependencies.py
  python setup.py install
  cd ..
popd