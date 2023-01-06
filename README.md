# traceLua
Simple trace table for Lua.


# How to use
```lua
local traceLua = -- require it here

local function t1(x)
    return x+1, x+2, x+3
end

local trace_function = traceLua(t1)
local trace_table = trace_function(1)
```
