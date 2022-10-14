
#declare storage guilds:guild_store
#declare storage guilds:guild_creation


#declare storage guilds:temp_guild_filter_params guild filter params goes here
#declare storage guilds:temp_guild_filter_cache Internal
#declare storage guilds:temp_guild_filter_result It's the result of guild_filter functions (has result nbt tag)


data modify storage guilds:guild_store yes set value true

execute unless data storage guilds:guild_store guild_list run data modify storage guilds:guild_store guild_list set value []

scoreboard objectives add guilds.checks dummy

#declare score_holder %guilds.guild_name "it is used in the fuild name filter"

say hi