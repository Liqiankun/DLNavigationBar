//
//  ViewController.m
//  UINavigationController
//
//  Created by FT_David on 16/9/21.
//  Copyright © 2016年 FT_David. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@property(nonatomic,strong)UIButton *button;

@end

@implementation ViewController

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [[self transitionCoordinator] animateAlongsideTransition:^(id<UIViewControllerTransitionCoordinatorContext>  _Nonnull context) {
        self.navigationController.navigationBar.translucent =  NO;
        self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
        [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
        self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
        
    } completion:nil];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.button =[[UIButton alloc] initWithFrame:CGRectMake(0,0, 50, 50)];
    [self.button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.button setTitle:@"Push" forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    self.button.center = self.view.center;
    [self.view addSubview:self.button];
    
}

-(void)buttonAction
{
    [self.navigationController pushViewController:[[SecondViewController alloc] init] animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
