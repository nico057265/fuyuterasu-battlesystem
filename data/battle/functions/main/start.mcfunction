scoreboard players add .start start_count 1
#カウントダウン
execute if score .start start_count matches 20 run tellraw @a [{"text":"3..","color":"aqua"}]
execute if score .start start_count matches 40 run tellraw @a [{"text":"2..","color":"aqua"}]
execute if score .start start_count matches 60 run tellraw @a [{"text":"1..","color":"aqua"}]
execute if score .start start_count matches 80 run tellraw @a [{"text":"START","color":"gold"}]
#リーダー(reader)を指定
execute if score .start start_count matches 80 as @r[team=red] if score .red team matches 1.. run tag @s add reader
execute if score .start start_count matches 80 as @r[team=aqua] if score .aqua team matches 1.. run tag @s add reader
execute if score .start start_count matches 80 as @r[team=green] if score .green team matches 1.. run tag @s add reader
execute if score .start start_count matches 80 as @r[team=dark_green] if score .dark_green team matches 1.. run tag @s add reader
execute if score .start start_count matches 80 as @r[team=light_purple] if score .light_purple team matches 1.. run tag @s add reader
execute if score .start start_count matches 80 as @a[team=red,tag=reader] if entity @s run tellraw @a [{"text":"@sが[Red]のがリーダーです"}]
execute if score .start start_count matches 80 as @a[team=aqua,tag=reader] if entity @s run tellraw @a [{"text":"@sが[Aqua]のがリーダーです"}]
execute if score .start start_count matches 80 as @a[team=green,tag=reader] if entity @s run tellraw @a [{"text":"@sが[Aqua]のがリーダーです"}]
execute if score .start start_count matches 80 as @a[team=dark_green,tag=reader] if entity @s run tellraw @a [{"text":"@sが[Aqua]のがリーダーです"}]
execute if score .start start_count matches 80 as @a[team=light_purple,tag=reader] if entity @s run tellraw @a [{"text":"@sが[Purple]のがリーダーです"}]
#カスタム領域

