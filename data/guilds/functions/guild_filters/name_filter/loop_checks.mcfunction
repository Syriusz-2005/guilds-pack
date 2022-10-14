
# Check if guild name matches
execute store success score %guilds.guild_name guilds.checks run data modify storage guilds:temp_guild_filter_cache guild_store_copy.guild_list[0].guild_name set from storage guilds:temp_guild_filter_params guild_name
# If it doesn't match, remove this guild from cached list

execute if score %guilds.guild_name guilds.checks matches 0 run data modify storage guilds:temp_guild_filter_result return set from storage guilds:temp_guild_filter_cache guild_store_copy.guild_list[0]

execute if score %guilds.guild_name guilds.checks matches 1 run data remove storage guilds:temp_guild_filter_cache guild_store_copy.guild_list[0]
execute if score %guilds.guild_name guilds.checks matches 1 run function guilds:guild_filters/name_filter/_loop
