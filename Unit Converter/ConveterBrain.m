//
//  ConveterBrain.m
//  Unit Converter
//
//  Created by samved vajpeyi on 6/10/16.
//  Copyright © 2016 samved vajpeyi. All rights reserved.
//

#import "ConveterBrain.h"

@implementation ConveterBrain
- (double) convertUnits:(NSString*) type firstUnit:(NSString*) fromUnit secondUnit:(NSString*) toUnit value:(NSString*) inputValue {
    
    double finalVal;
    double iniVal = inputValue.doubleValue;
    
    if ([type isEqualToString:@"Area"]){
        
        if ([fromUnit isEqualToString:@"Square Km"]){
            if ([toUnit isEqualToString:@"Square Km"]){
                finalVal = iniVal;
            }
            else if ([toUnit isEqualToString:@"Square meter"]){
                finalVal = (iniVal*1000000);
            }
            else if ([toUnit isEqualToString:@"Square foot"]){
                finalVal = (iniVal*1000000*10.7639);
            }
        }//area-sqkm
        else if ([fromUnit isEqualToString:@"Square meter"]){
            if ([toUnit isEqualToString:@"Square Km"]){
                finalVal = (iniVal/1000000);
            }
            else if ([toUnit isEqualToString:@"Square meter"]){
                finalVal = iniVal;
            }
            else if ([toUnit isEqualToString:@"Square foot"]){
                finalVal = (iniVal*10.7639);
            }
        }//area-smeter
        else if ([fromUnit isEqualToString:@"Square foot"]){
            if ([toUnit isEqualToString:@"Square Km"]){
                finalVal = ((iniVal*0.092903)/1000000);
            }
            else if ([toUnit isEqualToString:@"Square meter"]){
                finalVal = iniVal*0.092903;
            }
            else if ([toUnit isEqualToString:@"Square foot"]){
                finalVal = iniVal;
            }
        }//area-sfoot
        else{
            return 0;
        }
    } //Area
    
    
    else if([type isEqualToString:@"Length"]){
        
        if ([fromUnit isEqualToString:@"Meter"]){
            if ([toUnit isEqualToString:@"Meter"]){
                finalVal = iniVal;
            }
            else if ([toUnit isEqualToString:@"Kilometer"]){
                finalVal = (iniVal*0.001);
            }
            else if ([toUnit isEqualToString:@"Mile"]){
                finalVal = (iniVal*0.000621371);
            }
            else if ([toUnit isEqualToString:@"Foot"]){
                finalVal = (iniVal*3.28084);
            }
        }//legnth-Meter
        else if ([fromUnit isEqualToString:@"Kilometer"]){
            if ([toUnit isEqualToString:@"Meter"]){
                finalVal = (iniVal*1000);
            }
            else if ([toUnit isEqualToString:@"Kilometer"]){
                finalVal = iniVal;
            }
            else if ([toUnit isEqualToString:@"Mile"]){
                finalVal = (iniVal*0.621371);
            }
            else if ([toUnit isEqualToString:@"Foot"]){
                finalVal = (iniVal*3280.84);
            }
        }//legnth-Kilometer
        else if ([fromUnit isEqualToString:@"Mile"]){
            if ([toUnit isEqualToString:@"Meter"]){
                finalVal = (iniVal*1609.34);
            }
            else if ([toUnit isEqualToString:@"Kilometer"]){
                finalVal = (iniVal*1.60934);
            }
            else if ([toUnit isEqualToString:@"Mile"]){
                finalVal = iniVal;
            }
            else if ([toUnit isEqualToString:@"Foot"]){
                finalVal = (iniVal*5280);
            }
        }//legnth-Mile
        else if ([fromUnit isEqualToString:@"Foot"]){
            if ([toUnit isEqualToString:@"Meter"]){
                finalVal = (iniVal*0.3048);
            }
            else if ([toUnit isEqualToString:@"Kilometer"]){
                finalVal = (iniVal*0.0003048);
            }
            else if ([toUnit isEqualToString:@"Mile"]){
                finalVal = (iniVal*0.000189394);
            }
            else if ([toUnit isEqualToString:@"Foot"]){
                finalVal = iniVal;
            }
        }//legnth-Foot
        else{
            return 0;
        }
    }//Length
    
    
    else if([type isEqualToString:@"Temperature"]){
        if ([fromUnit isEqualToString:@"Celsius"]){
            if ([toUnit isEqualToString:@"Celsius"]){
                finalVal = iniVal;
            }
            else if ([toUnit isEqualToString:@"Fahrenheit"]){
                finalVal = ((iniVal*1.8)+32);
            }
            else if ([toUnit isEqualToString:@"Kelvin"]){
                finalVal = (iniVal+273.15);
            }
        }//Temp-celsius
        else if ([fromUnit isEqualToString:@"Fahrenheit"]){
            if ([toUnit isEqualToString:@"Celsius"]){
                finalVal = ((iniVal-32)/1.8);
            }
            else if ([toUnit isEqualToString:@"Fahrenheit"]){
                finalVal = iniVal;
            }
            else if ([toUnit isEqualToString:@"Kelvin"]){
                finalVal = ((iniVal+459.67)*0.5555556);
            }
        }//Temp-fahren
        else if ([fromUnit isEqualToString:@"Kelvin"]){
            if ([toUnit isEqualToString:@"Celsius"]){
                finalVal = (iniVal-273.15);
            }
            else if ([toUnit isEqualToString:@"Fahrenheit"]){
                finalVal = ((iniVal*0.5555556)-459.67);
            }
            else if ([toUnit isEqualToString:@"Kelvin"]){
                finalVal = iniVal;
            }
        }//Temp-kelvin
        else{
            return 0;
        }
    }//Temperature
    
    
    else if([type isEqualToString:@"Speed"]){
        if ([fromUnit isEqualToString:@"Km/h"]){
            if ([toUnit isEqualToString:@"Km/h"]){
                finalVal = iniVal;
            }
            else if ([toUnit isEqualToString:@"Miles/h"]){
                finalVal = (iniVal*0.621371);
            }
            else if ([toUnit isEqualToString:@"Meter/sec"]){
                finalVal = (iniVal*0.2777776918389111);
            }
        }//Speed-kmh
        else if ([fromUnit isEqualToString:@"Miles/h"]){
            if ([toUnit isEqualToString:@"Km/h"]){
                finalVal = (iniVal*1.60934);
            }
            else if ([toUnit isEqualToString:@"Miles/h"]){
                finalVal = iniVal;
            }
            else if ([toUnit isEqualToString:@"Meter/sec"]){
                finalVal = (iniVal*0.44704);
            }
        }//Speed-mp/h
        else if ([fromUnit isEqualToString:@"Meter/sec"]){
            if ([toUnit isEqualToString:@"Km/h"]){
                finalVal = (iniVal*3.6);
            }
            else if ([toUnit isEqualToString:@"Miles/h"]){
                finalVal = (iniVal*2.23694);
            }
            else if ([toUnit isEqualToString:@"Meter/sec"]){
                finalVal = iniVal;
            }
        }//Speed-mp/s
        
        
        else{
            return 0;
        }
    }//SPEED
    
    
    else{
        return 0;
    }//default
    return finalVal;
}
@end
