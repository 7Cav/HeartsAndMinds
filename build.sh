#!/bin/bash

if [ -d "./PBO" ]
then
    echo "PBO directory exists"
    rm -rfv ./PBO/*
else
    mkdir "PBO"
fi

if [ -d "./WorkDir" ]
then
    echo "WorkDir directory exists"
    rm -rfv ./WorkDir/*
else
    mkdir "WorkDir"
fi

for map in ./Missionbasefiles/*; do
    echo "$map"
    cp -rv $map ./WorkDir/
done

for map in ./WorkDir/*; do
    echo "$map"
    map_name=$(basename $map)
    echo $map_name
    cp -rv ./Missionframework/* $map/
    mv -v $map/param.hpp $map/core/def/
    #makepbo $map
done