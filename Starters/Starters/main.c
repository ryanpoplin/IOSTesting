
//
//  main.c
//  Starters
//
//  Created by Byrdann Fox on 6/25/14.
//  Copyright (c) 2014 ExcepApps. All rights reserved.
//

#include <stdio.h>
#include <objc/objc.h>

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
    
    BOOL flaseNess = false;
    BOOL trueNess = true;
    // what's %hhd?
    printf("%hhd %hhd\n", flaseNess, trueNess);
    
    // it means that no errors have occured...
    // a.k.a. success...
    return 0;
    
}
