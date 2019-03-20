//___FILEHEADER___

#import "___FILEBASENAME___.h"

/* System */

/* ViewController */

/* View */

/* Model */

/* Util */

/* NetWork InterFace */

/* Vender */

@interface ___FILEBASENAMEASIDENTIFIER___ ()

@end
@implementation ___FILEBASENAMEASIDENTIFIER___

#if DEBUG
- (void)dealloc {
    NSLog(@"[%@ dealloc]", NSStringFromClass(self.class));
}
#endif

#pragma mark - load from nib
+ (instancetype __nullable)makeFromNibWithBundle:(NSBundle *)bundle {
    if (!bundle) bundle = [NSBundle mainBundle];
    NSArray *objs = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self.class) owner:nil options:nil];
    if (!objs || objs.count == 0) return nil;
    if ([objs.firstObject isKindOfClass:self.class]) return objs.firstObject;
    return nil;
}

#pragma mark - life cycle
- (instancetype)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        [self commonInit];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self commonInit];
}

#pragma mark - initial Methods
- (void)commonInit {
    /*custom view u want draw in here*/
    self.backgroundColor = [UIColor whiteColor];
}

#pragma mark - layout
- (void)updateConstraints {
    /*更新约束，自定义view应该重写此方法在其中建立constraints.*/

    [super updateConstraints];//this line must be the last line of this method.^_^
}

- (void)layoutSubviews {
    [super layoutSubviews];
    /*如果你需要更精确控制子view，而不是使用限制或autoresizing行为，就需要实现该方法。*/

}

#pragma mark - private method

#pragma mark - public method

#pragma mark - getters and setters

@end