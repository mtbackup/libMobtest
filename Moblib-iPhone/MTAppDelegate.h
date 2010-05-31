//
//  moblib_iPhoneAppDelegate.h
//  moblib.iPhone
//
//  Created by Jesus Fernandez on 8/1/09.
//  Copyright Jesus Fernandez 2009. All rights reserved.
//

#import "MTUIApplication.h"
@class MainViewController;

@interface MTAppDelegate : NSObject <UIApplicationDelegate, MTUIApplicationDelegate> {
    UIWindow *window;
    MainViewController *mainViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) MainViewController *mainViewController;

@end

