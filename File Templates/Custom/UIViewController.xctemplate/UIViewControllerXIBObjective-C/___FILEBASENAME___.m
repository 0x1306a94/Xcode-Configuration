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

#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self commonInit];
}

/*
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];

}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];

}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
}
*/

#pragma mark - initial Methods
- (void)commonInit {
    self.view.backgroundColor = [UIColor whiteColor];


}

#pragma mark - private method

#pragma mark - event response

#pragma mark - public Method

#pragma mark - UITableViewDelegate


#pragma mark - UITableViewDataSource
//...(多个代理方法依次往下写)

#pragma mark - getters and setters

@end