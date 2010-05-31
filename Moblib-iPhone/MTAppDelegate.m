//
//  moblib_iPhoneAppDelegate.m
//  moblib.iPhone
//
//  Created by Jesus Fernandez on 8/1/09.
//  Copyright Jesus Fernandez 2009. All rights reserved.
//

#import "MTAppDelegate.h"
#import "MainViewController.h"
#import "MTFeedbackViewController.h"

@implementation MTAppDelegate

@synthesize window;
@synthesize mainViewController;

- (void)applicationDidFinishLaunching:(UIApplication *)application {

	//improve performance for demo by having the controller in memory
	[MTFeedbackViewController sharedFeedbackController];
	
	MainViewController *aController = [[MainViewController alloc] initWithNibName:@"MainView" bundle:nil];
	self.mainViewController = aController;
	[aController release];
	
    mainViewController.view.frame = [UIScreen mainScreen].applicationFrame;
	[window addSubview:[mainViewController view]];
    [window makeKeyAndVisible];
	
}

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application{
	[MTFeedbackViewController finalize];
}

- (void)applicationWillTerminate:(UIApplication *)application{
	[MTFeedbackViewController finalize];
}

#pragma mark MTUIApplicationDelegate
- (void)statusBarTouched{
	[[MTFeedbackViewController sharedFeedbackController] present];
}


- (void)dealloc {
    [mainViewController release];
    [window release];
    [super dealloc];
}

@end
