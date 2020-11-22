
# Stack Implementation  

In MIPS, the content of the stack gets stored in memory, and the $sp (stack pointer) register is used to track the top of the stack. However, having a specific register as a stack pointer limits us to having a single stack. 

In this project, we see how to create another stack backed by an array data structure in the memory.

Implement a **basic stack** using an **array** to support the following operations:  

1) push (option 1)  
2) pop (option 2)  
3) find max (option 3)  
4) rotate (option 4)  
5) ending the program (option 0)  

## Project Description:  

In this project, you will be implementing a stack-like data structure using an array. You should use the starter code to begin your project. To make the memory management simpler, an array of 100 elements using the label *arr* is defined in the starter code. For the purpose of this assignemnt, you should not worry about reaching to the 100 limit.

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
- Make a plan for how you are going to start coding this project. One suggestion would be to define each function to print a certain text and test them in main. Then implement the main loop for entering inputs and invoking each function. And then finally, implement each function.

## Grading:  

5 points - Implementing menu(main), exit.  
5 points - Implementing the print_arr function.
5 points - Push operation  
5 points - Pop operation  
5 points - Max operation  
10 points - Rotate (bonus)  

## Submission:  

Copy and paste your final code as text in the submission area in ilearn.