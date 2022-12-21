#include <iostream>
using namespace std;

void assign (float **matrix, int num_cols, float val, int r, int c) {
  *(matrix +(r * num_cols) + c) = val;
}

int main() {
    int arr[2][2] = {{1,2},{3,4}};
    assign(arr, 2, 5, 1, 1);
    cout << arr[1][1] << "\n";
}