//
//  Account.h
//  Login
//
//  Created by Jose Aguirre on 02/02/14.
//  Copyright (c) 2014 Jose Aguirre. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Account : NSObject
@property (strong, nonatomic) NSMutableArray* jsonArray;

- (NSNumber *) isLoginVisible;
- (void) saveLogin;
@end
