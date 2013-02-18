//
//  AWBLocationManager.m
//  MapApp
//
//  Created by Andrew Braunstein on 2/17/13.
//  Copyright (c) 2013 Andrew Braunstein. All rights reserved.
//

#import "AWBLocationManager.h"

@implementation AWBLocationManager

+ (AWBLocationManager *) sharedLocationManager {
  static AWBLocationManager *sharedInstance;
  @synchronized(self) {
    if (!sharedInstance) {
      sharedInstance = [[AWBLocationManager alloc] init];
    }
  }
  return sharedInstance;
  
}

- (id)init {
  self = [super init];
  if (self) {
    self.locationManager = [[CLLocationManager alloc] init];
  }
  return self;
}

@end
