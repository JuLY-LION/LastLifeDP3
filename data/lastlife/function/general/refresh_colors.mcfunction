# comment

function lastlife:admin/init

team leave @a
team join darkGreenName @a[scores={lives=4..}]
team join greenName @a[scores={lives=3}]
team join yellowName @a[scores={lives=2}]
team join redName @a[scores={lives=1}]
team join defeated @a[scores={lives=0}]

scoreboard players set @a refresh 0
scoreboard players enable @a refresh