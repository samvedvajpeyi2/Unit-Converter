//
//  ViewController.h
//  Unit Converter
//
//  Created by samved vajpeyi on 6/10/16.
//  Copyright © 2016 samved vajpeyi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource>
@property (strong, nonatomic) IBOutlet UIPickerView *pickerType;
@property (strong, nonatomic) IBOutlet UIPickerView *pickerUnits;
@property (strong, nonatomic) IBOutlet UITextField *txtValue;
@property (strong, nonatomic) IBOutlet UILabel *lblResult;


@end

