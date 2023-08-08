#include<stdio.h>
#include <stdbool.h>

int main() {

// Variables used in other languages. 

    int testOfInt = 24;  // %d
    char testOfChar = 'a'; // %c
    char testOfString[] = "What is happening bro?"; // %s
    float testOfFloat = 3.14; // %f - 4 Bite
    double testOfDouble = 3.14159265358979323846; // %lf - 8 Bite    
    bool testOfBool = true; 
    
    int testOfVariable = 24;
    printf("This is a test on how you first"
    "declare the position of the variable here: %d"
    "and then you can call it again here: %d"
    "remember to declare the variable again"
    "if used multiple times, at the end.",
     testOfVariable, testOfVariable);


    return 0;
}
