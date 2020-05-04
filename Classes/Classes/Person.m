#import "Person.h"

@interface Person () // This is called a class extension and is declaring a pseudo private property.
@property (copy) NSString *name;
@end

@implementation Person

@synthesize name = _name; // Xcode does this by default, but it is necessary to write custom getters and setters.

- (instancetype)initWithName:(NSString*)name {
    if (self = [super init]) {
        self.name = name;
    }
    
    return self;
}

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
