//
//  ConveterBrain.h
//  Unit Converter
//
//  Created by samved vajpeyi on 6/10/16.
//  Copyright © 2016 samved vajpeyi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ConveterBrain : NSObject
- (double) convertUnits:(NSString*) type firstUnit:(NSString*) fromUnit secondUnit:(NSString*) toUnit value:(NSString*) inputValue;
@end
