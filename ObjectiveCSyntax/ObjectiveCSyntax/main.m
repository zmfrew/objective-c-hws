#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Typealias
        typedef NSString* (^StringBlock)(NSString*);
        
        // Blocks
        StringBlock printUniversalGreeting = ^(NSString *name) {
            return [NSString stringWithFormat:@"Welcome to Skull Island, %@.", name];
        };
        
        NSLog(@"%@", printUniversalGreeting(@"Zach"));
        
        // Capturing Values
        NSString *name = @"Finn";
        
        NSString* (^greetings)(void) = ^{
            return [NSString stringWithFormat:@"%@, go!", name];
        };
        NSLog(@"%@", greetings());
        
        // Modifying Values in a Block
        NSInteger __block number = 0;
        NSString* (^printMeaningOfLife)(void) = ^{
            number = 42;
            return [NSString stringWithFormat:@"How many roads must a man walk down? %ld.", number];
        };
        NSLog(@"%@", printMeaningOfLife());
    }
    return 0;
}

/*
 int i = 10;
 if (i == 10) {
     NSLog(@"Hello, World!");
 }
 
 switch (i) {
     case 1 ... 9:
         NSLog(@"It's between 1 & 30!");
         break;
         
     case 10:
     {
         int foo = 1;
         NSLog(@"I need curly braces here in order to assign a new variable inside a switch case.");
     }
         
     case 11:
         NSLog(@"Or we can do it this way with another statement preceding the new variable.");
         int bar = 2;
         
     default:
         NSLog(@"It's something else");
 }
 
 NSString *str = @"Reject common sense to make the impossible possible!";
 
 NSArray *names = @[@"Laura", @"Janet", @"Kim"];
 for (NSString *name in names) {
     NSLog(@"Hello, %@", name);
 }
 
 */
