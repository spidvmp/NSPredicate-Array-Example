//
//  Algo.h
//  Predicados
//
//  Created by Vicente de Miguel on 30/06/14.
//  Copyright (c) 2014 Nicatec Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Algo : NSObject

@property (strong,nonatomic) NSString *nombre;
@property (strong,nonatomic) NSString *apellido;
@property (nonatomic) int edad;

-(id) initWithN:(NSString *)nom andApe:(NSString *)ape andEdad:(int)ed;
@end
