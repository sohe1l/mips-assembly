#include <iostream>

using namespace std;



int main(void)
{
	int w = -1;
	int x = 0;
	int y = 10;
	int z = 5;

	while(x < y)
	{
		cout << x << endl;
		z = z + w;
		w = x + y; 
		x++;
	}
	cout << endl;
	cout << w << endl;
	cout << x << endl;
	cout << y << endl;
	cout << z << endl;
	return 0;
}
