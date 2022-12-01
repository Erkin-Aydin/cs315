import "dart:io";

void main() {
	//1)Initialize
	var assocArray = {
		'key1': 'val1',
		'key2': 'val2',
		'key3': 3
	};
	print("###################################");
	print("1)Initialize:");
	print(assocArray);
	print("###################################\n");
	
	//2)Get the value for a given key
	print("###################################");
	print("2)Get the value for a given key");
	print(assocArray['key1']);
	print(assocArray['key2']);
	print(assocArray['key3']);
	print(assocArray['newKey']);
	print("###################################\n");
	
	//3)Add a new element
	assocArray['newKey'] = 12;
	print("###################################");
	print("3)Array after adding a new element");
	print(assocArray);
	print("###################################\n");
	
	//4)Remove an element
	assocArray.remove("newKey");
	print("###################################");
	print("4)Array after removing \"newKey\"");
	print(assocArray);
	print("###################################\n");
	
	//5)Modify the value of an existing element
	assocArray['key1'] = 111;
	print("###################################");
	print("5)Array after modifying the value of key \"key1\"");
	print(assocArray);	
	print("###################################\n");	

	//6)Search for the existence of a key
	print("###################################");
	print("6)Search for the existence of keys");
	print("Looking for key \"key1\":" + assocArray.containsKey("key1").toString());
	print("Looking for key \"key2\":" + assocArray.containsKey("key2").toString());
	print("Looking for key \"key3\":" + assocArray.containsKey("key3").toString());
	print("Looking for key \"newKey\":" + assocArray.containsKey("newKey").toString());
	print("###################################\n");

	//7)Search for the existence of a value
	print("###################################");
	print("7)Search for the existence of values");
	print("Looking for value \"111\":" + assocArray.containsValue(111).toString());
        print("Looking for value \"val2\":" + assocArray.containsValue("val2").toString());
        print("Looking for value \"Val3\":" + assocArray.containsValue("Val3").toString());
        print("Looking for value \"aVal\":" + assocArray.containsValue("aVal").toString());
	print("###################################\n");	
	
	//8)Loop through an associative array, apply a function, called foo, which prints the key-value pairs
	print("###################################");
	print("8)Loop through an associative array, apply a function, called foo, which prints the key-value pairs");
	var keys = assocArray.keys;
        for(var key in keys) {
                foo(assocArray, key);
        }
}

void foo(var a, String key) {
	print("Key: " + key + ", Values: " + a[key].toString());
}
