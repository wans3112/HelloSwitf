//
//  ViewController.m
//  HelloWorldSwift
//
//  Created by water on 14-10-21.
//  Copyright (c) 2014年 water. All rights reserved.
//

#import "ViewController.h"
#import <HelloWorldSwift-swift.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    
    
    SwiftViewController *vc = [[SwiftViewController alloc]init];
    vc.delegate = self;
    vc.callback = ^(){
    
        NSLog(@" callback ");
    };
    vc.perimeter = 10.f;
    [vc someTypeMethod];
//    UINavigationController *navi = [[UINavigationController alloc]initWithRootViewController:vc];
    [self presentViewController:vc animated:YES completion:^{
        
    }];
//
//    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didSelect:(int)index{

    
    NSLog(@"index >> %d",index);
}

- (void)recvData:(NSArray *)array dic:(NSDictionary *)dic{

    NSLog(@"\narray >> %@\ndic:>> %@",array,dic);
}

@end
