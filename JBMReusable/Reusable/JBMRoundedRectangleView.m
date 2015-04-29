//
//  JBMRoundedRectangleView.m
//  JBMReusable
//
//  Created by J Blair Metcalf on 4/29/15.
//  Copyright (c) 2015 J Blair Metcalf. All rights reserved.
//

#import "JBMRoundedRectangleView.h"

@implementation JBMRoundedRectangleView

#pragma mark - Public Methods

- (instancetype)initWithFrame:(CGRect)frame borderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth cornerRadius:(CGFloat)cornerRadius {
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.borderColor = [borderColor CGColor];
        self.layer.borderWidth = borderWidth;
        self.layer.cornerRadius = cornerRadius;
        self.layer.masksToBounds = YES;
    }
    return self;
}

@end
