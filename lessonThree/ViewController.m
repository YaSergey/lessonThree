//
//  ViewController.m
//  lessonThree
//
//  Created by Sergey Yasnetsky on 06.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//
#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray * arrayM;
@property (nonatomic, strong) NSArray * arrayPrices;
@property (nonatomic, strong) NSArray * arrayValues;
@property (nonatomic, strong) NSArray * arrayFortres;
@property (nonatomic, strong) NSArray * arrayDescription;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSString * stringValues = @"cola,pepsi,wisky,boorbon,b52";
    NSString * stringPrices = @"100,120,300,400,600";
    NSString * stringFortres = @"0,0,40,38,20";
    NSString * stringDescription = @"drink coke,бери от жизни все,два по 50,ален делон пьет двойной бурбон,даже и не думай"; // эту строку консоль показывает как число
    
    
    self.arrayM = [NSMutableArray array];
    
    self.arrayValues = [stringValues componentsSeparatedByString:@","];
    self.arrayPrices = [stringPrices componentsSeparatedByString:@","];
    self.arrayFortres = [stringFortres componentsSeparatedByString:@","];
    self.arrayDescription = [stringDescription componentsSeparatedByString:@","];
    
    for (int i=0; i < self.arrayPrices.count; i++) {
        
        NSDictionary *dict = [[NSDictionary alloc] initWithObjectsAndKeys:
                              [self.arrayPrices objectAtIndex: i], @"price",
                              [self.arrayValues objectAtIndex: i], @"value",
                              [self.arrayFortres objectAtIndex: i], @"fortres",
                              [self.arrayDescription objectAtIndex:i], @"Description",
                              nil];
        
        [self.arrayM addObject:dict];
    }
    
    NSLog(@"self.arrayM %@", self.arrayM);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDelegate

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.arrayPrices.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier: simpleTableIdentifier];
    }
    cell.textLabel.text = [self.arrayValues objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [self.arrayPrices objectAtIndex: indexPath.row];
    
    return cell;
    
}

@end
