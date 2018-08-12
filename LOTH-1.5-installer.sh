notify-send "KGM : The installation of LOTH-1.5 has just begun, please be patient and wait for it to finish."
cd /
cd $HOME
if [ ! -d .minetest ]; then
notify-send "KGM : Couldn't find .minetest folder! either minetest isn't installed or you use a minetest that is not supported by this installer. make shure you have a minetest installed. If you have a mintest installed and this script still doesn't work, install LOTH-1.5 manually. visit loth-game.github.io for more information."
exit 3
fi
mkdir -p -- .minetest/games
wget -O .minetest/games/Minetest-LOTH-Subgame-1.5.zip https://github.com/KaiGerdMueller/LOTH-1.5/archive/master.zip
unzip -o -d .minetest/games .minetest/games/Minetest-LOTH-Subgame-1.5.zip
rm .minetest/games/Minetest-LOTH-Subgame-1.5.zip
notify-send "KGM : Congratulations, you succesfully installed my LOTH-1.5 Subgame! Start Minetest and try it out!"
