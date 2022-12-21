x=5;

function foo () {

  console.log("in foo, x="+x);

  x = 7;
  console.log("in foo, x="+x);

  let x; // local variable x is defined at the end of the function definition !
         // Hoisting: all let declaration are executed as the first statements of their scope.
         // but are NOT initialized
}

foo();
console.log("in global x="+x);