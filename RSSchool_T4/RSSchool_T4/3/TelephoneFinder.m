#import "TelephoneFinder.h"

@implementation TelephoneFinder
- (NSArray <NSString*>*)findAllNumbersFromGivenNumber:(NSString*)number {
    NSDictionary *mydictionary = @{
                                   @"0": @[@"8"],
                                   @"1": @[@"2", @"4"],
                                   @"2": @[@"1", @"3", @"5"],
                                   @"3": @[@"2", @"6"],
                                   @"4": @[@"1", @"5", @"7"],
                                   @"5": @[@"2", @"4", @"6", @"8"],
                                   @"6": @[@"3", @"5", @"9"],
                                   @"7": @[@"4", @"8"],
                                   @"8": @[@"5", @"7", @"9", @"0"],
                                   @"9": @[@"6", @"8"],
                                   };
    int val = [number intValue];
    if (val < 0) {
        return nil;
    }
    NSMutableArray *result = [[NSMutableArray alloc] init];
    for (int i = 0 ; i < number.length; i++){
        NSRange range = NSMakeRange(i, 1);
        NSArray * dictionaryRefactor = [mydictionary valueForKey:[number substringWithRange:range]];
        for (int j = 0; j < dictionaryRefactor.count; j++){
            NSString * newDictionary = [number stringByReplacingCharactersInRange:range withString:dictionaryRefactor[j]];
            [result addObject:newDictionary];
        }
    }
    return result;
}

@end
