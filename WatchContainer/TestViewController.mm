//
//  TestViewController.mm
//  WatchContainer
//
//  Created by Jinwoo Kim on 9/7/26.
//

#import "TestViewController.h"
#import <WatchContainerCore/WatchContainerCore.h>

@interface TestViewController ()
@property (assign, nonatomic) std::shared_ptr<WCC::ApplicationHandle> handle;
@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.systemOrangeColor;
    
    [self test];
}

- (void)test __attribute__((objc_direct)) {
    NSURL *childDemoURL = [NSBundle.mainBundle URLForResource:@"ChildDemo" withExtension:@"app"];
    assert(childDemoURL != nil);
    assert([NSFileManager.defaultManager fileExistsAtPath:childDemoURL.path isDirectory:NULL]);
    NSLog(@"%@", childDemoURL);
    
    NSBundle *bundle = [[NSBundle alloc] initWithURL:childDemoURL];
    assert(childDemoURL != nil);
    
    NSError * _Nullable error = nil;
    std::optional<std::shared_ptr<WCC::ApplicationHandle>> handle = WCC::ApplicationHandle::createHandle(bundle, &error);
    assert(error == nil);
    [bundle release];
    
    self.handle = handle.value();
    
    self.handle->execute(^(NSError * _Nullable error) {
        abort();
    });
}

@end
