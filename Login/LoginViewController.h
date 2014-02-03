//
//  LoginViewController.h
//  Login
//
//  Created by Jose Aguirre on 02/02/14.
//  Copyright (c) 2014 Jose Aguirre. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController<UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField * userTextField;
@property (strong, nonatomic) IBOutlet UITextField * pwdTextField;
@end
