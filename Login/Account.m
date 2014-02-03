//
//  Account.m
//  Login
//
//  Created by Jose Aguirre on 02/02/14.
//  Copyright (c) 2014 Jose Aguirre. All rights reserved.
//

#import "Account.h"

@implementation Account

@synthesize jsonArray;

- (id)init
{
    self = [super init];
    if (self) {
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"json"];
        NSError *error = nil;
        NSData *JSONData = [NSData dataWithContentsOfFile:filePath options:NSDataReadingMappedIfSafe error:&error];
        
        id JSONObject = [NSJSONSerialization JSONObjectWithData:JSONData
                                                        options:NSJSONReadingAllowFragments
                                                          error:&error];
        self.jsonArray = (NSMutableArray*) JSONObject;
    }
    return self;
}

- (NSNumber *) isLoginVisible{
 
    return [self.jsonArray valueForKey:@"login"];
}

- (void) saveLogin{
    
}

@end
