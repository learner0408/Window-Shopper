//
//  Hours.swift
//  Window-Shopper
//
//  Created by Ankur Bhayana on 01/02/22.
//

import Foundation
class Hours{
    class func getHours(Wage wage:Double , Price price: Double)->Int{
        return Int(ceil(price/wage))
    }
}
