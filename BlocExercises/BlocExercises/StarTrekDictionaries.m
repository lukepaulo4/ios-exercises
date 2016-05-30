//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    
    return characterDictionary[@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    
    NSMutableArray *muteCharArray = [NSMutableArray array];
    
    for (NSDictionary *characterDictionary in charactersArray) {
        [muteCharArray addObject:characterDictionary[@"favorite drink"]];
    }
    return muteCharArray;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    
    NSMutableDictionary *addedDicQuote = [characterDictionary mutableCopy];
    addedDicQuote[@"quote"] = @"Deeper Corporal.";

    
    return addedDicQuote;
}

@end
