#!/bin/bash

# from https://advishnuprasad.com/blog/2019/03/17/build-pgmodeler-from-source/

export PGMODELER_ROOT=/Applications/pgmodeler.app/
qmake -r pgmodeler.pro
make -j10
make -j10 install
macdeployqt $PGMODELER_ROOT \
                            -executable=$PGMODELER_ROOT/Contents/MacOS/pgmodeler-ch \
                            -executable=$PGMODELER_ROOT/Contents/MacOS/pgmodeler-cli
