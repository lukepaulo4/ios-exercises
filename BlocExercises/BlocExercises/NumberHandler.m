//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    int doubleNumber = [number intValue] * 2;
    NSNumber *doubled = [NSNumber numberWithInt:doubleNumber];
    
    return doubled;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    if (number == otherNumber) {
        return @[@(number)];
    }
    
    NSInteger lowNumber;
    NSInteger highNumber;
    
    if (number < otherNumber) {
        lowNumber = number;
        highNumber = otherNumber;
    } else {
        lowNumber = otherNumber;
        highNumber = number;
    }
    
    NSMutableArray *mfinArray = [NSMutableArray array];
    
    for (NSInteger i = lowNumber; i <= highNumber; i++) {
        [mfinArray addObject:@(i)];
        
    }
    
    return mfinArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    NSInteger littleGuy = NSIntegerMax;
    
    for (NSNumber *number in arrayOfNumbers) {
        NSInteger numInArray = [number integerValue];
        
        if (numInArray < littleGuy) {
            littleGuy = numInArray;
        }
    }
    
    return littleGuy;
    
}

@end
