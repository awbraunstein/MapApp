//
//  AWBViewController.h
//  MapApp
//
//  Created by Andrew Braunstein on 2/16/13.
//  Copyright (c) 2013 Andrew Braunstein. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "AWBLocationManager.h"

@interface AWBViewController : UIViewController <CLLocationManagerDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end
