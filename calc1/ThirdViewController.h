//
//  ThirdViewController.h
//  calc1
//
//  Created by Xavier Ferre on 13/06/13.
//  Copyright (c) 2013 Laboratorio Ingeniería Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UIViewController <UIGestureRecognizerDelegate>

@property (strong, nonatomic) IBOutlet UILabel *label;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil name:(NSString *)name;

@end
