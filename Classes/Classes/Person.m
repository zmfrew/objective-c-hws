#import "Person.h"

@interface Person () // This is called a class extension and is declaring a pseudo private property.
@property (copy) NSString *name;
@end

@implementation Person

@synthesize name = _name; // Xcode does this by default, but it is necessary to write custom getters and setters.

- (void)printGreeting {
    self.name = @"Kim";
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
