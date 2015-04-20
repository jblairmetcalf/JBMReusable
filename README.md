JBMReusable
=========

Objective-C reusable views.
---------

JBMAnimatedButton

- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image selected:(BOOL)selected tintColor:(UIColor *)tintColor animationDuration:(CGFloat)animationDuration animationFrame:(CGRect)animationFrame;

JBMCircleView

- (instancetype)initWithFrame:(CGRect)frame andFillColor:(UIColor *)fillColor;

JBMTouchView

- (instancetype)initWithFrame:(CGRect)frame andFillColor:(UIColor *)fillColor andAnimationDuration:(CGFloat)animationDuration;
- (void)touchWithPoint:(CGPoint)point;

JBMWireframeView

- (instancetype)initWithFrame:(CGRect)frame text:(NSString *)text;