advancement revoke @s only snowski:invalidblock
execute if items entity @s weapon.mainhand clay run item modify entity @s weapon.mainhand {function:"set_count","count":1,"add":true}
execute if items entity @s weapon.mainhand clay run return run item modify entity @s weapon.mainhand {function:"set_count","count":-1,"add":true}
execute if items entity @s weapon.offhand clay run item modify entity @s weapon.offhand {function:"set_count","count":1,"add":true}
execute if items entity @s weapon.offhand clay run return run item modify entity @s weapon.offhand {function:"set_count","count":-1,"add":true}

item replace entity @s inventory.25 with air