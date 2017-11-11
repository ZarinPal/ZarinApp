git clone https://github.com/ZarinPal/Panel.git html
cd html
git apply ../disable_history_mode.patch
yarn install
yarn run production
cp -r assets ../
cp index.html ../