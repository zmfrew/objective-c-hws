#import "Person.h"

@implementation Person

- (void)printGreeting {
    NSLog(@"Hello, %@", self.name);
}

- (void)printGreetingTo:(NSString*)name atTimeOfDay:(NSString*)time {
    if ([time isEqualToString:@"morning"]) {
        NSLog(@"Good morning, %@", name);
    } else {
        NSLog(@"Good evening, %@", name);
    }
}

- (NSDictionary*)fetchGreetingTo:(NSString*)name atTimeOfDay:(NSString*)time {
    if ([time isEqualToString:@"morning"]) {
        return @{
            @"English": [NSString stringWithFormat:@"Good morning, %@", name],
            @"French": [NSString stringWithFormat:@"Bonjour, %@", name]
        };
    } else {
        return @{
            @"English": [NSString stringWithFormat:@"Good evening, %@", name],
            @"French": [NSString stringWithFormat:@"Bonsoir, %@", name]
        };
    }
}

+ (void)genericGreeting {
    NSLog(@"Greetings, earthlings.");
}
@end
