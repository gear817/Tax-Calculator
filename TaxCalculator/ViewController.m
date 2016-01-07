//
//  ViewController.m
//  TaxCalculator
//
//  Created by Danny Vasquez on 12/22/15.
//  Copyright © 2015 Danny Vasquez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UIButton *onCalculateButtonTapped;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property double caTax;
@property double chiTax;
@property double nyTax;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.caTax = 7.5;
    self.chiTax = 9.25;
    self.nyTax = 4.5;
}
- (IBAction)onCalculateButtonTapped:(id)sender {
    double price = self.priceTextField.text.doubleValue;
    double tax = 0.0;
    switch (self.segmentedControl.selectedSegmentIndex) {
        case 0:
            tax = self.caTax;
            break;
        case 1:
            tax = self.chiTax;
            break;
        case 2:
            tax = self.nyTax;
            break;
    }
    double result = price * tax * 0.01;
    self.resultLabel.text = [NSString stringWithFormat:@"%f", result];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
