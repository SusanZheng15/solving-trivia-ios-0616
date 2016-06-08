//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSString *)solveTrivia
{
    NSDictionary *statesAndCapitals = @{@"Alabama": @"Montgomery",
                                        @"Alaska": @"Juneau",
                                        @"Arizona": @"Phoenix",
                                        @"Arkansas": @"Little Rock",
                                        @"California": @"Sacramento",
                                        @"Colorado": @"Denver",
                                        @"Connecticut": @"Hartfort",
                                        @"Delaware": @"Dover",
                                        @"Florida": @"Tallahassee",
                                        @"Georgia": @"Atlanta",
                                        @"Hawaii": @"Honolulu",
                                        @"Idaho": @"Boise",
                                        @"Illinois": @"SpringField",
                                        @"Indiana": @"Indianapolis",
                                        @"Iowa": @"Des Moines",
                                        @"Kansas": @"Topeka",
                                        @"Kentucky": @"Frankfort",
                                        @"Louisiana": @"Baton Rouge",
                                        @"Maine": @"Augusta",
                                        @"Maryland": @"Annapolis",
                                        @"Massachusetts": @"Boston",
                                        @"Michigan": @"Lansing",
                                        @"Minnesota": @"St. Paul",
                                        @"Mississippi": @"Jackson",
                                        @"Missouri": @"Jefferson City",
                                        @"Montana": @"Helena",
                                        @"Nebraska": @"Lincoin",
                                        @"Nevada": @"Carson City",
                                        @"New Hampshire": @"Concord",
                                        @"New Jersey": @"Trenton",
                                        @"New Mexico": @"Santa Fe",
                                        @"New York":@"Albany",
                                        @"North Carolina": @"Raleigh",
                                        @"North Dakota": @"Bismarck",
                                        @"Ohio": @"Columbus",
                                        @"Oklahoma": @"Oklahima City",
                                        @"Oregon": @"Salem",
                                        @"Pennsylvania": @"Harrisburg",
                                        @"Rhode Island": @"Providence",
                                        @"South Carolina": @"Columbia",
                                        @"South Dakota": @"Pierre",
                                        @"Tennessee": @"Nashville",
                                        @"Texas": @"Austin",
                                        @"Utah": @"Salt Lake City",
                                        @"Vermont": @"Montpelier",
                                        @"Virginia": @"Richmond",
                                        @"Washington": @"Olympia",
                                        @"West Virginia": @"Charleston",
                                        @"Wisconsin":@"Madison",
                                        @"Wyoming": @"Cheyenne"};
    
    
    for (NSString *state in statesAndCapitals)
    {
        NSString *formattedState = [[state lowercaseString] stringByReplacingOccurrencesOfString:@" " withString:@""];
        NSString *formattedCapital = [[statesAndCapitals[state] lowercaseString] stringByReplacingOccurrencesOfString:@" " withString: @""];
        //NSLog(@"%@", formattedState);
        //NSLog(@"%@", formattedCapital);
        NSString *charState = formattedState;
    
        for (NSUInteger i = 0; i < [formattedCapital length]; i++)
        {
            NSString *character = [NSString stringWithFormat:@"%c", [formattedCapital characterAtIndex:i]];
            charState = [charState stringByReplacingOccurrencesOfString:character withString:@""];
        }

        if ([formattedState isEqual:charState])
        {
            return state;
        }
    
    }
    return @"*party-parrot-shuffle*";
}
@end
