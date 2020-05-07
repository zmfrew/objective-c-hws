#import "SCApp.h"

@implementation SCApp

- (void)fetchCommitsForRepo:(NSString *)repo {
    NSString *urlString = [NSString stringWithFormat:@"https://api.github.com/repos/%@/commits", repo];
    NSURL *url = [NSURL URLWithString:urlString];
    NSError *error;
    NSData *data = [NSData dataWithContentsOfURL:url options:NSDataReadingUncached error:&error];
    
    if (error != nil) {
        NSLog(@"Fatal error 1: %@", [error localizedRecoverySuggestion]);
        exit(0);
    }
    
    NSArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    
    if (error != nil) {
        NSLog(@"Fatal error 2: %@", [error localizedDescription]);
        exit(0);
    }
    
    for (NSDictionary *entry in json) {
        NSString *name = entry[@"commit"][@"author"][@"name"] ?: @"No author found";
        NSString *message = entry[@"commit"][@"message"] ?: @"No commit message found";
        
        message = [message stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
        
        printf("%s: %s\n\n", [name cStringUsingEncoding:NSUTF8StringEncoding], [message cStringUsingEncoding:NSUTF8StringEncoding]);
    }
}

@end
