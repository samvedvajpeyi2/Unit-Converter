//
//  ViewController.m
//  Unit Converter
//
//  Created by samved vajpeyi on 6/10/16.
//  Copyright © 2016 samved vajpeyi. All rights reserved.
//

#import "ViewController.h"
#import "ConveterBrain.h"

@interface ViewController()
@property (nonatomic) NSArray *typeArray;
@property (nonatomic) NSDictionary* unitDict;
@property (nonatomic) NSString* typeSelected;
@property (nonatomic) NSString* firstUnit;
@property (nonatomic) NSString* secondUnit;
@property (nonatomic) ConveterBrain* brain;
@end



@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.txtValue.delegate=self;
    self.pickerType.delegate=self;
    self.pickerUnits.delegate=self;
    // Do any additional setup after loading the view, typically from a nib.
    self.typeArray=@[@"Area",@"Length",@"Temperature",@"Speed"];
    self.unitDict= @{@"Area":@[@"Square Km",@"Square meter",@"Square foot"],
                     @"Length":@[@"Meter",@"Kilometer",@"Mile",@"Foot"],
                     @"Temperature":@[@"Celsius",@"Fahrenheit",@"Kelvin"],
                     @"Speed":@[@"Km/h",@"Miles/h",@"Meter/sec"]};
    self.typeSelected = @"Area";
    self.firstUnit=@"Square Km";
    self.secondUnit=@"Square Km";
    self.brain = [[ConveterBrain alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    if(pickerView == self.pickerType){
        return 1;
    }
    if(pickerView == self.pickerUnits){
        return 2;
    }
    return 0;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [ self.txtValue becomeFirstResponder];
    
    NSString* val = self.txtValue.text;
    double result = [self.brain convertUnits:self.typeSelected firstUnit:self.firstUnit secondUnit: self.secondUnit value:val];
    
    self.lblResult.text = @(result).stringValue;
    [ self.txtValue resignFirstResponder];
    return false;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if(pickerView == self.pickerType){
        return self.typeArray.count;
    }
    if(pickerView == self.pickerUnits){
        return [self.unitDict[self.typeSelected] count];
    }
    return 0;
    
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    if(pickerView == _pickerType){
        self.typeSelected = [self.typeArray objectAtIndex:row];
        [self.pickerUnits reloadAllComponents];
    }
        NSInteger first = [self.pickerUnits selectedRowInComponent:0];
        NSInteger second = [self.pickerUnits selectedRowInComponent:1];
        self.firstUnit = self.unitDict[self.typeSelected][first];
        self.secondUnit = self.unitDict[self.typeSelected][second];
    
    NSString* val = self.txtValue.text;
    double result = [self.brain convertUnits:self.typeSelected firstUnit:self.firstUnit secondUnit: self.secondUnit value:val];
    
    //self.lblResult.text = @(result).stringValue;
    NSString *resultString = [[NSString alloc]
                              initWithFormat: @"%@ %@ = %.2f %@", val, self.firstUnit, result, self.secondUnit];
    self.lblResult.text = resultString;
    

}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if(pickerView == _pickerType){
        return [self.typeArray objectAtIndex:row];
    }
    else
    {
        return self.unitDict[self.typeSelected][row];
    }
}

@end
