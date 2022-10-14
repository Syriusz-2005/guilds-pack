execute unless entity @s[nbt={SelectedItem:{id:"minecraft:paper"}}] run tellraw @s [{"text":"[priv] ","color": "gray"},{"text":" You need to hold a named paper for the command to work!","color":"red"}]

data modify storage guilds:temp_guild_filter_params guild_name set from entity @s SelectedItem.tag.display.Name
function guilds:guild_filters/name_filter/run

execute if data storage guilds:temp_guild_filter_result return run tellraw @s [{"text":"[priv] ","color": "gray"},{"text":"The guild of this name already exists","color":"red"}]

execute if entity @s[nbt={SelectedItem:{id:"minecraft:paper"}}] unless data storage guilds:temp_guild_filter_result return run function guilds:operations/_guild_add