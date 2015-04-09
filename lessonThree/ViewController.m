//
//  ViewController.m
//  lessonThree
//
//  Created by Sergey Yasnetsky on 06.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//
#import "ViewController.h"
#import "imageCell.h"
#import "Data.h"


@interface ViewController ()

@property (nonatomic, strong) NSMutableArray * arrayM;
@property (nonatomic, strong) NSArray * arrayPrices;
@property (nonatomic, strong) NSArray * arrayValues;
@property (nonatomic, strong) NSArray * arrayFortres;
@property (nonatomic, strong) NSArray * arrayDescription;

@property (nonatomic, strong) NSString * stringDescrCola;
@property (nonatomic, strong) NSString * stringDescrPepsi;
@property (nonatomic, strong) NSString * stringDescrWisky;
@property (nonatomic, strong) NSString * stringDescrBoorbon;
@property (nonatomic, strong) NSString * stringDescrB52;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
  _data = [Data fetchData];
    
}
    
    NSString * stringValues = @"cola,pepsi,wisky,boorbon,b52";
    NSString * stringPrices = @"100,120,300,400,600";
    NSString * stringFortres = @"0,0,40,38,20";
    NSString * stringDescription = @"drink coke напитки компании кокакола производятся в америке как поило для идиотов,бери от жизни все а когда нечего брать бери пепси,два по 50 лучший варинат для соблазнения ,ален делон не пьет адеколон он пьет двойной бурбон,даже и не думай брать эту гадость";
    

    
//    NSString * stringCola = @"cola";
//    NSString * stringPepsi = @"Pepsi";
//    NSString * stringWisky = @"Wisky";
//    NSString * stringBoorbon = @"Boorbon";
//
//    self.arrayM = [NSMutableArray array];
//    
//    self.arrayValues = [stringValues componentsSeparatedByString:@","];
//    self.arrayPrices = [stringPrices componentsSeparatedByString:@","];
//    self.arrayFortres = [stringFortres componentsSeparatedByString:@","];
//    self.arrayDescription = [stringDescription componentsSeparatedByString:@","];
//
//    for (int i=0; i < self.arrayPrices.count; i++) {
//    
//    NSMutableDictionary * dict = [[NSMutableDictionary alloc] init];
//    
//    [dict setObject:[self.arrayPrices objectAtIndex:i] forKey:@"prices"];
//    [dict setObject:[self.arrayValues  objectAtIndex:i] forKey:@"Values"];
//        
//    NSString * value = [self.arrayValues objectAtIndex:i];
//        
//        if ([value isEqualToString:@"Cola"]){
//            [dict setObject:stringDescrCola forKey: @"discr"];
//        }
//        else if ([value isEqualToString:@"Pepsi"]){
//            [dict setObject:stringDescrPepsi forKey: @"discr"];
//        }
//        else if ([value isEqualToString:@"Wisky"]){
//            [dict setObject:stringDescrWisky forKey: @"discr"];
//        }
//        else if ([value isEqualToString:@"Boorbon"]){
//            [dict setObject:stringDescrBoorbon forKey: @"discr"];
//        }
//        else if ([value isEqualToString:@"B52"]){
//            [dict setObject:stringDescrB52 forKey: @"discr"];
//            
//        }
//        [self.arrayM addObject:dict];

//        NSDictionary * dict = [[NSDictionary alloc] initWithObjectsAnd: forKeys:
////            [self.arrayPrices objectAtIndex: i], @"price",
////            [self.arrayValues objectAtIndex: i], @"value",
////            [self.arrayFortres objectAtIndex: i], @"fortres",
////            [self.arrayDescription objectAtIndex:i], @"Description",
////                              nil];
////    
////        [self.arrayM addObject:dict];
    
    
//        NSLog(@"self.arrayM %@", self.arrayM);
//}
//


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDelegate

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _data.count;
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"imageCell";
    static NSString *const imageViewId = @"imageCell";
    
    
    imageCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    Data *item = [_data objectAtIndex:indexPath.row];
    cell.valueLabel.text = item.Values;
    cell.pricesLabel.text = item.Prices;
    cell.imageView.image = [UIImage imageNamed: item.imageName];

    
    if (cell == nil) {
        cell = [[imageCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier: simpleTableIdentifier];
    }
    cell.valueLabel.text = [self.arrayValues objectAtIndex:indexPath.row];
    cell.pricesLabel.text = [self.arrayPrices objectAtIndex: indexPath.row];
    cell.fortresLabel.text = [self.arrayFortres objectAtIndex: indexPath.row];
     cell.descriptionLabel.text = [self.arrayDescription objectAtIndex: indexPath.row];
    
    return cell;
    
}

@end
