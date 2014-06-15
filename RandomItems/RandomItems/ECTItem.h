//
//  ECTItem.h
//  RandomItems
//
//  Created by Byrdann Fox on 6/15/14.
//  Copyright (c) 2014 ExcepApps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ECTItem : NSObject

{
    // instance var convention...
    NSString *_itemName;
    NSString *_serialNumber;
    // primitive === no pointer...
    int _valueDollars;
    NSDate *_dateCreated;
    
}

@end
