//
//  JBMRightTextLabelCell.m
//  JBMReusable
//
//  Created by J Blair Metcalf on 4/29/15.
//  Copyright (c) 2015 J Blair Metcalf. All rights reserved.
//

#import "JBMRightTextLabelCell.h"

#import "UIFont+Utility.h"

@implementation JBMRightTextLabelCell

#pragma mark - Override Methods

- (void)layoutSubviews {
    [super layoutSubviews];
    CGSize size = [UIFont sizeOfText:self.rightTextLabel.text withFont:self.rightTextLabel.font width:self.contentView.frame.size.width];
    CGFloat x = self.contentView.frame.size.width-size.width-NSLayoutAttributeRightMargin-NSLayoutAttributeRight;
    CGFloat y = (self.contentView.frame.size.height-size.height)/2.0f;
    self.rightTextLabel.frame = CGRectMake(x, y, size.width, size.height);
}

#pragma mark - Instantiation Methods

- (UILabel *)rightTextLabel {
    if (!_rightTextLabel) {
        _rightTextLabel = [[UILabel alloc] init];
        _rightTextLabel.textColor = [UIColor grayColor];
        [self.contentView addSubview:_rightTextLabel];
    }
    return _rightTextLabel;
}

@end
