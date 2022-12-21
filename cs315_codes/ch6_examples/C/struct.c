#include <stdio.h>
#include <string.h>

struct person {
  char name[50];
  int age;
  float salary;
};

int main() {

  struct person person1, person2, person3[20];

  printf("Size of name in person is %d\n", sizeof(person1.name));
  printf("Size of age  in person is %d\n", sizeof(person1.age));
  printf("Size of salary in person is %d\n", sizeof(person1.salary));
  // if there are more than 1 fields 
  //compilers put padding to make the size of whole struct a multiple of 4 bytes
  printf("Size of person is %d\n", sizeof(person1));

  strcpy(person1.name, "Ahmet");
  person1.age = 21;
  person1.salary = 4567.89;

  person2 = person1; // contents of person1 are copied to person2

  printf("Person2: Name=%s, Age=%d, Salary=%f\n", 
	 person2.name, person2.age, person2.salary);
  person2.age= 22;
  printf("Person2: Name=%s, Age=%d, Salary=%f\n", 
	 person2.name, person2.age, person2.salary);
  printf("Person1: Name=%s, Age=%d, Salary=%f\n", 
	 person1.name, person1.age, person1.salary);
  return 0;
}
