local function foo(t)
  for k, v in pairs(t) do
    if type(v) == "table" then
      foo(v)
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)

-- This code will not throw an error even if the table t contains a circular reference.
-- For example, if t.b.d.e points back to t, this code will enter an infinite loop. 