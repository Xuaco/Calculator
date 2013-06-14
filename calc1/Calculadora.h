//
//  Calculadora.h
//  calc1
//
//  Created by Laboratorio Ingeniería Software on 10/06/13.
//  Copyright (c) 2013 Laboratorio Ingeniería Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculadora : NSObject

//- (int) opera: (int)a con: (int)b haz: (NSString*)operacion;

- (int) suma: (int)a con: (int)b;
- (int) resta: (int)a con: (int)b;
- (int) multiplica: (int)a con: (int)b;
- (float) divide: (int)a con: (int)b;


@end
