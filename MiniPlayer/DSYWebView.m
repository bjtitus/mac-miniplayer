//
//  DSYWebView.m
//  MiniPlayer
//
//  Created by Brandon Titus on 11/5/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYWebView.h"

@implementation DSYWebView

- (void)keyDown:(NSEvent *)theEvent
{
    // no op - kills the beep;
}

- (BOOL)performKeyEquivalent:(NSEvent *)theEvent
{
    NSString * chars = [theEvent characters];
    BOOL status = NO;
    
    if ([theEvent modifierFlags] & NSCommandKeyMask){
        
        if ([chars isEqualTo:@"a"]){
            [self selectAll:nil];
            status = YES;
        }
        
        if ([chars isEqualTo:@"c"]){
            [self copy:nil];
            status = YES;
        }
        
        if ([chars isEqualTo:@"v"]){
            [self paste:nil];
            status = YES;
        }
        
        if ([chars isEqualTo:@"x"]){
            [self cut:nil];
            status = YES;
        }
    }
    return status;
}

@end
