
# Stack Implementation  

Implement a **basic stack** using an **array** to support the following operations:  

1) push (option 1)  
2) pop (option 2)  
3) find max (option 3)  
4) rotate (option 4)  
5) ending the program (option 0)  

## Project Description:  

In this project, you will be implementing a stack-like data structure using an array. You should use the starter code to begin your project. To make the memory management simpler, an array of 100 elements using the label *arr* is defined in the starter code.

The program should start by giving the user the following options:  
*Enter 1 to push, 2 to pop, 3 to find max, 4 to rotate, 0 to exit*  

Every option should be implemented in a separate function. If the user selects an invalid numeric option (for example 8), it should prompt "Invalid option".  
  
Every time the user enters an option:  

- It should run the operation  
- Print the result  
- Ask the user again for the next operation.  

Please note:
- If the array is empty and the user tries to run pop, max, or rotate it should print *Array is empty*.  
- The upper bound of 100 elements will not be tested.  
- For push, pop, rotate should print the whole array after running the operation.
- For max, it should print "Max is: *[num]*"  

## Grading:  

5 points - Implementing menu(main), exit and print_arr functions.  
5 points - Push operation  
5 points - Pop operation  
5 points - Max operation  
5 points - Rotate (bonus)  

## Submission:  

Copy and paste your final code as text in the submission area in ilearn.