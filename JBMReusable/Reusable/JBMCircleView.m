//
//  JBMCircleView.m
//  JBMReusable
//
//  Created by J Blair Metcalf on 4/19/15.
//  Copyright (c) 2015 J Blair Metcalf. All rights reserved.
//

#import "JBMCircleView.h"

@interface JBMCircleView ()

@property (nonatomic, strong) UIColor *fillColor;
@property (nonatomic, strong) UIColor *strokeColor;
@property (nonatomic) CGFloat strokeWidth;

@end

@implementation JBMCircleView

#pragma mark - Public Methods

- (instancetype)initWithFrame:(CGRect)frame fillColor:(UIColor *)fillColor strokeColor:(UIColor *)strokeColor strokeWidth:(CGFloat)strokeWidth {
    self = [super initWithFrame:frame];
    if (self) {
        _fillColor = fillColor;
        _strokeColor = strokeColor;
        _strokeWidth = strokeWidth;
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

#pragma mark - Override Methods

- (void)drawRect:(CGRect)rect {
    CGRect frame = CGRectMake(self.strokeWidth/2.0f, self.strokeWidth/2.0f, rect.size.width-self.strokeWidth, rect.size.height-self.strokeWidth);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, self.fillColor.CGColor);
    CGContextFillEllipseInRect(context, frame);
    CGContextSetLineWidth(context, self.strokeWidth);
    CGContextSetStrokeColorWithColor(context, self.strokeColor.CGColor);
    CGContextStrokeEllipseInRect(context, frame);
}

@end
