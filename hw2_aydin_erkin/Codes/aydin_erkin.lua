--[[Lua does have "break" statement but not "continue" statement.--]]

--The "break" statement can be used to terminate a loop. This example demonstrates
--how it works. There is a for loop iterating i values from 1 to ten and printing.
--After printing 4, since i == 4, if condition is satisfied and break is executed.
--Hence, values from 5 to 10 won't be printed.
--In Lua, the "break" can only appear as the last statement is its block, just like
--"return" statement. See here for more info: https://www.lua.org/pil/4.4.html . Thus,
--any statement coming after break would result in an error.
for i = 1,10, 1 do
	print(i)
	if(i == 4) then
		break
		--print("not valid")
	end
end

print("#######################################")

--It is not possible to use labeled exits in Lua. At least, not directly with "break"
--statement. A workaround is possible using boolean values and if conditions. To exit an
--outer loop, a boolean value can be updated in inner loop and then an if condition in
--the outer loop can be used.
check = false
for i = 1,10, 1 do
	print("i value:")
	print(i)
	print("printing j values:")
	for j = 1,5, 1 do
		print(j)
		if(i == 3) then
			check = true
			break
		end
	end
	if(check) then
		break
	end
end
