//
//  main.m
//  RandomItems
//
//  Created by Byrdann Fox on 6/15/14.
//  Copyright (c) 2014 ExcepApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ECTItem.h"

int main(int argc, const char * argv[])

{

    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        [items insertObject:@"Zero" atIndex:0];
        
        // *item is local to the for loop scope...
        
        for (NSString *item in items) {
            
            NSLog(@"%@", item);
            
        }
        
        // alloc memory on the heap and init to null, etc...
        
        // ECTItem *item = [[ECTItem alloc] init];
        
        // explicit message...
        // required syntax for method calls...
        // old syntax style...
        /*[item setItemName:@"MacBook Air"];
        [item setSerialNumber:@"A1B2c"];
        [item setValueInDollars:1200];*/
        
        // int value = [item valueInDollars];
        // NSLog(@"%d", value);
        
        /*int secondValue = item.valueInDollars;
        NSLog(@"%d", secondValue);*/
        
        // will be replaced by the designated init...
        /*item.itemName = @"MacBook Air";
        item.serialNumber = @"A1B2C";
        item.valueInDollars = 1200;*/
        
        // the inits. are working...
        
        ECTItem *item = [[ECTItem alloc] initWithItemName:@"MacBook Air" valueInDollars:1200 serialNumber:@"A1B2C"];
        
        // ordered by the logging/I/O, etc...
        // old syntax style...
        /*NSLog(@"%@ %@ %@ %d", [item itemName], [item dateCreated], [item serialNumber], [item valueInDollars]);*/
        
        // NSLog(@"%@ %@ %@ %d", item.itemName, item.dateCreated, item.serialNumber, item.valueInDollars);
        
        NSLog(@"%@", item);
        
        // erase from memory...
        // Where's the ARC???
        
        ECTItem *itemWithName = [[ECTItem alloc] initWithItemName:@"MacBook Air"];
        NSLog(@"%@", itemWithName);
        
        // from superclass NSObject...
        ECTItem *itemWithNoName = [[ECTItem alloc] init];
        NSLog(@"%@", itemWithNoName);
        
        items = nil;
        
    }
    
    return 0;
    
}
