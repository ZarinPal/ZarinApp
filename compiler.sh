#!/usr/bin/env bash
cd src
git clone https://github.com/ZarinPal/Panel.git html
git pull
cd html
git apply ../disable_history_mode.patch
yarn install
yarn run production
cp -r assets ../
cp index.html ../
rm -rf ../html/
electron-forge make --platform=darwin
electron-forge make --platform=linux