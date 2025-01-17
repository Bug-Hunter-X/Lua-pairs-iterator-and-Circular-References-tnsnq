# Lua pairs iterator and Circular References

This repository demonstrates a potential issue with Lua's `pairs` iterator when dealing with tables containing circular references.  The `pairs` iterator does not detect these circular references, leading to infinite loops in recursive functions.

The `bug.lua` file contains a simple recursive function that demonstrates this problem.  The `bugSolution.lua` file offers a solution using a visited table to detect and prevent infinite loops.