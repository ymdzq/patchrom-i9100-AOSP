#!/bin/bash
#
# $1: dir for original miui app 
# $2: dir for target miui app
#

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply
MIUI_SRC_DIR=$PORT_ROOT/miui/src


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
    mkdir -p $2/res/drawable-hdpi/
    cp $MIUI_SRC_DIR/packages/apps/Miui$1/res/drawable-hdpi/*.png $2/res/drawable-hdpi/
fi

if [ $1 = "ThemeManager" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
    mkdir -p $2/res/drawable-hdpi/
    cp $MIUI_SRC_DIR/packages/apps/$1/res/drawable-hdpi/*.png $2/res/drawable-hdpi/
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
    mkdir -p $2/res/drawable-hdpi/
    mkdir -p $2/res/drawable-largeui-hdpi/
    cp $MIUI_SRC_DIR/packages/apps/$1/res/drawable-hdpi/*.png $2/res/drawable-hdpi/
    cp $MIUI_SRC_DIR/packages/apps/$1/res/drawable-largeui-hdpi/*.png $2/res/drawable-largeui-hdpi/

fi

if [ $1 = "Backup" ];then
    mkdir -p $1
    mkdir -p $2/res/drawable-hdpi/
    cp $MIUI_SRC_DIR/packages/apps/$1/res/drawable-hdpi/*.png $2/res/drawable-hdpi/
fi

if [ $1 = "Contacts" ];then
    mkdir -p $1
    mkdir -p $2/res/drawable-hdpi/
    cp $MIUI_SRC_DIR/packages/apps/$1/res/drawable-hdpi/*.png $2/res/drawable-hdpi/
fi

if [ $1 = "DeskClock" ];then
    mkdir -p $1
    mkdir -p $2/res/drawable-hdpi/
    mkdir -p $2/res/drawable-xlarge-hdpi/
    cp $MIUI_SRC_DIR/packages/apps/$1/res/drawable-hdpi/*.png $2/res/drawable-hdpi/
    cp $MIUI_SRC_DIR/packages/apps/$1/res/drawable-xlarge-hdpi/*.png $2/res/drawable-xlarge-hdpi/
fi

if [ $1 = "FileExplorer" ];then
    mkdir -p $1
    mkdir -p $2/res/drawable-hdpi/
    cp $MIUI_SRC_DIR/packages/apps/$1/res/drawable-hdpi/*.png $2/res/drawable-hdpi/
fi

if [ $1 = "MiuiGallery" ];then
    mkdir -p $1
    mkdir -p $2/res/drawable-hdpi/
    cp $MIUI_SRC_DIR/packages/apps/$1/res/drawable-hdpi/*.png $2/res/drawable-hdpi/
fi

if [ $1 = "Music" ];then
    mkdir -p $1
    mkdir -p $2/res/drawable-hdpi/
    mkdir -p $2/res/raw-hdpi/
    cp $MIUI_SRC_DIR/packages/apps/Miui$1/res/drawable-hdpi/*.png $2/res/drawable-hdpi/
	cp $MIUI_SRC_DIR/packages/apps/Miui$1/res/raw-hdpi/* $2/res/raw-hdpi/
	rm -rf $2/res/raw-xhdpi/
fi

if [ $1 = "SoundRecorder" ];then
    mkdir -p $1
    mkdir -p $2/res/drawable-hdpi/
    cp $MIUI_SRC_DIR/packages/apps/$1/res/drawable-hdpi/*.png $2/res/drawable-hdpi/
fi
