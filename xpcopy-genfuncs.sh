#!/bin/bash
set -euo pipefail

cd data/turns/functions/xpcopy
mkdir -p points levels
for i in {512,256,128,64,32,16,8,4,2,1}; do
	for type in {points,levels}; do
		[ $i -gt 64 ] && [ $type == "levels" ] && continue
		echo \
"xp add @s $i $type
scoreboard players remove #$type xpcopy $i" > $type/by$i.mcfunction
	done
done
