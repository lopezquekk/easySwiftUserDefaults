# easySwiftUserDefaults
A simple and tiny library for using  "Standard User Defaults" in Swift 3.0+

# HOW TO USE IT

        ESDefaults.set(key: "Test", value: "String")
        ESDefaults.set(key: "Test1", value: ["Array","Test"])
        ESDefaults.set(key: "Test2", value: 29)
        ESDefaults.set(key: "Test3", value: true)
        
        
        print(ESDefaults.getString(key: "Test"))
        print(ESDefaults.getStringArray(key: "Test"))
        print(ESDefaults.getInt(key: "Test"))
        print(ESDefaults.getBool(key: "Test"))
        
 # INSTALL IT
 
 For installing this tiny library you need to add the file **ESDefaults.swift** to your project (Sorry, we don't have pod support yet).
 
 We're gonna have pod install soon, be patience :) :)
