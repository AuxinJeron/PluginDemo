//
//  DVTTextCompletionController+PluginDemo.m
//  PluginDemo
//
//  Created by Leon on 2/27/14.
//  Copyright (c) 2014 Leon. All rights reserved.
//

#import "DVTTextCompletionController+PluginDemo.h"
#import "MethodSwizzle.h"

@implementation DVTTextCompletionController (PluginDemo)

+ (void) load
{
    MethodSwizzle(self,
                  @selector(acceptCurrentCompletion),
                  @selector(swizzledAcceptCurrentCompletion));
}

- (BOOL) swizzledAcceptCurrentCompletion
{
    NSLog(@"acceptCurrentCompletion is called by %@", self);
    return [self swizzledAcceptCurrentCompletion];
}

@end
