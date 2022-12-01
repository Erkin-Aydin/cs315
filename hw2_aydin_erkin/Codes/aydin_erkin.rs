/* In rust, there is an infinite loop, called loop, in addition to for and while loops.
 * For this infinite loops, it is mandatory to use break&continue statements if we want to
 * exit the loop at some time. I wanted to use these infinite loops in my examples instead
 * of for and while loops.
 */
fn main() {
    
    println!("Break:");
    /*
     * In Rust, "break" statement can be used to terminate a loop. If I were not to
     * put the break statement, this infinite loop would print values infinitely. Since
     * we break out of the loop when i == 4, only values from 0 to 3 will be printed.
     */
    let mut i = 0;
    loop {
        println!("{}", i);
        i += 1;
        if i == 4 {
            break;
        }

    }

    println!("############################################");
    println!("Continue:");
    /*
     * In Rust, "continue" statement can be used to terminate a single iteration.
     * Since I use infinite loops, I also used a break statement in this example.
     * Values 1 and 3 will not be printed, as we skip the iteration before it reaches
     * the print statements if i == 1 or i == 3. Thus, values 0, 2, and 4 will be printed.
     */
    i = 0;
    loop {
        if i == 1 || i == 3 {
            i += 1;
            continue;
        }
        println!("{}", i);
        i += 1;
        if i == 5 {
            break;
        }
    }
    println!("############################################");
    println!("Break with Labels:");

    /*
     * In Rust, it is possible to use labeled break.
     * This example demonstrates how to use the "break" statement with labels in Rust.
     * Here, when j == 4, the outer loop will be terminated. Hence, the only value of i we
     * see printed is 0, as j == 4 is satisfied in the first iteration of the outer loop.
     */
    i = 0;
    'out_loop: loop {
        println!("i={}", i);
        let mut j = 0;
        loop {
            println!("   j={}", j);
            if j == 4 {
                break 'out_loop;
            }
            j += 1;
        }
        i += 1;//unreachable, as the outer loop will be retminated in the inner loop.
    }

    println!("############################################");
    println!("Continue with Labels:");

    /*
     * In Rust, it is possible to use labeled continue.
     * This example demonstrates how to use the "continue" statement with labels in Rust.
     * When i == 2, we terminate the rest of the iteration. Thus, we do not see any j value
     * being printed.
     */
    i = -1;
    'out_loop: loop {
        i += 1;
        println!("i={}", i);
        let mut j = 0;
        loop {
            if i == 2 {
                continue 'out_loop;
            }
            println!("   j={}", j);
            j += 1;
            //To terminate the inner loop
            if j == 4 {
                break;
            }

        }
        //To terminate the outer loop
        if i == 4 {
            break;
        }
    }    
}
