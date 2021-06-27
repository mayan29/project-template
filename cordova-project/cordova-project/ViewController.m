//
//  ViewController.m
//  cordova-project
//
//  Created by 马岩 on 2021/6/27.
//

#import "ViewController.h"
#import "MYWebViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onLogin:(UIButton *)sender {
    MYWebViewController *vc = [[MYWebViewController alloc] init];
    vc.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:vc animated:YES completion:nil];
}

@end
