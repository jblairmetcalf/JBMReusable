//
//  JBMAnimatedButton.h
//  JBMReusable
//
//  Created by J Blair Metcalf on 4/19/15.
//  Copyright (c) 2015 J Blair Metcalf. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol JBMAnimatedButtonDelegate

- (void)didTouchAnimatedButton:(id)sender;

@end

@interface JBMAnimatedButton : UIView

@property (nonatomic) BOOL selected;
@property (nonatomic, weak) id <JBMAnimatedButtonDelegate>delegate;

- (instancetype)initWithFrame:(CGRect)frame
                        image:(UIImage *)image
                     selected:(BOOL)selected
                    tintColor:(UIColor *)tintColor
            animationDuration:(CGFloat)animationDuration
               animationFrame:(CGRect)animationFrame;

@end
