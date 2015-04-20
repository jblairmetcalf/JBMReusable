//
//  JBMAnimatedButton.m
//  JBMReusable
//
//  Created by J Blair Metcalf on 4/19/15.
//  Copyright (c) 2015 J Blair Metcalf. All rights reserved.
//

#import "JBMAnimatedButton.h"

@interface JBMAnimatedButton ()

@property (nonatomic, strong) UIView *view;
@property (nonatomic, strong) UIButton *button;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) UIColor *tintColor;
@property (nonatomic) CGFloat animationDuration;
@property (nonatomic) CGRect animationFrame;

@end

@implementation JBMAnimatedButton

#pragma mark - Override Methods

- (instancetype)initWithFrame:(CGRect)frame
                        image:(UIImage *)image
                     selected:(BOOL)selected
                    tintColor:(UIColor *)tintColor
            animationDuration:(CGFloat)animationDuration
               animationFrame:(CGRect)animationFrame {
    self = [super initWithFrame:frame];
    if (self) {
        self.clipsToBounds = YES;
        
        _image = image;
        _selected = selected;
        _tintColor = tintColor;
        _animationDuration = animationDuration;
        _animationFrame = animationFrame;
        
        [self positionButton];
    }
    return self;
}
#pragma mark - Public Methods

- (void)setSelected:(BOOL)selected {
    _selected = selected;
    [self animateButton];
}

#pragma mark - Interaction Methods

- (IBAction)buttonTouched:(id)sender {
    self.selected = !self.selected;
    [self animateButton];
    [self.delegate didTouchAnimatedButton:self];
}

#pragma mark - Private Methods

- (void)animateDockToggleButton:(BOOL)animated {
    CGRect buttonFrame = [self buttonFrame];
    NSInteger options = self.selected ? UIViewAnimationOptionCurveEaseOut : UIViewAnimationOptionCurveEaseIn;
    if (animated) {
        [UIView animateWithDuration:self.animationDuration
                              delay:0.0f
                            options:options
                         animations:^{
                             self.button.frame = buttonFrame;
                         }
                         completion:nil];
    } else {
        self.button.frame = buttonFrame;
    }
}

- (CGRect)buttonFrame {
    if (self.selected) {
        return CGRectMake(0.0f, 0.0f, self.image.size.width, self.image.size.height);
    } else {
        return self.animationFrame;
    }
}

- (void)positionButton {
    [self animateDockToggleButton:NO];
}

- (void)animateButton {
    [self animateDockToggleButton:YES];
}

#pragma mark - Instantiation Methods

- (UIButton *)button {
    if (!_button) {
        UIImage *image = [self.image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
        CGRect frame = [self buttonFrame];
        _button = [[UIButton alloc] initWithFrame:frame];
        _button.tintColor = self.tintColor;
        [_button setImage:image forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(buttonTouched:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_button];
    }
    return _button;
}

@end
