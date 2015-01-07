//
//  ViewController.h
//  HelloWorldSwift
//
//  Created by water on 14-10-21.
//  Copyright (c) 2014年 water. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ViewDelegate <NSObject>

@optional
- (void)didSelect:(int)index;

- (void)recvData:(NSArray *)array dic:(NSDictionary *)dic;

@end

@interface ViewController : UIViewController<ViewDelegate>

- (IBAction)buttonPressed:(id)sender;

@end

