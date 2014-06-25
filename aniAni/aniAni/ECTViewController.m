//
//  ECTViewController.m
//  aniAni
//
//  Created by Byrdann Fox on 6/24/14.
//  Copyright (c) 2014 ExcepApps. All rights reserved.
//

#import "ECTViewController.h"
// <> === IT'S A LIBRARY...
#import <QuartzCore/QuartzCore.h>

@interface ECTViewController ()

@property (weak, nonatomic) IBOutlet UIView *layerView;

@end

@implementation ECTViewController

- (void)viewDidLoad

{
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    // LOAD THAT SHIT...
    // ELECTRICDODDS/CMO/CO-OWNER/BADASSR
    UIImage *image = [UIImage imageNamed:@"electricdodds.jpeg"];
    // ADD THAT SHIT...
    // __BRIDGE IS NOT REQ. WITH ARC...
    self.layerView.layer.contents = (id)image.CGImage;
    // CENTER THE IMAGE...
    self.layerView.layer.contentsGravity = kCAGravityCenter;
    // SET CONTENTSCALE...
    self.layerView.layer.contentsScale = image.scale;
    self.layerView.layer.contentsScale = [UIScreen mainScreen].scale;
    // DO NOT SPILL OUTSIDE OF THE CONTAINER...
    self.layerView.layer.masksToBounds = YES;
    
    
    
    // SUBLAYER TIME...
    /*CALayer *blueLayer = [CALayer layer];
    blueLayer.frame = CGRectMake(50.0f, 50.0f, 100.0f, 100.0f);
    blueLayer.backgroundColor = [UIColor blueColor].CGColor;*/
    
    // ADD THAT SHIT...
    // [self.layerView.layer addSublayer:blueLayer];
    
 
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
