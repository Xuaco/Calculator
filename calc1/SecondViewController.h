//
//  SecondViewController.h
//  calc1
//
//  Created by Xavier Ferre on 12/06/13.
//  Copyright (c) 2013 Laboratorio Ingeniería Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tabla;
@property (strong, nonatomic) NSMutableArray *Informacion;

@end
