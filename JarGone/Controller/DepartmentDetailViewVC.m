//
//  DepartmentDetailViewVC.m
//  JarGone
//
//  Created by Amar Pal Rawat on 8/13/17.
//  Copyright © 2017 Bipin Maurya. All rights reserved.
//

#import "DepartmentDetailViewVC.h"
#import <QuartzCore/QuartzCore.h>

@interface DepartmentDetailViewVC ()
@property (weak, nonatomic) IBOutlet UILabel *textLbl;
@property (weak, nonatomic) IBOutlet UIView *topView;

@end

@implementation DepartmentDetailViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    //changes done
    // Do any additional setup after loading the view.
    self.topView.layer.cornerRadius=10;
    self.topView.layer.masksToBounds=YES;
    
    UIBezierPath *shadowPath = [UIBezierPath bezierPathWithRect:self.topView.bounds];
    self.topView.layer.masksToBounds = NO;
    self.topView.layer.shadowColor = [UIColor blackColor].CGColor;
    self.topView.layer.shadowOffset = CGSizeMake(0.0f, 5.0f);
    self.topView.layer.shadowOpacity = 0.5f;
    self.topView.layer.shadowPath = shadowPath.CGPath;
    
}
- (IBAction)backAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)nextAction:(id)sender {
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
