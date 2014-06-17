//
//  ECTItem.h
//  RandomItems
//
//  Created by Byrdann Fox on 6/15/14.
//  Copyright (c) 2014 ExcepApps. All rights reserved.
//

#import <Foundation/Foundation.h>

// CUSTOM CLASS...

@interface ECTItem : NSObject

{
    
    // instance var convention...
    // pointers to objects...
    NSString *_itemName;
    NSString *_serialNumber;
    // primitive === no pointer...
    int _valueInDollars;
    NSDate *_dateCreated;
    
}

// class meth...
+ (instancetype)randomItem;

// this be designated...
// inits...
// instance meths...
-(instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber;

-(instancetype)initWithItemName:(NSString *)name;

-(instancetype)initCustom:(NSString *)name serialNumber:(NSString *)sNumber;

// instance meths...
// accessor methods...
// place the methods in memory...
-(void)setItemName:(NSString *)str;
-(NSString *)itemName;
// setter?
-(void)setSerialNumber:(NSString *)str;
// getter?
-(NSString *)serialNumber;
-(void)setValueInDollars:(int)v;
-(int)valueInDollars;
-(NSDate *)dateCreated;

@end
