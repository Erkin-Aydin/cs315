#include <iostream>
using namespace std;

int main(){

	float *floatnode;
	//allocation
	floatnode = new float;

	*floatnode = 5.7;
	cout << *floatnode << '\n';
	
	//deallocation
	delete floatnode; 
	cout << *floatnode << '\n';
}
