x=5;

function foo () {

  console.log("in foo, x="+x);

  x = 7;
  console.log("in foo, x="+x);

  var x; // local variable x is defined at the end of the function definition !
         // Hoisting: all var declaration are executed as the first statements of their scope.
         // and initialized to 'undefined'
}

foo();
console.log("in global x="+x);
