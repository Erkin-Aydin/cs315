function foo1() {
  var lcl = 5;  // local to foo1
  glb = 7;      // global
  console.log("In foo1, lcl="+ lcl + ", glb="+glb);
}

function foo2() {
  var lcl = 3;  // local to foo2
  console.log("In foo2, lcl="+ lcl + ", glb="+glb);
}

foo1()
foo2()
