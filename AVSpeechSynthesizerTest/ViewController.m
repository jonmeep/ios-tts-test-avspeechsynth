//
//  ViewController.m
//  AVSpeechSynthesizerTest
//
//  Created by Jonathan Schang on 5/7/16.
//  Copyright © 2016 Jonathan Schang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onChangeVoice:(id)sender forEvent:(UIEvent *)event {
    NSLog(@"onChangeVoice pressed");
}

- (IBAction)onPlayVoice:(id)sender {
    NSLog(@"onStonPlayVoiceop pressed");
}

- (IBAction)onStop:(id)sender {
    NSLog(@"onStop pressed");
}

@end
