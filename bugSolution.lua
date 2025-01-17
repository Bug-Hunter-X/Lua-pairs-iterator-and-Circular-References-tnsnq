local function foo(t, visited)
  visited = visited or {}
  if visited[t] then
    return
  end
  visited[t] = true
  for k, v in pairs(t) do
    if type(v) == "table" then
      foo(v, visited)
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
-- Create a circular reference for demonstration
t.b.d.e = t

foo(t)

-- This version prevents an infinite loop by tracking visited tables.