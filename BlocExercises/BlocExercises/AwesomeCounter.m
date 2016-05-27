//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    
    NSInteger lowNumber;
    NSInteger highNumber;
    NSString *equalNumber;
    
    if (number < otherNumber) {
        lowNumber = number;
        highNumber = otherNumber;
    } else if (otherNumber < number) {
        highNumber = number;
        lowNumber = otherNumber;
    } else if (number == otherNumber) {
        equalNumber = [NSString stringWithFormat:@"%ld", (long)lowNumber];
    }
    
    NSMutableString *output = [NSMutableString string];
    
    for (NSInteger i = lowNumber; i <= highNumber; i++) {
        [output appendFormat:@"%ld", i];
    }
    
    
    return output;
}

@end
