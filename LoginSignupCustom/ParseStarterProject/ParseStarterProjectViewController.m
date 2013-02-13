#import "ParseStarterProjectViewController.h"
#import <Parse/Parse.h>

@implementation ParseStarterProjectViewController


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}


#pragma mark - UIViewController

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    // create the login view controller
    PFLogInViewController *logInViewController = [[PFLogInViewController alloc] init];
    [logInViewController setDelegate:self];
    // set up custom fields & options
    [logInViewController setFields:PFLogInFieldsUsernameAndPassword | PFLogInFieldsLogInButton | PFLogInFieldsTwitter];
    
    
    // create the signin view controller
    PFSignUpViewController *signUpViewController = [[PFSignUpViewController alloc] init];
    [signUpViewController setDelegate:self];
    
    // assign sign up controller to be displayed from the login controller
    [logInViewController setSignUpController:signUpViewController];
    
    // present the login view controller
    [self presentViewController:logInViewController animated:YES completion:NULL];
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
