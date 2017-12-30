//
//  ViewController.h
//  segueWithPickerView
//
//  Created by Vijay on 04/03/17.
//  Copyright © 2017 Sudha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DisplayViewController.h"
@interface ViewController : UIViewController

@property (strong, nonatomic) NSArray *Day;

@property (strong, nonatomic) NSArray *Month;

@property (strong, nonatomic) IBOutlet UIPickerView *firstPickerOutlet;

@property (strong, nonatomic) IBOutlet UIPickerView *secondPickerOutlet;



@end

