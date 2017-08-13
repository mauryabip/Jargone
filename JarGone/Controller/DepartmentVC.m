//
//  DepartmentVC.m
//  JarGone
//
//  Created by Amar Pal Rawat on 8/13/17.
//  Copyright © 2017 Bipin Maurya. All rights reserved.
//

#import "DepartmentVC.h"
#import "DepartmentDetailVC.h"

@interface DepartmentVC ()<UIActionSheetDelegate>{
    NSString *selectedDepartmentStr;
}
@property (weak, nonatomic) IBOutlet UIButton *findBtn;
@property (weak, nonatomic) IBOutlet UILabel *departmentLbl;

@end

@implementation DepartmentVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.findBtn.alpha=0.5;
    self.findBtn.userInteractionEnabled=NO;
    selectedDepartmentStr=@"";
    // Do any additional setup after loading the view.
}
- (IBAction)backAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];   //it hides
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
   // [self.navigationController setNavigationBarHidden:NO animated:YES]; // it shows
}
- (IBAction)findBtnAction:(id)sender {
    DepartmentDetailVC *DepartmentDetailVC=[self.storyboard instantiateViewControllerWithIdentifier:@"DepartmentDetailVC"];
    DepartmentDetailVC.departmentTitleStr=self.departmentLbl.text;
    [self.navigationController pushViewController:DepartmentDetailVC animated:YES];

}

- (IBAction)selectDepartmentAction:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Select Department:"
                                                             delegate:self
                                                    cancelButtonTitle:nil
                                               destructiveButtonTitle:nil
                                                    otherButtonTitles:@"Home", @"Office", @"Library", @"DOSU", @"Management Room", nil];
    
    [actionSheet showInView:self.view];
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    self.findBtn.alpha=1.0;
    self.findBtn.userInteractionEnabled=YES;
    self.departmentLbl.text=[actionSheet buttonTitleAtIndex:buttonIndex];
    
    NSLog(@"Index = %ld - Title = %@", (long)buttonIndex, [actionSheet buttonTitleAtIndex:buttonIndex]);
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
