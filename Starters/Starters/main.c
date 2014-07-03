
//
//  main.c
//  Starters
//
//  Created by Byrdann Fox on 6/25/14.
//  Copyright (c) 2014 ExcepApps. All rights reserved.
//

// PRINTF FUNC...
#include <stdio.h>
// BOOL FUNC...
#include <objc/objc.h>

// THIS IS A WONDERFUL EXAMPLE OF HOW ALGORITHMS CAN BE UTILIZED IN A SIMPLE ASS LANGUAGE SUCH AS C AND EXTENDED WITH OBJECT-ORIENTED PROGRAMMING CAPABILITES WITH OBJECTIVE-C AND SUPERCHARGED AND MONDERNIZED WITH SWIFT...
// IN C WRITE FUNCTIONS OUTSIDE OF THE MAIN FUNCTION AT THE TOP OF THE FILE...
// WHY AM I POINTING TO CHARS???

// WHILE STUDYING JAVA FOR PRINCIPLES OF COMPUTER SCIENCE AND FOR ALGORITHMS...

int euclidAlgo(int p, int q)

{
    
    if (q == 0) return p && printf("%d\n", p);
    int r = p % q;
    printf("%d\n", euclidAlgo(q, r));
    return euclidAlgo(q, r);
    
}

int main(int argc, const char * argv[]) {

    /* PROGRAM 1 */
    
    // this function was defined in the stdio.h library...
    printf("Objective-C is still important and will help me learn Swift!\n");
    
    /* PROGRAM 2 */
    
    float weight;
    
    weight = 14.2;
    
    printf("The package weights %f pounds.\n", weight);
    
    float deliveryTime;
    
    deliveryTime = 15.0 + 15.0 * weight;
    
    // @ is for objective-c only! =0...
    printf("Here's the fucking delivery time: %f.\n", deliveryTime);
    
    float floatOne = 3.14;
    float floatTwo = 42.0;
    
    double doubleSum = floatOne + floatTwo;
    
    printf("Here's the doubleSum value: %f\n", doubleSum);
    
    /* PROGRAM 3 */
    
    // BOOL flaseNess = false;
    // BOOL trueNess = true;
    // what's %hhd?
    // printf("%hhd %hhd\n", flaseNess, trueNess);
    
    // KIND OF A TRICK OF SIGHT...
    // WHEN YOU SEE VARIABLES, YOU CAN ARTICULATE THAT THEY ARE EITHER EMPTY OR IN FACT HAVE FUCKING VALUES INSIDE OF THEM...
    // IT IS ALSO IMPORTANT TO NOTE THAT YOU CAN ASSUME THAT ANY CONDITION THAT THEY ARE APART OF WILL HAVE A RETURN VALUE...
    // AN EXAMPLE OF THIS IS: J = 23 AND X = 234. J > X HAS A RETURN VALUE THAT MAKES SENSE TO THE COMPILER OR THE INTERPRETER...
    // 0 AND 1 FOR C BASED LANGUAGES OR A PROPER BOOL VALUE SUCH AS TRUE OR FALSE...
    int x = 23;
    int y = 24;
    printf("%d %d are the numbers that are on my mind...\n", x, y);
    // printf("%d\n", (x < y) ? true : false);
    printf("%d\n", (x > y) ? 1 : 0);
    // TRUE : FALSE...
    printf("%s\n", (x > y) ? "True" : "False");
    
    euclidAlgo(3, 0);
    
    // it means that no errors have occured...
    // a.k.a. success...
    return 0;
    
}
