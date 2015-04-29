JBMReusable
=========

Objective-C reusable views.
---------

JBMAnimatedButton : UIView

- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image selected:(BOOL)selected tintColor:(UIColor *)tintColor animationDuration:(CGFloat)animationDuration animationFrame:(CGRect)animationFrame;

JBMCircleView : UIView

- (instancetype)initWithFrame:(CGRect)frame fillColor:(UIColor *)fillColor strokeColor:(UIColor *)strokeColor strokeWidth:(CGFloat)strokeWidth;

JBMRightTextLabelCell : UITableViewCell

- rightTextLabel;

JBMRoundedRectangleView : UIView

- (instancetype)initWithFrame:(CGRect)frame borderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth cornerRadius:(CGFloat)cornerRadius;

JBMTouchView : UIView

- (instancetype)initWithFrame:(CGRect)frame fillColor:(UIColor *)fillColor animationDuration:(CGFloat)animationDuration;
- (void)touchWithPoint:(CGPoint)point;

JBMWireframeView : UIView

- (instancetype)initWithFrame:(CGRect)frame text:(NSString *)text;