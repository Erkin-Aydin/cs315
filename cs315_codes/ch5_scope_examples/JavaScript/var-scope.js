x = 1;
function foo() {
  var x = 3;  // try with/without "var"
  console.log("in foo, x="+x);
}
foo();
console.log("in global x="+x);
