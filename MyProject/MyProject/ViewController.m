//
//  ViewController.m
//  MyProject
//
//  Created by JUE DUKE on 14-8-8.
//  Copyright (c) 2014年 JUE DUKE. All rights reserved.
//

#import "ViewController.h"
#import "MyTimeTool.h"

@interface ViewController ()
@property (nonatomic, strong) NSArray *emptyArray;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    NSLog(@"rfc3339DateFormatterGenerate string is %@", [MyTimeTool rfc3339DateFormatterGenerate:[NSDate date] isExtend:YES]);
    
	// Do any additional setup after loading the view, typically from a nib.
    
    self.emptyArray = [[NSArray alloc]init];
    NSDate *testDate = [NSDate date];
    NSLog(@"testDate is %@", testDate);
    [_emptyArray associateValue:testDate withKey:@"testDate"];
    [super viewDidLoad];
    [self performSelector:@selector(afterWhile) withObject:nil afterDelay:10];

}

- (void)afterWhile
{
    NSDate *fetchDate = [self.emptyArray associatedValueForKey:@"testDate"];
    NSLog(@"fetchDate is %@", fetchDate);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
