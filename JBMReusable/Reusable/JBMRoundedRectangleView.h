//
//  JBMRoundedRectangleView.h
//  JBMReusable
//
//  Created by J Blair Metcalf on 4/29/15.
//  Copyright (c) 2015 J Blair Metcalf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JBMRoundedRectangleView : UIView

- (instancetype)initWithFrame:(CGRect)frame borderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth cornerRadius:(CGFloat)cornerRadius;

@end
