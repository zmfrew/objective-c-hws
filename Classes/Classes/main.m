#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person = [Person new];
        person.name = @"Kim";
        [person printGreeting];
        [person performSelector:@selector(printGreetingTo:atTimeOfDay:) withObject:@"Taylor" withObject:@"morning"];
    }
    return 0;
}
