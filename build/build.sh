#!/bin/bash
git clean -x -f
rm -rf sourcemod/
rm -rf hl2sdk/
rm -rf mmsource-1.11/
rm -rf ambuild/
git clone https://github.com/alliedmodders/sourcemod -b 1.11-dev --recursive
git clone https://github.com/tf2classic/hl2sdk hl2sdk-tf2 -b tf2
git clone https://github.com/alliedmodders/metamod-source mmsource-1.11 -b 1.11-dev
git clone https://github.com/alliedmodders/ambuild
pip install ./ambuild

pushd sourcemod

mkdir build
pushd build

python3 ../configure.py --enable-optimize -s=tf2 --no-mysql
 ~/.local/bin/ambuild

popd
popd

# we are now in the build dir
cp ./sourcemod/build/package/addons/sourcemod/bin/* ../sourcemod/bin/ -rfv
