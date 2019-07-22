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

static ___FILEBASENAMEASIDENTIFIER___ *_sharedInstance = nil;

#if DEBUG
- (void)dealloc {
    NSLog(@"[%@ dealloc]", NSStringFromClass(self.class));
}
#endif

#pragma mark - life cycle
+ (instancetype)shared {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        //because has rewrited allocWithZone  use NULL avoid endless loop lol.
        _sharedInstance = [[super allocWithZone:NULL] init];
        [_sharedInstance commonInit];
    });
    
    return _sharedInstance;
}

+ (id)allocWithZone:(struct _NSZone *)zone {
    return [___FILEBASENAMEASIDENTIFIER___ sharedInstance];
}

+ (instancetype)alloc {
    return [___FILEBASENAMEASIDENTIFIER___ sharedInstance];
}

- (id)copy {
    return self;
}

- (id)mutableCopy {
    return self;
}

- (id)copyWithZone:(struct _NSZone *)zone {
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
