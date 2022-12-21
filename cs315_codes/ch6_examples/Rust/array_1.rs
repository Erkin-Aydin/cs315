fn main() {
    // Fixed-size array (type signature is superfluous)
    let xs: [i32; 5] = [1, 2, 3, 4, 5];

    println!("{:?}",xs);

    let ys: [i32; 15] = [7; 15];

    println!("{:?}",ys);
}
