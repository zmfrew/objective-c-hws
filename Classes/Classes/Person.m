#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString*)name {
    if (self = [super init]) {
        self.name = name;
    }
    
    return self;
}

- (NSString*)fetchGreetingForTime:(NSString *)time {
    return [NSString stringWithFormat:@"Good %@, %@!", time, self.name];
}

@end
