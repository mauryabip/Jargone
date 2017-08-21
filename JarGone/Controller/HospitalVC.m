//
//  HospitalVC.m
//  JarGone
//
//  Created by Amar Pal Rawat on 8/21/17.
//  Copyright © 2017 Bipin Maurya. All rights reserved.
//

#import "HospitalVC.h"
#import "HospitalDetailVC.h"

@interface HospitalVC ()<UIActionSheetDelegate>
@property (weak, nonatomic) IBOutlet UILabel *hospitalLbl;

@end

@implementation HospitalVC

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
- (IBAction)selectHospitalAction:(id)sender {
        UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Select Department:"
                                                                 delegate:self
                                                        cancelButtonTitle:nil
                                                   destructiveButtonTitle:nil
                                                        otherButtonTitles:@"Hauora Tairawhiti", nil];
        
        [actionSheet showInView:self.view];
    

}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    self.hospitalLbl.text=[actionSheet buttonTitleAtIndex:buttonIndex];
    
    NSLog(@"Index = %ld - Title = %@", (long)buttonIndex, [actionSheet buttonTitleAtIndex:buttonIndex]);
    HospitalDetailVC *HospitalDetailVC=[self.storyboard instantiateViewControllerWithIdentifier:@"HospitalDetailVC"];
    [self.navigationController pushViewController:HospitalDetailVC animated:YES];
}

@end
