#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person = [[Person alloc] initWithName:@"Zach"];
        [person printGreeting];
    }
    return 0;
}
