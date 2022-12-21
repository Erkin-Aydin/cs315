// This function borrows a slice
fn analyze_slice(slice: &[i32]) {
    println!("first element of the slice: {}", slice[0]);
    println!("the slice has {} elements", slice.len());
}

fn main() {
    // Fixed-size array (type signature is superfluous)
    let xs: [i32; 5] = [1, 2, 3, 4, 5];

    // All elements can be initialized to the same value
    let ys: [i32; 500] = [3; 500];
    // Indexing starts at 0
    println!("first element of the array: {}", xs[0]);
    println!("second element of the array: {}", xs[1]);

    // `len` returns the size of the array
    println!("array size: {}", xs.len());

    let zs = (0u32..9).filter(|x| x % 2 == 0).map(|x| x.pow(2)).collect::<Vec<_>>();
    println!("zs is {:?}", &zs[..]);
    
    // Slice between 2 and 5
    let zs1 = &zs[2..5];
    println!("zs1 is {:?}", &zs1[..]);

    println!("borrow a section of the array as a slice");
    analyze_slice(&ys[1 .. 4]);
}
