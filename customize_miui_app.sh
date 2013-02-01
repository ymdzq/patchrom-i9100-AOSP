#!/bin/bash
#
# $1: dir for original miui app 
# $2: dir for target miui app
#

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply

curdir=`pwd`


if [ $1 = "Settings" ];then
    cp $1/*.part out/
    cd out
    $GIT_APPLY Settings.part
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "Fatal error: Settings patch fail"
        exit 1
    done
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Mms" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Phone" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "ThemeManager" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiuiHome" ];then
    cp $1/*.part out/
    cd out
    $GIT_APPLY MiuiHome.part
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "Fatal error: MiuiHome patch fail"
        exit 1
    done

	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Provision" ];then
    $XMLMERGYTOOL $1/res/drawable-hdpi $2/res/drawable-hdpi
    $XMLMERGYTOOL $1/res/drawable-zh-rCN-hdpi $2/res/drawable-zh-rCN-hdpi
    $XMLMERGYTOOL $1/res/drawable-zh-rTW-hdpi $2/res/drawable-zh-rTW-hdpi
fi

if [ $1 = "MiuiSystemUI" ];then
    $XMLMERGYTOOL $1/res/drawable-hdpi $2/res/drawable-hdpi
fi
