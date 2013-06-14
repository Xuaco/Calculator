//
//  Calculadora.m
//  calc1
//
//  Created by Laboratorio Ingeniería Software on 10/06/13.
//  Copyright (c) 2013 Laboratorio Ingeniería Software. All rights reserved.
//

#import "Calculadora.h"

@implementation Calculadora

/*
- (int) opera: (int)a con: (int)b haz: (NSString *)operacion {
        int resultado = 0;
    if ([operacion isEqualToString:@"+"]) {
        resultado = a + b;
    }
    if ([operacion isEqualToString:@"-"]) {
        resultado = a - b;
    }
    
}*/

- (int) suma: (int)a con: (int)b {
    int resultado = a + b;
    return resultado;
}
- (int) resta: (int)a con: (int)b {
    int resultado = a - b;
    return resultado;
}
- (int) multiplica: (int)a con: (int)b {
    int resultado = a * b;
    return resultado;
}
- (float) divide: (int)a con: (int)b {
    float resultado = (float)a / (float)b;
    return resultado;
}



@end
