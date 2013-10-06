//
//  ConverterViewController.m
//  temperatureconverter
//
//  Created by Jeremy Reyes on 10/5/13.
//  Copyright (c) 2013 Jeremy Reyes. All rights reserved.
//

#import "ConverterViewController.h"

@interface ConverterViewController ()

@property (weak, nonatomic) IBOutlet UITextField *fahrenheitTextField;
@property (weak, nonatomic) IBOutlet UITextField *celsiusTextField;

- (IBAction)onTap:(id)sender;
- (IBAction)convertToCelsius:(id)sender;
- (IBAction)convertToFahrenheit:(id)sender;

@end

@implementation ConverterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Temperature Converter";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
}

- (IBAction)convertToCelsius:(id)sender {
    if (sender == _fahrenheitTextField) {
        float fahrenheit = [self.fahrenheitTextField.text floatValue];
        float celsius = (fahrenheit - 32) *  5/9;
        self.celsiusTextField.text = [NSString stringWithFormat:@"%f", celsius];
    }
}

- (IBAction)convertToFahrenheit:(id)sender {
    if (sender == _celsiusTextField) {
        float celsius = [self.celsiusTextField.text floatValue];
        float fahrenheit = celsius * 9/5 + 32;
        self.fahrenheitTextField.text = [NSString stringWithFormat:@"%f", fahrenheit];
    }
}


@end
