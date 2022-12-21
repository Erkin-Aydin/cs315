function foo (x) {
    console.log("in foo, x=" + x + ", a=" + a);
    return 2*x;
}
a = 12;
console.log("The value of a is " + a);
console.log("foo returns " + foo(a + 3));
