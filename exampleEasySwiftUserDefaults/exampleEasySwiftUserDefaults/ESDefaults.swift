//
//  easySwiftUserDefaults.swift
//  exampleEasySwiftUserDefaults
//
//  Created by Imac Webpro 2 on 13/01/17.
//  Copyright © 2017 webprogramo. All rights reserved.
//

import Foundation


open class ESDefaults {
    static let defaults = UserDefaults.standard
    
    //Guardar datos
    static func set(key:String, value:Any) {
        defaults.set(value, forKey: key)
    }
    
    
    //Obtener datos
    static func getString(key:String)->String {
        var data = ESDefaults.defaults.string(forKey: key)
        if data == nil {
            data = ""
        }
        
        return data!
    }
    
    static func getBool(key:String)->Bool {
        let data = ESDefaults.defaults.bool(forKey: key) as Bool
        
        return data
    }
    
    static func getInt(key:String)->Int {
        let data = ESDefaults.defaults.integer (forKey: key)
        
        return data
    }
    
    static func getDouble(key:String)->Double {
        let data = ESDefaults.defaults.double(forKey: key)

        return data
    }
    
    //Obetener datos desde un array
    static func getStringArray(key:String)->[String] {
        let data = ESDefaults.defaults.array(forKey: key)
        
        if !(data is [String])  {
            return [String]()
        }
        
        return data! as! [String]
    }
    
    static func getBoolArray(key:String)->[Bool] {
        let data = ESDefaults.defaults.array(forKey: key)
        
        if !(data is [Bool])  {
            return [Bool]()
        }
        
        return data! as! [Bool]
    }
    
    static func getIntArray(key:String)->[Int] {
        let data = ESDefaults.defaults.array(forKey: key)
        
        if !(data is [Int])  {
            return [Int]()
        }
        
        return data! as! [Int]
    }
    
    static func getDoubleArray(key:String)->[Double] {
        let data = ESDefaults.defaults.array(forKey: key)
        
        if !(data is [Double])  {
            return [Double]()
        }
        
        return data! as! [Double]
    }
    
    
    //Obtener cualquier elemento
    static func getObject(key:String)->Any?{
        let data = ESDefaults.defaults.object(forKey: key)
        
        return data
    }
}
