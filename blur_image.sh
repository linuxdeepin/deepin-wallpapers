#!/bin/bash
mkdir -p image-blur
for inname in ./deepin/*
do
	inname=${inname##*/}
	md5name=`echo -n /usr/share/wallpapers/deepin/$inname | md5sum`
	md5name=${md5name%  *}
	outname=$md5name.jpg
	/usr/lib/deepin-api/image-blur --sigma 30 ./deepin/$inname ./image-blur/$outname
done
for inname in ./deepin-private/*
do
	inname=${inname##*/}
	md5name=`echo -n /usr/share/wallpapers/deepin/$inname | md5sum`
	md5name=${md5name%  *}
	outname=$md5name.jpg
	/usr/lib/deepin-api/image-blur --sigma 30 ./deepin-private/$inname ./image-blur/$outname
done
