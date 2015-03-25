//
//  Algo.m
//  Predicados
//
//  Created by Vicente de Miguel on 30/06/14.
//  Copyright (c) 2014 Nicatec Software. All rights reserved.
//

#import "Algo.h"

@implementation Algo

-(id)initWithN:(NSString *)nom andApe:(NSString *)ape andEdad:(int)ed {
    
    
    if ( [self init] ) {
        
        _nombre=nom;
        _apellido=ape;
        _edad=ed;
        
    }
    
    return self;
}



@end
