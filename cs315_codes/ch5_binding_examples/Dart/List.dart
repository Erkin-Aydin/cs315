main() {
  var x = [1,2,3];
  print( x is List ); // true
  print( x.first ); // 1
  print( x[2] ); // 3
  x.add(-3);
  print (x);
  print( x.length ); // 4
  	for(int i = 0; i < 4; i++) {
		print(x[i]); //1 2 3 -3
	} 

}
