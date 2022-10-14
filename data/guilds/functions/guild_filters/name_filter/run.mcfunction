# params in the storage: {guild_name: "<searched_name>"}
# returns the guild storage

# At first we MUST clear the return results
data remove storage guilds:temp_guild_filter_result return

# Caching all guilds, so we can remove elements in order for checking
data modify storage guilds:temp_guild_filter_cache guild_store_copy set from storage guilds:guild_store

function guilds:guild_filters/name_filter/_loop

