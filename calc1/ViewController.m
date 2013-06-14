//
//  ViewController.m
//  calc1
//
//  Created by Laboratorio Ingeniería Software on 10/06/13.
//  Copyright (c) 2013 Laboratorio Ingeniería Software. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "Calculadora.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.input1.delegate = self;
    self.input2.delegate = self;
    self.title = @"Calculadora";
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)suma:(id)sender {
    NSString *h1 = self.input1.text;
    [self.input1 resignFirstResponder];
    int s1 = [h1 intValue];
    NSString *h2 = self.input2.text;
    [self.input2 resignFirstResponder];
    int s2 = [h2 intValue];
    Calculadora *calc = [[Calculadora alloc]init];
    int result = [calc suma:s1 con:s2];
    self.resultado.text = [ NSString stringWithFormat:@"%d",result ];
}

- (IBAction)resta:(id)sender {
    NSString *h1 = self.input1.text;
    [self.input1 resignFirstResponder];
    int s1 = [h1 intValue];
    NSString *h2 = self.input2.text;
    [self.input2 resignFirstResponder];
    int s2 = [h2 intValue];
    Calculadora *calc = [[Calculadora alloc]init];
    int result = [calc resta:s1 con:s2];
    self.resultado.text = [ NSString stringWithFormat:@"%d",result ];
    
}

- (IBAction)multiplica:(id)sender {
    NSString *h1 = self.input1.text;
    [self.input1 resignFirstResponder];
    int s1 = [h1 intValue];
    NSString *h2 = self.input2.text;
    [self.input2 resignFirstResponder];
    int s2 = [h2 intValue];
    Calculadora *calc = [[Calculadora alloc]init];
    int result = [calc multiplica:s1 con:s2];
    self.resultado.text = [ NSString stringWithFormat:@"%d",result ];
}

- (IBAction)divide:(id)sender {
    NSString *h1 = self.input1.text;
    [self.input1 resignFirstResponder];
    int s1 = [h1 intValue];
    NSString *h2 = self.input2.text;
    [self.input2 resignFirstResponder];
    int s2 = [h2 intValue];
    if (s2!=0){
    Calculadora *calc = [[Calculadora alloc]init];
    float result = [calc divide:s1 con:s2];
    self.resultado.text = [ NSString stringWithFormat:@"%.2f",result ];
    } else self.resultado.text = @"No puedes dividir por 0";
}

- (IBAction)tabla:(id)sender {
    SecondViewController *secondViewController = [[SecondViewController alloc]initWithNibName:@"SecondViewController" bundle:nil];
    [self.navigationController pushViewController:secondViewController animated:NO];
}

-(BOOL) textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    if([string isEqualToString:@"\n"])
    {
        [textField resignFirstResponder];
        return NO;
    }
    return YES;
}


@end
