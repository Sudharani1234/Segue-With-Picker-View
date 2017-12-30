//
//  ViewController.m
//  segueWithPickerView
//
//  Created by Vijay on 04/03/17.
//  Copyright © 2017 Sudha. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIPickerViewDelegate>


    

@end

@implementation ViewController
{
    NSString *str1;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.Day = [[NSArray alloc] initWithObjects:@"MONDAY",@"TUESDAY",@"WEDNSDAY",@"THURSDAY",@"FRIDAY",@"SATURDAY", @"SUNDAY",nil ];

//self.Month=[[NSArray alloc] initWithObjects:@"JANUARY",@"FEBRUARY",@"MARCH",@"APRIL",@"MAY"@"JUNE",@"JULY",@"AUGUST",@"SEPTEMBER",@"OCTOBER",@"NOVEMBER",@"DECEMBER", nil ];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return self.Day.count;
    
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return self.Day[row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{

    
    str1 = [self.Day objectAtIndex:row];
    [self performSegueWithIdentifier:@"sender" sender:str1];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    DisplayViewController *vc = [segue destinationViewController];
    
    [vc sendDay:str1];
    
}



@end
