//
//  JBMWireframeView.m
//  JBMReusable
//
//  Created by J Blair Metcalf on 4/19/15.
//  Copyright (c) 2015 J Blair Metcalf. All rights reserved.
//

#import "JBMWireframeView.h"

#import "UIFont+Utility.h"

@interface JBMWireframeView ()

@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) UIColor *textColor;
@property (nonatomic, strong) UIColor *strokeColor;
@property (nonatomic) CGFloat strokeWidth;
@property (nonatomic, strong) UILabel *label;

@end

@implementation JBMWireframeView

#pragma mark - Public Methods

- (instancetype)initWithFrame:(CGRect)frame text:(NSString *)text {
    self = [super initWithFrame:frame];
    if (self) {
        _textColor = [UIColor blackColor];
        _strokeColor = [UIColor lightGrayColor];
        _strokeWidth = 0.5f;
        if (text != nil) {
            self.text = text;
        }
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(context, [self.strokeColor CGColor]);
    CGContextSetLineWidth(context, self.strokeWidth);
    CGContextMoveToPoint(context, 0.0f, 0.0f);
    CGContextAddLineToPoint(context, self.frame.size.width, 0.0f);
    CGContextAddLineToPoint(context, self.frame.size.width, self.frame.size.height);
    CGContextAddLineToPoint(context, 0.0f, self.frame.size.height);
    CGContextAddLineToPoint(context, 0.0f, 0.0f);
    CGContextAddLineToPoint(context, self.frame.size.width, self.frame.size.height);
    CGContextMoveToPoint(context, self.frame.size.width, 0.0f);
    CGContextAddLineToPoint(context, 0.0f, self.frame.size.height);
    CGContextDrawPath(context, kCGPathStroke);
}

#pragma mark - Public Methods

- (void)setText:(NSString *)text {
    _text = text;
    self.label.text = text;
}

#pragma mark - Instantiation Methods

- (UILabel *)label {
    if (!_label) {
        CGSize size = [UIFont sizeOfText:self.text withFont:[UIFont systemFontOfSize:[UIFont labelFontSize]] width:self.frame.size.width];
        CGFloat height = ceilf(size.height);
        CGRect frame = CGRectMake(0.0f, (self.frame.size.height-height)/2.0f, self.frame.size.width, height);
        _label = [[UILabel alloc] initWithFrame:frame];
        _label.text = self.text;
        _label.numberOfLines = -1;
        _label.textColor = self.textColor;
        _label.textAlignment = NSTextAlignmentCenter;
        [self addSubview:_label];
    }
    return _label;
}

@end
