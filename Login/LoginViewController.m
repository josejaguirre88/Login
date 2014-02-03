//
//  LoginViewController.m
//  Login
//
//  Created by Jose Aguirre on 02/02/14.
//  Copyright (c) 2014 Jose Aguirre. All rights reserved.
//

#import "LoginViewController.h"
#import "AppDelegate.h"
#import "ViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginClick:(id)sender{
    AppDelegate  *appDelegate = [[UIApplication sharedApplication] delegate];
    UIStoryboard *mainstoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController* viewController = [mainstoryboard instantiateViewControllerWithIdentifier:@"Main"];
    appDelegate.window.rootViewController = viewController;
}


- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [[self view] endEditing:YES];
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

@end
