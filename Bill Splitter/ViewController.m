//
//  ViewController.m
//  Bill Splitter
//
//  Created by Nicolas Guerrero on 9/16/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "ViewController.h"
#import "BillCalculator.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UISlider *peopleSlider;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)calculateSplitAmountButtonTapped:(UIButton *)sender {
//    float result = [_billAmountTextField.text floatValue] /_peopleSlider.value;
//    NSString *labelTotal = [NSString stringWithFormat:@"%f", result];
//    _resultLabel.text = labelTotal;
    
    BillCalculator *calc = [[BillCalculator alloc] init];
    NSString *labelTotal = [calc calculateSplit:self.billAmountTextField.text numberOf:self.peopleSlider.value];
    self.resultLabel.text = labelTotal;
}



@end
