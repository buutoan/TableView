//
//  ViewController.m
//  tableViewV3
//
//  Created by admin on 9/29/15.
//  Copyright © 2015 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSArray *congthuc;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    congthuc = [NSArray arrayWithObjects:@"Op La", @"Suon bi cha", @"Bo xao Cu Hanh",@"Tom lan bot",@"Muc chien gion",@"Banh bao",@"Hu tieu Nam Vang", nil];
   

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
}
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [congthuc count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identify = @"";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
    }
    
    cell.textLabel.text = [congthuc objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:@"apple1.jpg"];
    cell.backgroundColor = [UIColor redColor];
    return cell;
}
@end
