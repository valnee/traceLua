local function inspect(t)
  local values = {}
   for i,v in pairs(t) do
     if type(v) == "table" then
       table.insert(values, table.unpack(inspect(v)))
     else
       table.insert(values, v)
     end
   end
  return values
end

return function(f)
  return function(...)
    local t = {}
    local out = inspect({f(...)})
    print("Inputs: " .. tostring(...))
    print("Output:")
    for i,v in pairs(out) do
      print(i, v)
    end
    return out
  end
end
