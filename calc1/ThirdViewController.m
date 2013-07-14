//
//  ThirdViewController.m
//  calc1
//
//  Created by Xavier Ferre on 13/06/13.
//  Copyright (c) 2013 Laboratorio Ingeniería Software. All rights reserved.
//
// comentarios nuevos desde master

// ver gestos en http://developer.apple.com/library/ios/#samplecode/SimpleGestureRecognizers/Listings/SimpleGestureRecognizers_APLGestureRecognizerViewController_m.html#//apple_ref/doc/uid/DTS40009460-SimpleGestureRecognizers_APLGestureRecognizerViewController_m-DontLinkElementID_5
// aqui no daria problemas
// como estoy en master, no veo el cambio de casa


#import "ThirdViewController.h"
#import "SecondViewController.h"

@interface ThirdViewController ()

@property (nonatomic, strong) IBOutlet UISwipeGestureRecognizer *swipeLeftRecognizer;
@property (nonatomic, strong) IBOutlet UISwipeGestureRecognizer *swipeRightRecognizer;

@end

@implementation ThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil name:(NSString *)name
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.label.text = @" ";
        self.title = name;
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];

    self.swipeLeftRecognizer = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleSwipesL:)];
    self.swipeRightRecognizer = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleSwipesR:)];
    self.swipeLeftRecognizer.direction = UISwipeGestureRecognizerDirectionLeft;
    self.swipeRightRecognizer.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:self.swipeLeftRecognizer];
    [self.view addGestureRecognizer:self.swipeRightRecognizer];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)handleSwipesL:(UISwipeGestureRecognizer *)sender{
    self.label.text = @"Fin";
}

- (void)handleSwipesR:(UISwipeGestureRecognizer *)sender{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
