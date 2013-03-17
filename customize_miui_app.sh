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
	cp ../miui/src/packages/apps/Phone/res/drawable-hdpi/* $2/res/drawable-hdpi/
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

    cp ../miui/src/packages/apps/MiuiHome/res/drawable-hdpi/* $2/res/drawable-hdpi/
fi

if [ $1 = "FileExplorer" ];then
	mkdir -p FileExplorer
    cp ../miui/src/packages/apps/$1/res/drawable-hdpi/* $2/res/drawable-hdpi/
fi

if [ $1 = "Backup" ];then
	mkdir -p Backup
    cp ../miui/src/packages/apps/Backup/res/drawable-hdpi/* $2/res/drawable-hdpi/
fi

if [ $1 = "MiuiGallery" ];then
	mkdir -p MiuiGallery
    cp ../miui/src/packages/apps/MiuiGallery/res/drawable-hdpi/* $2/res/drawable-hdpi/
fi

if [ $1 = "Music" ];then
	mkdir -p Music
    cp ../miui/src/packages/apps/MiuiMusic/res/drawable-hdpi/* $2/res/drawable-hdpi/
fi

if [ $1 = "DeskClock" ];then
	mkdir -p DeskClock
	mkdir -p $2/res/drawable-hdpi
    cp ../miui/src/packages/apps/DeskClock/res/drawable-hdpi/* $2/res/drawable-hdpi/
fi

if [ $1 = "SoundRecorder" ];then
	mkdir -p SoundRecorder
	mkdir -p $2/res/drawable-hdpi
    cp ../miui/src/packages/apps/SoundRecorder/res/drawable-hdpi/* $2/res/drawable-hdpi/
fi
