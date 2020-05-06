#import "SFQuote.h"

@implementation SFQuote

- (instancetype)initWithLine:(NSString *)line {
    if (self = [super init]) {
        NSArray *split = [line componentsSeparatedByString:@"/"];
        
        if ([split count] != 2) {
            return nil;
        }
        
        self.text = split[0];
        self.person = split[1];
    }
    
    return self;
}

@end
