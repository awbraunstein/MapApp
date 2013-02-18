//
//  AWBViewController.m
//  MapApp
//
//  Created by Andrew Braunstein on 2/16/13.
//  Copyright (c) 2013 Andrew Braunstein. All rights reserved.
//

#import "AWBViewController.h"

@interface AWBViewController ()
@property (strong, nonatomic) CLLocationManager *locationManager;
@end

@implementation AWBViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  
  self.locationManager = [[AWBLocationManager sharedLocationManager] locationManager];
  if(CLLocationManager.locationServicesEnabled == NO){
    //It isn't enabled, fix in settings
  }
  
  self.locationManager.delegate = self;
  self.locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters;
  self.locationManager.distanceFilter = 1000.0;
  [self.locationManager startUpdatingLocation];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - CLLocationManagerDelegate methods

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
  CLLocation *location = [locations lastObject];
  NSLog(@"lat: %f, lon:%f", location.coordinate.latitude, location.coordinate.longitude);
  [self addPinToMapAtLocation:location];
}

- (void)addPinToMapAtLocation:(CLLocation *)location
{
  MKPointAnnotation *pin = [[MKPointAnnotation alloc] init];
  pin.coordinate = location.coordinate;
  pin.title = @"foo";
  pin.subtitle = @"bar";
  [self.mapView addAnnotation:pin];
  self.mapView.centerCoordinate = pin.coordinate;
  // with the map centered, calculate the necessary zoom and set that to the zoom level
}


@end
