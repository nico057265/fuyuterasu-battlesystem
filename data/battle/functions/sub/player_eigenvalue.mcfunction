#プレイヤーに固有値を与える（今日からお前は1番だ）
#execute as @a run function battle:back_base_system/player_give_eigenvalue
scoreboard players add @s player_e 0

scoreboard players operation max player_e > * player_e 

execute as @s[tag=!e_set,scores={player_e=0}] run scoreboard players add @s player_e 1

scoreboard players operation @s[tag=!e_set,scores={player_e=0..}] player_e += max player_e 

tag @s[tag=!e_set,scores={player_e=0..}] add e_set