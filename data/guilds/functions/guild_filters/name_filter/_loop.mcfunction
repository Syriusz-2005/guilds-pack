

# Check if list has any elements
execute if data storage guilds:temp_guild_filter_cache guild_store_copy.guild_list[0] run function guilds:guild_filters/name_filter/loop_checks
execute unless data storage guilds:temp_guild_filter_cache guild_store_copy.guild_list[0] run data remove storage guilds:temp_guild_filter_result return