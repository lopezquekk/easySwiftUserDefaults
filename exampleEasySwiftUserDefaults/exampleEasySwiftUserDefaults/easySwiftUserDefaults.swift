//
//  easySwiftUserDefaults.swift
//  exampleEasySwiftUserDefaults
//
//  Created by Imac Webpro 2 on 13/01/17.
//  Copyright © 2017 webprogramo. All rights reserved.
//

import Foundation


class easySwiftUserDefaults {
    
    
    static let defaults = UserDefaults.standard
    
    
    private static func save(type:String, key:String, value:Any) {
        defaults.set(value, forKey: key)
    }
    
    //Guardar datos
    static func set(key:String, value:String) {
        save(type: "String", key: key, value: value)
    }
    
    static func set(key:String, value:Bool) {
        save(type: "Bool", key: key, value: value)
    }
    
    static func set(key:String, value:Int) {
        save(type: "Int", key: key, value: value)
    }
    
    static func set(key:String, value:Double) {
        save(type: "Double", key: key, value: value)
    }
    
    static func set(key:String, value:Any) {
        save(type: "Any", key: key, value: value)
    }
    

    

    //Obtener datos
    static func getString(key:String)->String {
        var data = easySwiftUserDefaults.defaults.string(forKey: key)
        if data == nil {
            data = ""
        }
        
        return data!
    }
    
    static func getBool(key:String)->Bool {
        let data = easySwiftUserDefaults.defaults.bool(forKey: key) as Bool
        
        return data
    }
    
    static func getInt(key:String)->Int {
        let data = easySwiftUserDefaults.defaults.integer (forKey: key)
        
        return data
    }
    
    static func getDouble(key:String)->Double {
        let data = easySwiftUserDefaults.defaults.double(forKey: key)

        return data
    }
    
    static func getObject(key:String)->Any?{
        let data = easySwiftUserDefaults.defaults.object(forKey: key)
        
        return data
    }
}
