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
            return response as? String ?? String()
        case "Bool":
            response  = defaults.string(forKey: key)
            return response as? Bool ?? Bool()
        case "Integer":
            response  = defaults.string(forKey: key)
            return response as? Int ?? Int()
        case "Double":
            response  = defaults.string(forKey: key)
            return response as? Double ?? Double()
        case "Object":
            response  = defaults.object(forKey: key)
            return response
        case "Array":
            response  = defaults.object(forKey: key)
            return response as? [String] ?? [String]()
        case "Dictionary":
            response  = defaults.object(forKey: key)
            return response as? [String: String] ?? [String: String]()
        default:
            print("Select a var type")
            response = ""
        }
        
        return response
    }

    
    
    
}
