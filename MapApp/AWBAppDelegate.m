//
//  AWBAppDelegate.m
//  MapApp
//
//  Created by Andrew Braunstein on 2/16/13.
//  Copyright (c) 2013 Andrew Braunstein. All rights reserved.
//

#import "AWBAppDelegate.h"

@implementation AWBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
  // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
  // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
  
  CLLocationManager * locationManager = [[AWBLocationManager sharedLocationManager] locationManager];
  [locationManager stopUpdatingLocation];
  
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
  // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
  // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
  // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
  // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
  if(CLLocationManager.locationServicesEnabled == NO){
    //It isn't enabled, fix in settings
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Location Services Not Enabled" message:@"Go to Settings -> Privacy and turn Location Services on to use this app." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
  } else {
    CLLocationManager * locationManager = [[AWBLocationManager sharedLocationManager] locationManager];
    [locationManager startUpdatingLocation];
  }

}

- (void)applicationWillTerminate:(UIApplication *)application
{
  // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
