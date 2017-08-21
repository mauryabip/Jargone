//
//  HospitalDetailVC.m
//  JarGone
//
//  Created by Amar Pal Rawat on 8/21/17.
//  Copyright © 2017 Bipin Maurya. All rights reserved.
//

#import "HospitalDetailVC.h"
#import "DepartmentVC.h"

@interface HospitalDetailVC ()

@end

@implementation HospitalDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
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
- (IBAction)backAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)showMapAction:(id)sender {
    DepartmentVC *DepartmentVC=[self.storyboard instantiateViewControllerWithIdentifier:@"DepartmentVC"];
    [self.navigationController pushViewController:DepartmentVC animated:YES];
}
@end
