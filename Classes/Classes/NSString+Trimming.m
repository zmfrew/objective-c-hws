#import "NSString+Trimming.h"

@implementation NSString (Trimming)
- (NSString*)zf_stringByTrimming {
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}
@end
