//
//  TestViewController.m
//  WatchContainer
//
//  Created by Jinwoo Kim on 9/7/26.
//

#import "TestViewController.h"

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.systemOrangeColor;
    
    [self test];
}

- (void)test __attribute__((objc_direct)) {
    NSURL *childDemoURL = [NSBundle.mainBundle URLForResource:@"ChildDemo" withExtension:@"app"];
    assert(childDemoURL != nil);
    NSURL *binary = [childDemoURL URLByAppendingPathComponent:@"ChildDemo" isDirectory:NO];
    assert(binary != nil);
    assert([NSFileManager.defaultManager fileExistsAtPath:binary.path isDirectory:NULL]);
    
    NSLog(@"%@", binary);
}

@end
