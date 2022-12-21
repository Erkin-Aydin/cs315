#include <stdio.h>
#include <string.h>

struct full_name {
  char first[25];
  char last[25];
};
struct person {
  struct full_name name;
  int age;
  float salary;
};

int main() {
  struct person person1, person2, person3[20];
  strcpy(person1.name.first, "Ahmet");
  strcpy(person1.name.last, "Yilmaz");
  person1.age = 21;
  person1.salary = 4567.89;
  person2 = person1;
  printf("Person2: Name=%s, Age=%d, Salary=%f\n", person2.name.first, person2.age, person2.salary);
  person2.age= 22;
  printf("Person2: Name=%s, Age=%d, Salary=%f\n", person2.name.first, person2.age, person2.salary);
  printf("Person1: Name=%s, Age=%d, Salary=%f\n", person1.name.first, person1.age, person1.salary);
  return 0;
}
