#!/bin/bash
SRC=`dirname $0`
if [ -z $SRC ]; then $SRC=.; fi
lessc -x $SRC/colorpicker.less $SRC/../css/colorpicker.css
