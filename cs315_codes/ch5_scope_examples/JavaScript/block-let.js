x=5;
{  // let is block scoped
  let x = 3;
  console.log("x in the block: "+x);
}

console.log("x in global: "+x);
