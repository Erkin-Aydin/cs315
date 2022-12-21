#include<stdio.h>
void assign1 (float matrix [][5], float val, int r, int c) {
   matrix[r][c] = val;
}

void assign2 (float *matrix, int num_cols, float val, int r, int c) {
  *(matrix +(r * num_cols) + c) = val;
}

void printarray(float *a, int r, int c) {
  int i;
  for (i = 0; i < r; i++) {
    int j;
    for (j = 0; j < c; j++)
      printf("%g ", *(a +i*c + j) );
    printf("\n");
  }
}

main() {
  float m1 [6][5], m2 [10][5];
  assign1 (m1, 1.2, 3, 4);
  printarray((float *)m1, 6, 5);

  assign1 (m2, 1.2, 3, 4);
  printarray((float *)m1, 6, 5);

  assign2 ((float *)m1, 5, 2.3, 3, 4);
  printarray((float *)m1, 10, 5);

  assign2 ((float *)m2, 5, 2.3, 3, 4);
  printarray((float *)m2, 10, 5);

}
