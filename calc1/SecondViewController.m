//
//  SecondViewController.m
//  calc1
//
//  Created by Xavier Ferre on 12/06/13.
//  Copyright (c) 2013 Laboratorio Ingeniería Software. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()
- (void)iniciaArray;

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Tabla";
    [self iniciaArray];
    self.tabla.delegate = self;
    self.tabla.dataSource = self;
    //[self.tabla reloadData];
    //self.view = self.tabla;
    // Do any additional setup after loading the view from its nib.
}

- (void)iniciaArray{
    /*
    self.Informacion = [NSMutableArray array];
    NSMutableArray * temp1 = [[NSMutableArray alloc]initWithObjects:@"a",@"b", nil];
    NSMutableArray * temp2 = [[NSMutableArray alloc]initWithObjects:@"c",@"d",@"e", nil];
    NSMutableArray * temp3 = [[NSMutableArray alloc]initWithObjects:@"f", nil];
    [self.Informacion addObject:temp1];
    [self.Informacion addObject:temp2];
    [self.Informacion addObject:temp3];
    */
    self.Informacion = [NSMutableArray array];
    NSMutableArray *temp;
    int dato = (int)'A';
    for (int i=0; i<4; i++){
        temp = [NSMutableArray array];
        for (int j=0; j<7 && dato<=(int)'Z'; j++)
            [temp addObject:[NSString stringWithFormat:@"%c", (char)(dato++)]];
        [self.Informacion addObject:temp];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tabla {
    //NSLog(@"%@",[NSString stringWithFormat:@"%d",[self.Informacion count]]);
    return [self.Informacion count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Number of rows is the number of time zones in the region for the specified section.
    //if (section==0) return 2;
    //else return 3;
    //NSMutableArray * temp1 = [self.Informacion objectAtIndex:section];
    //int id = [temp1 count];
    //NSString * text = [NSString stringWithFormat:@"son %d", id];
    //NSLog(@"%@",text);
    return [[self.Informacion objectAtIndex:section] count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    // The header for the section is the region name -- get this from the region at the section index.
    NSString * headerText = [NSString stringWithFormat:@"Sección %d",section+1];
    return headerText;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *MyIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault  reuseIdentifier:MyIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    NSString * cellText = [[self.Informacion objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    //NSLog(@"%@",cellText);
    cell.textLabel.text = cellText;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //NSLog(@"seccion  %d linea %d",indexPath.section,indexPath.row);
    NSString * name = [[self.Informacion objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    ThirdViewController *thirdViewController = [[ThirdViewController alloc]initWithNibName:@"ThirdViewController" bundle:nil name:name];
    [self.navigationController pushViewController:thirdViewController animated:YES];
}



@end
