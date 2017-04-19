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
    static func getString(key:String)->String? {
        if let data = ESDefaults.defaults.string(forKey: key) {
            return data
        }
        
        return nil
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
    static func getStringArray(key:String)->[String]? {
        
        if let data = ESDefaults.defaults.array(forKey: key) {
            return data as? [String]
        }
        
        return nil
    }
    
    static func getBoolArray(key:String)->[Bool]? {
        if let data = ESDefaults.defaults.array(forKey: key) {
            return data as? [Bool]
        }
        
        return nil
    }
    
    static func getIntArray(key:String)->[Int]? {
        
        if let data = ESDefaults.defaults.array(forKey: key) {
            return data as? [Int]
        }
        
        return nil
    }
    
    static func getDoubleArray(key:String)->[Double]? {
        if let data = ESDefaults.defaults.array(forKey: key) {
            return data as? [Double]
        }
        
        return nil
    }
    
    //Obtener cualquier elemento
    static func getObject(key:String)->Any?{
        let data = ESDefaults.defaults.object(forKey: key)
        
        return data
    }
    
    //Eliminar
    static func remove(key:String) {
        ESDefaults.defaults.removeObject(forKey: key)
    }
}
