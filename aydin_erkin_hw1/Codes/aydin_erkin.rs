use std::collections::HashMap;

fn main() {
    
    println!("###################################");
    println!("1)Initialize:");
    let mut assoc_array = HashMap::new();
    assoc_array.insert("key1", "val1");
    assoc_array.insert("key2", "val2");
    assoc_array.insert("key3", "val3");
    println!("{:?}", assoc_array);
    println!("###################################\n");

    println!("###################################");
    println!("2)Get the value for a given key:");
    println!("{}", assoc_array["key1"]);
    println!("{}", assoc_array["key2"]);
    println!("{}", assoc_array["key3"]);
    println!("###################################\n");

    println!("###################################");
    println!("3)Add a new element:");
    assoc_array.insert("key4", "val4");
    println!("{:?}", assoc_array);
    println!("###################################\n");
    
    println!("###################################");
    println!("4)Remove an element:");
    assoc_array.remove("key1");
    println!("{:?}", assoc_array);
    println!("###################################\n");

    println!("###################################");
    println!("5)Modify the value of an existing element:");
    assoc_array.insert("key2","VAL2");
    println!("{:?}", assoc_array);
    println!("###################################\n");

    println!("###################################");
    println!("6)Search for the existence of a key:");
    println!("{}", assoc_array.contains_key("key1"));
    println!("{}", assoc_array.contains_key("key2"));
    println!("###################################\n");

    println!("###################################");
    print!("7)Search for the existence of the value \"VAL2\": ");
    let values = assoc_array.values();
    let value_to_search_1 = "VAL2";
    let value_to_search_2 = "val2";
    let mut does_exist_1 = false;
    let mut does_exist_2 = false;
    for value in values {
        if value == &value_to_search_1 {
            does_exist_1 = true;
        }
        if value == &value_to_search_2 {
            does_exist_2 = true;
        }
    }
    println!("{}", does_exist_1);
    println!("Looking for the value \"val2\": {}", does_exist_2);
    println!("###################################\n");

    println!("###################################");
    println!("8)Loop through an associative array, apply a function, called foo, which simply prints the key-value pair ");
    for pair in assoc_array {
        foo(pair);
    }

    fn foo(pair: (&str, &str)) {
        println!("{:?}", pair);
    }
    println!("###################################\n");
}
