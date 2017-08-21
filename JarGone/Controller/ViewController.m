//
//  ViewController.m
//  JarGone
//
//  Created by Amar Pal Rawat on 8/13/17.
//  Copyright © 2017 Bipin Maurya. All rights reserved.
//

#import "ViewController.h"
#import "HospitalVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES animated:YES];   //it hides

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)englishLangAction:(id)sender {
    HospitalVC *HospitalVC=[self.storyboard instantiateViewControllerWithIdentifier:@"HospitalVC"];
    [self.navigationController pushViewController:HospitalVC animated:YES];
}


@end
