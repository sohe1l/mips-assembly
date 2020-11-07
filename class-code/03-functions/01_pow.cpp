//
// CSc 256 Example 4.1: Power function
// File: 4.1.cpp
// Name: William Hsu
// Date: 6/22/2010
// Description:  Computes x^p, y^q
//
// Compile: g++ 4.1.cpp
// Run: ./a.out


#include <iostream>
using namespace std;

int pow(int, int);

int main() {
  int x = 3, p = 4, y = 5, q = 6;
  int result;

  result = pow(x, p);
  cout << result << endl;

  result = pow(y, q);
  cout << result << endl;
}

int pow(int arg0, int arg1) {
  int product = 1;
  for (int i=0; i<arg1; i++) {
    product *= arg0;
  }
  return product;
}
