// Example program
#include <iostream>
#include <string>

using namespace std;

int main()
{
    cout << "********** EXAMPLE 1 ********** \n";
    int number = 1234;
    cout << "Size of single number in byte: " << sizeof(number) << "\n"; // 4 bytes

    // using num array
    int nums [5] = { 10, 20, 30, 40, 50 }; 
    int* pint = nums; // pint referencing to first element
    
    cout << "Size of nums array in byte: " << sizeof(nums) << "\n"; // 20 bytes (4 * 5 elements)
    cout << "Size of dereferenced nums in byte: " << sizeof(*pint) << "\n"; // 4 byte
    cout << "Size of pointer in byte: " << sizeof(pint) << "\n\n"; // 8 bytes

    cout << "Memory address of first 3 elements of the array " << "\n";
    cout << &nums[0] << "\n";
    cout << &nums[1] << "\n";
    cout << &nums[2] << "\n\n";
    

    cout << pint  << "\n"; // memory address
    cout << *pint << "\n"; // 10
    pint ++;
    (*pint)++;
    cout << pint  << "\n"; // memory address + 4 bytes
    cout << *pint << "\n\n"; // 21

    
    cout << "********** EXAMPLE 2 ********** \n";
    // Test with char 
    char character = 'a';
    cout << "Size of single char in byte: " << sizeof(character) << "\n"; // 1 bytes

    // using char array
    char chars [5] = { 'a', 'b', 'c', 'd', '\0' }; 
    char* pchar = chars; // pint referencing to first element
    
    cout << "Size of chars array in byte: " << sizeof(chars) << "\n"; // 5 bytes (1 * 5 elements)
    cout << "Size of dereferenced nums in byte: " << sizeof(*pchar) << "\n"; // 4 byte
    cout << "Size of pointer in byte: " << sizeof(pchar) << "\n\n"; // 8 bytes

    cout << "Memory address of first 3 elements of the array " << "\n";
    cout << (int*) &chars[0] << "\n";
    cout << (int*) &chars[1] << "\n";
    cout << (int*) &chars[2] << "\n\n";
    

    cout << (int*) pchar  << "\n"; // memory address
    cout << *pchar << "\n"; // a
    pchar ++;
    (*pchar)++;
    cout << (int*) pchar  << "\n"; // memory address + 1 bytes
    cout << *pchar << "\n\n"; // b+1=c
    cout << "String is now: " << chars << "\n\n";


    cout << "********** EXAMPLE 3 ********** \n";
    int numArray [5] = { 1094861636, 1, 2, 3, 4 }; // 0x41424344 
    char* ptr = (char*) numArray; // pint referencing to first element
    
    cout << "Address of numArray " << numArray << "\n";
    cout << "Address of ptr " << (int*) ptr << "\n";
    cout << *ptr << "\n";
    ptr++;
    cout << *ptr << "\n";
    ptr++;
    cout << *ptr << "\n";
    ptr++;
    cout << *ptr << "\n";
    cout << (int*) *ptr << "\n";

    ptr++;
    cout << *ptr << "\n";
    cout << (int*) *ptr << "\n";




}
