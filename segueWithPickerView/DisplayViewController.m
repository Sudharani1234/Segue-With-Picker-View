//
//  DisplayViewController.m
//  segueWithPickerView
//
//  Created by Vijay on 04/03/17.
//  Copyright © 2017 Sudha. All rights reserved.
//

#import "DisplayViewController.h"

@interface DisplayViewController ()

@end

@implementation DisplayViewController{

    NSString *rxStr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label1Outlet.text = rxStr;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)sendDay:(NSString *)str1{
    
    rxStr = str1;

    NSLog(@"Recied dat : %@",rxStr);
}
@end
