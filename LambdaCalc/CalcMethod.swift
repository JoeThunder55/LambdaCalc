//
//  CalcMethod.swift
//  LambdaCalc
//
//  Created by Aaron on 7/20/19.
//  Copyright © 2019 AlphaGrade, INC. All rights reserved.
//

import UIKit

enum Type: String {
    case multiply
    case add
    case divide
    case minus
}

    struct Calculate {
        
        
        let a: Int
        let b: Int
        let type: Type?
       
        
        func operation() -> Int {
            switch type {
            case .multiply?:
                let c = a * b
                return c
            case .minus?:
                let c = a * b
                return c
            case .add? :
                let c = a + b
                return c
            case .divide?:
                let c = a / b
                return c
            default: return 0
            }
    
        }

}





