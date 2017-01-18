![alt text](https://raw.githubusercontent.com/lopezquekk/easySwiftUserDefaults/master/ES.png)

# easySwiftUserDefaults
A simple and tiny library for using  "Standard User Defaults" in Swift 3.0+

Forget about write code like this:

        let defaults = UserDefaults.standard
        defaults.set(25, forKey: "Age")
        let array = defaults.object(forKey:"SavedArray") as? [String] ?? [String]()
        //or this, wtf???
        let dict = defaults.object(forKey: "SavedDict") as? [String: String] ?? [String: String]()

# HOW TO USE IT

```swift

        ESDefaults.set(key: "Test", value: "String")
        ESDefaults.set(key: "Test1", value: ["Array","Test"])
        ESDefaults.set(key: "Test2", value: 29)
        ESDefaults.set(key: "Test3", value: true)
        
        
        print(ESDefaults.getString(key: "Test"))
        print(ESDefaults.getStringArray(key: "Test1"))
        print(ESDefaults.getInt(key: "Test2"))
        print(ESDefaults.getBool(key: "Test3"))
        
 ```
        
# INSTALL IT
 
 For installing this tiny library you need to add the file **ESDefaults.swift** to your project (Sorry, we don't have pod support yet).
 
# SUPPORT DATA TYPES

- String
- Array
- String Array
- Int Array
- Double Array
- Object
- Dictionary
- Boolean
- Int
 
 We're gonna have pod install soon, be patience :) :)
