#import "Person.h"

@implementation Person

@synthesize name = _name; // Xcode does this by default, but it is necessary to write custom getters and setters.

- (void)printGreeting {
    NSLog(@"Hello, %@", self.name);
}

- (NSString*)name {
    NSLog(@"Reading name!");
    return _name;
}

- (void)setName:(NSString *)newName {
    NSLog(@"Writing name!");
    _name = newName;
}

@end
