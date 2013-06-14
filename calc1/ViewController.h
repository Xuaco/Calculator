//
//  ViewController.h
//  calc1
//
//  Created by Laboratorio Ingeniería Software on 10/06/13.
//  Copyright (c) 2013 Laboratorio Ingeniería Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *input1;
@property (weak, nonatomic) IBOutlet UITextField *input2;
- (IBAction)suma:(id)sender;
- (IBAction)resta:(id)sender;
- (IBAction)multiplica:(id)sender;
- (IBAction)divide:(id)sender;
- (IBAction)tabla:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *resultado;

@end
