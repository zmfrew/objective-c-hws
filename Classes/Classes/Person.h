#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
- (instancetype)initWithName:(NSString*)name;
- (void)printGreeting;
@end

NS_ASSUME_NONNULL_END
