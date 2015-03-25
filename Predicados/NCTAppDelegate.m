//
//  NCTAppDelegate.m
//  Predicados
//
//  Created by Vicente de Miguel on 30/06/14.
//  Copyright (c) 2014 Nicatec Software. All rights reserved.
//

#import "NCTAppDelegate.h"
#import "Algo.h"

@implementation NCTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    [self predicados];
    
    
    
    [self.window makeKeyAndVisible];
    return YES;
}

-(void) predicados {
    
    //creo array de string y busco con predicado
    NSArray *source = @[@"Pepe",@"Manolo",@"Juan",@"Felisa",@"Agapito",@"Pepita",@"Urculo",@"Felix"];
    NSLog(@"Hay %d elementos",[source count]);
    
    //Busco a Pepe
    NSPredicate *pred=[NSPredicate predicateWithFormat:@"self==%@",@"Manolo"];
    
    NSArray *res=[source filteredArrayUsingPredicate:pred];
    NSLog(@"Resultado %d",[res count]);
    
    //buscolos que empiecon por ....
    pred=[NSPredicate predicateWithFormat:@"self contains[cd] %@",@"Feli"];

    NSArray *res1=[source filteredArrayUsingPredicate:pred];
    NSLog(@"Resultado %d",[res1 count]);
    
    //buscamos sobre un objeto
    
    Algo *a=[[Algo alloc]initWithN:@"Fulanito" andApe:@"fff" andEdad:4];
    Algo *b=[[Algo alloc]initWithN:@"Zutanito" andApe:@"kfdiofko" andEdad:87];
    NSArray *sourceobj=[NSArray arrayWithObjects:a,b,nil];
    pred=[NSPredicate predicateWithFormat:@"self.nombre=%@",@"Fulanito"];
    NSArray *res2=[sourceobj filteredArrayUsingPredicate:pred];
    NSLog(@"Resultado %d",[res2 count]);
    
    //compruebo si existe
    int z=[source indexOfObject:@"Juan"];
    NSLog(@"Juan esta en pos %d",z);
    
    BOOL x=[source containsObject:@"Agapitoh"];
    NSLog(@"existe %d",x);
    
    //con objketo
    z=[sourceobj indexOfObject:b];
    NSLog(@"Zutanito esta en pos %d",z);
    
    x=[sourceobj containsObject:a];
    NSLog(@"existe %d",x);
    
    //creo un bojeto nuevo pero igual a uno existente y lo busco
    Algo *c=[[Algo alloc]initWithN:@"Zutanito" andApe:@"kfdiofko" andEdad:87];
    z=[sourceobj indexOfObject:c];
    NSLog(@"obj c esta en pos %d",z);
    
    x=[sourceobj containsObject:c];
    NSLog(@"existe obj c = %d",x);
    
    //buscando en obj con un nombre
    pred=[NSPredicate predicateWithFormat:@"self.nombre=%@",@"Zutanito"];
    
    NSArray *res3=[sourceobj filteredArrayUsingPredicate:pred];
    NSLog(@"hay %d",[res3 count]);
    
    
}

@end
