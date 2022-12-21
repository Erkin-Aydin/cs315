#include <iostream>
using namespace std;

int main(){
	//allocation
	int *x = new int;
	*x = 5;
	cout << "*x is " << *x << "\n\n";

	//deallocation
	delete x;
	cout << "x is deleted\n";
	cout << "*x is "<< *x << '\n';
	cout << "x is " << x << "\n\n";
	*x = 7;
	cout << "*x is "<< *x << "\n\n";

	//allocation
	int *y = new int;
	*y = 9;
	cout << "*y is "<< *y << "\n\n";
	cout << "*x is "<< *x << "\n\n";

	//deallocation
	delete y;
} // main
