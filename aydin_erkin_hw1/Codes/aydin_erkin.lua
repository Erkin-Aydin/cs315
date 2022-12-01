--[[ 1)Initialize  --]]
print("1)Initialize")
assocArray = { key1 = 1, key2 = 2, key3 = 3}

--[[ 2)Get the value for a given key  --]]
print("###############################")
print("2)Get the value for a given key")
print(assocArray.key1)
print(assocArray["key1"])
print(assocArray.key2)
print(assocArray["key2"])
print(assocArray.key3)
print(assocArray["key3"])

--[[ 3)Add a new element  --]]
print("###############################")
print("3)Add a new elemet")
assocArray["key4"] = "val4"
print(assocArray["key4"])

--[[ 4)Remove an element, let's say, key2  --]]
print("###############################")
print("4)removing\"key2\":")
assocArray["key2"] = nil
print(assocArray["key2"])

--[[ 5)Modify the value of an existing element  --]]
print("###############################")
print("5) Modifying the value of \"key1\" to \"val1\":")
assocArray.key1 = "val1"
print(assocArray.key1)

--[[ 6)Search for the existence of a key  --]]
print("###############################")
print("6)Seaching for the existence of \"key1\" and \"key2\":")
print(assocArray.key1 ~= nil)
print(assocArray.key2 ~= nil)


--[[ 7)Search for the existence of a value  --]]
print("###############################")
print("7)Search for the existence of \"val1\" and \"val2\"")
doesVal1Exist = false;
doesVal2Exist = false;
for key,value in pairs(assocArray) do
	if(value == "val1") then
		doesVal1Exist = true;
	end
	if(value == "val2") then
                doesVal2Exist = true;
        end
end
print(doesVal1Exist)
print(doesVal2Exist)

--[[ 8)Loop through an associative array, apply a function, called foo, which simply prints the key-value pair  --]]
print("###############################")
print("8)Loop through an associative array, apply a function, called foo, which simply prints the key-value pair")
function foo(key, value)
        print("Key: " .. key .. ", Value: " .. value)
end

for key,value in pairs(assocArray)  do
	foo(key, value)
end
