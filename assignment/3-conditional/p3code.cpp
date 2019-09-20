#include <iostream>

using namespace std;



int main(void)
{

	int a = 5;
	int b = 6;
	int c = 7;
	int d;

	d = -1;

	if ( a < 10){
		a++;
	}else{
		a--;
	}

	d = a + c;
	c = a + d;

	if( b < 10 ) {
		b++;
		c--;
	}else{
		b--;
		c++;
	}

	a = c + b;
	b = c + d;

	if(b < c && b > a){
		d = a + b;
	}else if (b > c || c < a){
		d = b + c;
	}

	cout << "Value of a: " << a << endl;
	cout << "Value of b: " << b << endl;
	cout << "Value of c: " << c << endl;
	cout << "Value of d: " << d << endl;
	return 0;
}

