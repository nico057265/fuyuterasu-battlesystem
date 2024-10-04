#swich:1,start
execute if score .start swich matches 1 run function battle:main/start



#固有スコアを割り振る
execute as @a run function battle:sub/player_eigenvalue

