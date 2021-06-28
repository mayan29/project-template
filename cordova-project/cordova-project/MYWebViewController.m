//
//  MYWebViewController.m
//  cordova-project
//
//  Created by 马岩 on 2021/6/27.
//

#import "MYWebViewController.h"

@interface MYWebViewController ()

@end

@implementation MYWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSLog(@"正在使用的插件: %@", self.pluginsMap);
}

@end
