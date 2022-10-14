

## How to use our special functions with params and return values

1. Check the function definition for params that needs to be inserted into storage: `guilds:temp_guild_filter_params`
1. Insert those params into the storage
1. Run the function
1. Read the result from `guilds:temp_guild_filter_result` -> {return: your-result-is-here}


Example usage:
```
data modify storage guilds:temp_guild_filter_params guild_name set value <value>
function guilds:guild_filters/name_filter/run
data get storage guilds:temp_guild_filter_result return
```