#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property NSString *name;
- (instancetype)initWithName:(NSString*)name;
- (NSString*)fetchGreetingForTime:(NSString*)time;
@end

NS_ASSUME_NONNULL_END
