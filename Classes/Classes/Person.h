#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property NSString *name;

- (void)printGreeting;
- (void)printGreetingTo:(NSString*)name atTimeOfDay:(NSString*)time;
- (NSDictionary*)fetchGreetingTo:(NSString*)name atTimeOfDay:(NSString*)time;
+ (void)genericGreeting;
@end

NS_ASSUME_NONNULL_END
