#import "SquareDecomposer.h"

@implementation SquareDecomposer
- (NSArray <NSNumber*>*)decomposeNumber:(NSNumber*)number {
    // good luck
    // good luck
    if (!number || ![number integerValue]) { return nil; }
    NSArray *itsNumber = [self
                          decomposer:[number integerValue]
                          stay:[number integerValue] * [number integerValue]
                          ];
    return [itsNumber subarrayWithRange:NSMakeRange(0, [itsNumber count] - 1)];
}

- (NSArray<NSNumber *> *)decomposer:(NSInteger)n stay:(NSInteger)stay2 {
    if (!stay2) { return @[@(n)]; }
    
    for (NSInteger i = n - 1; i > 0; i--) {
        if ((stay2 - i * i) < 0) { continue; };
        NSArray *result = [self decomposer:i stay:stay2 - i * i];
        if (result) { return [result arrayByAddingObject:@(n)]; }
    }
    
    return nil;
}

@end
