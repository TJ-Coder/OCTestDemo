//
//  ViewController.m
//  OCGitTest
//
//  Created by TJian on 2017/7/12.
//  Copyright © 2017年 Personal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self TestDemo:^{
        NSLog(@"test success!");
    }];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)TestDemo:(void(^)())then
{
    
    NSLog(@"git test");
    !then ?:then();
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
