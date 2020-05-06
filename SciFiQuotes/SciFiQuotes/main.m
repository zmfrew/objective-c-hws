#import <Foundation/Foundation.h>
#import "SFApp.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDesktopDirectory, NSUserDomainMask, YES);
        NSString *desktopPath = [paths objectAtIndex:0];
        SFApp *app = [[SFApp alloc] initWithFile:[desktopPath stringByAppendingPathComponent:@"quotes.txt"]];
        [app printQuote];
    }
    return 0;
}

/*
 Copy & paste the following text in a "quotes.txt" file, and save on your desktop prior to running.
 
 In my experience, there is no such thing as luck./Obi-Wan Kenobi
 Do what I do: hold tight and pretend it’s a plan!/The Doctor
 The needs of the many outweigh the needs of the few./Spock
 If we’re going to be damned, let’s be damned for what we really are./Jean-Luc Picard
 Do, or do not. There is no try./Yoda
 I swear by my pretty floral bonnet, I will end you./Malcom Reynolds
 */
