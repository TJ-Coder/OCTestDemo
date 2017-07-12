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
    
    [self testDemo2:^(NSString *name) {
       
        //do something with param
        
    }];
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)TestDemo:(void(^)())then
{
    
    NSLog(@"git test");
    !then ?:then();
}


-(void)testDemo2:(void(^)(NSString *name))come
{
    NSString *name = @"Ttang";

    !come ?:come(name);
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
