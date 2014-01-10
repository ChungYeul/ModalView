//
//  ModalViewController.m
//  ModalView
//
//  Created by SDT-1 on 2014. 1. 10..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import "ModalViewController.h"
#import "ViewController.h"
@interface ModalViewController ()

@end

@implementation ModalViewController
- (IBAction)closeModalVC:(id)sender {
    NSDictionary *modalMsg = @{@"modalmsg":self.modalInput.text};
    [[NSNotificationCenter defaultCenter] postNotificationName:@"ModalMsg" object:nil userInfo:modalMsg];
    
//    ViewController *mainVC = (ViewController *) self.presentingViewController;
//    mainVC.mainInput.text = self.modalInput.text;
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewWillAppear:(BOOL)animated {
    self.modalInput.text = self.msg;
}

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
