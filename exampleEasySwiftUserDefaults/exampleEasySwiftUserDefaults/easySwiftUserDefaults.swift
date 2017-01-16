//
//  easySwiftUserDefaults.swift
//  exampleEasySwiftUserDefaults
//
//  Created by Imac Webpro 2 on 13/01/17.
//  Copyright © 2017 webprogramo. All rights reserved.
//

import Foundation

open class easySwiftUserDefaults {
    
    
    var defaults = UserDefaults.standard
    //defaults.setObject("Coding Explorer", forKey: "userNameKey")
    
    init() {
        
    }
    
    func save(type:String,key:String, value:Any?)->Bool{
        
        switch type {
            case "String":
                defaults.set(value, forKey: key)
            case "Bool":
                defaults.set(value, forKey: key)
            case "Integer":
                defaults.set(value, forKey: key)
            case "Double":
                defaults.set(value, forKey: key)
            case "Object":
                defaults.set(value, forKey: key)
            case "URL":
                defaults.set(value, forKey: key)
            default:
                defaults.set(value, forKey: key)
        }
        
       return true
    }
    
    func change()->Bool{
        
        return true
    }
    
    func getVal(type:String, key:String)->Any?{
        
        
        let response:Any?
        switch type {
        case "String":
            response  = defaults.string(forKey: key)
        case "Bool":
            response  = defaults.string(forKey: key)
        case "Integer":
            response  = defaults.string(forKey: key)
        case "Double":
            response  = defaults.string(forKey: key)
        case "Object":
            response  = defaults.string(forKey: key)
        case "URL":
            response  = defaults.string(forKey: key)
        default:
            response  = defaults.string(forKey: key)
        }
        
        return response
    }

    
    
    
}
