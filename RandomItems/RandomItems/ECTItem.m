//
//  ECTItem.m
//  RandomItems
//
//  Created by Byrdann Fox on 6/15/14.
//  Copyright (c) 2014 ExcepApps. All rights reserved.
//

#import "ECTItem.h"

@implementation ECTItem

// define the methods declared in .h...

-(void)setItemName:(NSString *)str
{
    _itemName = str;
}

-(NSString *)itemName
{
    return _itemName;
}

-(void)setSerialNumber:(NSString *)str
{
    _serialNumber = str;
}

-(NSString *)serialNumber
{
    return _serialNumber;
}

-(void)setValueInDollars:(int)v
{
    _valueInDollars = v;
}

-(int)valueInDollars
{
    return _valueInDollars;
}

-(NSDate *)dateCreated
{
    return _dateCreated;
}

// how to get a custom description...
// override superclass method...
-(NSString *)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@", self.itemName, self.serialNumber, self.valueInDollars, self.dateCreated];
    
    return descriptionString;
    
}

-(instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{

    // means that it's designated...
    self = [super init];
    if (self) {
        _itemName = name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        _dateCreated = [[NSDate alloc] init];
    }
    
    return self;
    
}

-(instancetype)initWithItemName:(NSString *)name
{
    
    return [self initWithItemName:name valueInDollars:0 serialNumber:@""];
    
}

-(instancetype)init
{

    return [self initWithItemName:@"Item"];

}

+ (instancetype)randomItem
{
    
    NSArray *randomAdjectiveList = @[@"Sexy", @"Loud", @"Tall"];
    
    NSArray *randomNounList = @[@"Truck", @"Fuck", @"Buck"];
    
    NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@", [randomAdjectiveList objectAtIndex:adjectiveIndex], [randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = arc4random() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c", 'O' + arc4random() % 10, 'A' + arc4random() % 26, 'O' + arc4random() % 10, 'A' + arc4random() % 26, 'O' + arc4random() % 10];
    
    ECTItem *newItem = [[self alloc] initWithItemName:randomName valueInDollars:randomValue serialNumber:randomSerialNumber ];
    
    return newItem;
    
}

@end
