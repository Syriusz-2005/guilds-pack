data modify storage guilds:guild_creation guild_name set from entity @s SelectedItem.tag.display.Name

function guilds:utils/get_player_head
data modify storage guilds:guild_creation guild_creator.uuid set from entity @s UUID
data modify storage guilds:guild_creation guild_creator.name set from entity @s SelectedItem.tag.SkullOwner.Name

data modify storage guilds:guild_creation guild_members set value []

item replace entity @s weapon.mainhand with air

data modify storage guilds:guild_store guild_list append from storage guilds:guild_creation


tellraw @s [{"text":"[priv]: ", "color": "gray"},{"text": "You've just created a new guild!", "color": "green"}]