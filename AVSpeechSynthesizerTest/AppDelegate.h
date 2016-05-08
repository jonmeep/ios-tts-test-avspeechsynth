//
//  AppDelegate.h
//  AVSpeechSynthesizerTest
//
//  Created by Jonathan Schang on 5/7/16.
//  Copyright © 2016 Jonathan Schang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (retain, nonatomic) AVSpeechSynthesizer* synthesizer;
@property (retain, nonatomic) AVSpeechUtterance* utterance;
@property (retain, nonatomic) NSArray* voices;
@property (readwrite, assign) int currentVoice;

@end

