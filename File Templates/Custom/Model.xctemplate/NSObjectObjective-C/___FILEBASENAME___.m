//___FILEHEADER___

/* System */

/* Model */
#import "___FILEBASENAME___.h"
/* Util */

/* Vender */

@interface ___FILEBASENAMEASIDENTIFIER___ ()

@end

@implementation ___FILEBASENAMEASIDENTIFIER___

#if DEBUG
- (void)dealloc {
    NSLog(@"[%@ dealloc]", NSStringFromClass(self.class));
}
#endif

- (instancetype)init {
    if (self == [super init]) {
        [self commonInit];
    }
    return self;
}

#pragma mark - initial Methods
- (void)commonInit {
    /*custom view u want draw in here*/
    
}

#pragma mark - private method

#pragma mark - public method

#pragma mark - getters and setters
@end
