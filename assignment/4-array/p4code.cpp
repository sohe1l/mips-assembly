#include <iostream>

using namespace std;



int main(void)
{

	int sum = 0;
	int size = 10;
	int sumarr[] = {1,3,44,66,88,90,9,232,4325,2321};
	for(int i = 0; i < size; i++){
		sum = sum + sumarr[i];
	}

	int num = 45689;
	int rev = 0;
	int d = -1;
	while( num > 0){
		d = num % 10;
		rev = rev*10 + d;
		num = num / 10;
	}

	int arr[] = {1,2,3,4,5,4,3,2,1};
	int beg = 0;
	int end = 8;
	int isPalindrome = 1;
	while(beg < end){
		if (arr[beg] != arr[end]){
			isPalindrome = -1;
			break;
		}
		beg++;
		end--;

	}


	cout << "Sum: " << sum << endl;
	cout << "Reversed Number: " << rev << endl;
	cout << "Is Palindrome: " << isPalindrome << endl;
	return 0;
}
