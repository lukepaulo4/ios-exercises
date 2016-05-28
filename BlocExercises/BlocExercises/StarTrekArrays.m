//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays


- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    
    // The noted out code is what you originally had. Wrong! Don't need to create all this stuff, as it has already been done for you in the other method! Simplify your life one time...
    
    //characterString = @"Worf, son of Mogh, slayer of Gowron; Captain Jean-Luc Picard of the USS Enterprise; Beverly Crusher, Chief Medical Officer";
    //NSArray *charArray = [characterString componentsSeparatedByString:@"; "];
    //[charArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    
    NSArray *charArray = [characterString componentsSeparatedByString:@";"];
        return charArray;
    
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    
    NSString *array2String = [characterArray componentsJoinedByString:@";"];
    
    return array2String;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    
    NSMutableArray *charMuter = [characterArray mutableCopy];
    NSSortDescriptor *sortCharMuter = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [charMuter sortUsingDescriptors:@[sortCharMuter]];
    
    
    return charMuter;
    
    
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'Worf'"];
    [characterArray filteredArrayUsingPredicate:containsWorf];
    
    
    return YES;

}

@end
