//
//  DepartmentDetailViewVC.m
//  JarGone
//
//  Created by Amar Pal Rawat on 8/13/17.
//  Copyright © 2017 Bipin Maurya. All rights reserved.
//

#import "DepartmentDetailViewVC.h"
#import <QuartzCore/QuartzCore.h>
#import <AVFoundation/AVFoundation.h>

@interface DepartmentDetailViewVC ()
@property (weak, nonatomic) IBOutlet UILabel *textLbl;
@property (weak, nonatomic) IBOutlet UIView *topView;
@property (weak, nonatomic) IBOutlet UIView *bottomView;

@end

@implementation DepartmentDetailViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    //changes done
    // Do any additional setup after loading the view.
    self.topView.layer.cornerRadius=10;
    self.topView.layer.masksToBounds=YES;

    self.textLbl.text=_controllerStr;
    
    if ([_controllerStr length]==0) {
        AVSpeechUtterance *utterance = [AVSpeechUtterance
                                        speechUtteranceWithString:@"Haere tika ka tahuri ki te taha matau"];
        
       // 你好，你好吗
        utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"en_NZ"];
        
        /*
         en_NZ	English (New Zealand)
         
         Chinese (China) - zh-CN
         Hindi (India) - hi-IN
         English (United Kingdom) - en-GB
         English (United States) - en-US
         */

        AVSpeechSynthesizer *synth = [[AVSpeechSynthesizer alloc] init];
        [synth speakUtterance:utterance];

    }
}
- (IBAction)backAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)nextAction:(id)sender {
    self.topView.hidden=YES;
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
