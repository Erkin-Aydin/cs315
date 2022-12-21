function foo() {
  console.log("in foo !");
  return true;
}

var a;             // undefined (falsy value)
var b = null;      // null (falsy value)
var c = undefined; // undefined (falsy value)
var d = 0;         // 0 (falsy value)
var e = '';        // empty string (falsy value)
var f = 4;         // number (truthy value)
var g = 'five';    // non-empty string (truthy value)


var x = a || b || c || d || e || !f || !g || foo();

console.log("x="+x);
