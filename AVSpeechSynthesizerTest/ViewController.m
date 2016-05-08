//
//  ViewController.m
//  AVSpeechSynthesizerTest
//
//  Created by Jonathan Schang on 5/7/16.
//  Copyright © 2016 Jonathan Schang. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AppDelegate *del = [[UIApplication sharedApplication] delegate];
    self.stepper.minimumValue = 0;
    self.stepper.maximumValue = [del.voices count]-1;
    self.stepper.stepValue = 1.0f;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onChangeVoice:(id)sender forEvent:(UIEvent *)event {
    NSLog(@"onChangeVoice pressed");
    AppDelegate *del = [[UIApplication sharedApplication] delegate];
    del.currentVoice = self.stepper.value;
    del.utterance.voice = del.voices[del.currentVoice];
    self.currentVoice.text = del.voices[del.currentVoice];
}

- (IBAction)onPlayVoice:(id)sender {
    NSLog(@"onStonPlayVoiceop pressed");
    AppDelegate *del = [[UIApplication sharedApplication] delegate];
    [del.synthesizer stopSpeakingAtBoundary:AVSpeechBoundaryImmediate];
    del.utterance = [AVSpeechUtterance speechUtteranceWithString:self.currentText.text];
    del.utterance.voice = del.voices[del.currentVoice];
    [del.synthesizer speakUtterance:del.utterance];
}

- (IBAction)onStop:(id)sender {
    NSLog(@"onStop pressed");
    AppDelegate *del = [[UIApplication sharedApplication] delegate];
    [del.synthesizer stopSpeakingAtBoundary:AVSpeechBoundaryImmediate];
}

@end
