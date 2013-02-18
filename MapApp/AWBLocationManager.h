//
//  AWBLocationManager.h
//  MapApp
//
//  Created by Andrew Braunstein on 2/17/13.
//  Copyright (c) 2013 Andrew Braunstein. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface AWBLocationManager : NSObject

@property (nonatomic, retain) CLLocationManager * locationManager;

+ (AWBLocationManager *)sharedLocationManager;

@end
