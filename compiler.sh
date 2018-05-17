#!/usr/bin/env bash
cd src
git clone https://github.com/ZarinPal/Panel.git html
git pull
cd html
yarn
yarn run app-production
cp -r assets ../
cp index.html ../
rm -rf ../html/
cd ../..
yarn run make-darwin
yarn run make-linux
#yarn run make-win32