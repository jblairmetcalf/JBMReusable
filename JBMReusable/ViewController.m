//
//  ViewController.m
//  JBMReusable
//
//  Created by J Blair Metcalf on 4/19/15.
//  Copyright (c) 2015 J Blair Metcalf. All rights reserved.
//

#import "ViewController.h"
#import "JBMWireframeView.h"
#import "JBMTouchView.h"
#import "JBMCircleView.h"
#import "JBMAnimatedButton.h"
#import "JBMRoundedRectangleView.h"

@interface ViewController ()

@property (nonatomic, strong) JBMWireframeView *wireframeView;
@property (nonatomic, strong) JBMTouchView *touchView;
@property (nonatomic, strong) JBMCircleView *circleView;
@property (nonatomic, strong) JBMAnimatedButton *animatedButton;
@property (nonatomic, strong) JBMRoundedRectangleView *roundedRectangleView;

@end

@implementation ViewController

#pragma mark - Override Methods

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.wireframeView.hidden = NO;
    self.touchView.hidden = NO;
    self.circleView.hidden = NO;
    self.animatedButton.hidden = NO;
    self.roundedRectangleView.hidden = NO;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    UITouch *touch = [[event allTouches] anyObject];
    CGPoint touchPoint = [touch locationInView:self.view];
    CGPoint point = CGPointMake(touchPoint.x - self.touchView.frame.origin.x, touchPoint.y - self.touchView.frame.origin.y);
    [self.touchView touchWithPoint:point];
}

#pragma mark - Instantiations Methods

- (JBMWireframeView *)wireframeView {
    if (!_wireframeView) {
        _wireframeView = [[JBMWireframeView alloc] initWithFrame:self.view.bounds
                                                            text:@"JBMWireframeView"];
        _wireframeView.backgroundColor = [UIColor clearColor];
        [self.view addSubview:_wireframeView];
    }
    return _wireframeView;
}

- (JBMTouchView *)touchView {
    if (!_touchView) {
        _touchView = [[JBMTouchView alloc] initWithFrame:self.view.bounds
                                            fillColor:[UIColor blueColor]
                                       animationDuration:0.33f];
        [self.view addSubview:_touchView];
    }
    return _touchView;
}

- (JBMCircleView *)circleView {
    if (!_circleView) {
        _circleView = [[JBMCircleView alloc] initWithFrame:CGRectMake(10.0f, 30.0f, 100.0f, 100.0f)
                                                 fillColor:[UIColor redColor]
                                               strokeColor:[UIColor blackColor]
                                               strokeWidth:2.0f];
        [self.view addSubview:_circleView];
    }
    return _circleView;
}

- (JBMAnimatedButton *)animatedButton {
    if (!_animatedButton) {
        _animatedButton = [[JBMAnimatedButton alloc] initWithFrame:CGRectMake(10.0f, 130.0f, 44.0f, 44.0f)
                                                             image:[UIImage imageNamed:@"JBMAnimatedButton"]
                                                          selected:YES
                                                         tintColor:[UIColor greenColor]
                                                 animationDuration:0.33f
                                                    animationFrame:CGRectMake(-44.0f, 0.0f, 88.0f, 44.0f)];
        [self.view addSubview:_animatedButton];
    }
    return _animatedButton;
}

- (JBMRoundedRectangleView *)roundedRectangleView {
    if (!_roundedRectangleView) {
        _roundedRectangleView = [[JBMRoundedRectangleView alloc] initWithFrame:CGRectMake(120.0f, 30.0f, 100.0f, 100.0f)
                                                                   borderColor:[UIColor blackColor]
                                                                   borderWidth:2.0f
                                                                  cornerRadius:10.0f];
        _roundedRectangleView.backgroundColor = [UIColor yellowColor];
        [self.view addSubview:_roundedRectangleView];
    }
    return _roundedRectangleView;
}

@end
