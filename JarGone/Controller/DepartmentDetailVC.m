//
//  DepartmentDetailVC.m
//  JarGone
//
//  Created by Amar Pal Rawat on 8/13/17.
//  Copyright © 2017 Bipin Maurya. All rights reserved.
//

#import "DepartmentDetailVC.h"
#import "DepartmentDetailViewVC.h"


@interface DepartmentDetailVC ()
@property (weak, nonatomic) IBOutlet UILabel *departmentLbl;

@end

@implementation DepartmentDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.departmentLbl.text=_departmentTitleStr;
}
- (IBAction)backAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)distanceAction:(id)sender {
    DepartmentDetailViewVC *DepartmentDetailViewVC=[self.storyboard instantiateViewControllerWithIdentifier:@"DepartmentDetailViewVC"];
    DepartmentDetailViewVC.controllerStr=@"Go to Straight 10m";
    [self.navigationController pushViewController:DepartmentDetailViewVC animated:YES];
    
}
- (IBAction)mapAction:(id)sender {
    DepartmentDetailViewVC *DepartmentDetailViewVC=[self.storyboard instantiateViewControllerWithIdentifier:@"DepartmentDetailViewVC"];
     DepartmentDetailViewVC.controllerStr=@"Right now you are at gate";
    [self.navigationController pushViewController:DepartmentDetailViewVC animated:YES];
    
}
- (IBAction)soundAction:(id)sender {
    DepartmentDetailViewVC *DepartmentDetailViewVC=[self.storyboard instantiateViewControllerWithIdentifier:@"DepartmentDetailViewVC"];
    //  DepartmentDetailVC.departmentTitleStr=self.departmentLbl.text;
    [self.navigationController pushViewController:DepartmentDetailViewVC animated:YES];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
