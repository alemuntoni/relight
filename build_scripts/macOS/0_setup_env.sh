#!/bin/bash
# this is a script shell sets up a MacOS environment where
# ReLight can be compiled.
#
# Run this script if you never installed any of the ReLight dependencies.
#
# Requires: homebrew

INSTALL_QT=false

#checking for parameters
for i in "$@"
do
case $i in
    --install_qt)
        INSTALL_QT=true
        shift # past argument=value
        ;;
    *)
        # unknown option
        ;;
esac
done


brew install libomp eigen libjpeg
npm install -g appdmg

if [ "$INSTALL_QT" = true ] ; then
    brew install qt@5
    echo "export QTDIR=/usr/local/opt/qt" >> ~/.bash_profile
    echo "export PATH=$QTDIR/bin:$PATH" >> ~/.bash_profile
    echo "export LD_LIBRARY_PATH=/usr/local/opt/qt/lib:$LD_LIBRARY_PATH" >> ~/.bash_profile
    echo "export PKG_CONFIG_PATH=/usr/local/opt/qt/lib:$PKG_CONFIG_PATH" >> ~/.bash_profile
    . ~/.bash_profile
else
    echo "=== jumping installation of qt packages..."
fi
