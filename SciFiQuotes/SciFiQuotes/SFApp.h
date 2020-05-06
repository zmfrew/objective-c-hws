#import <Foundation/Foundation.h>
#import "SFQuote.h"

NS_ASSUME_NONNULL_BEGIN

@interface SFApp : NSObject

@property NSMutableArray<SFQuote *> *quotes;
- (instancetype)initWithFile:(NSString*)path;
- (void)printQuote;

@end

NS_ASSUME_NONNULL_END
