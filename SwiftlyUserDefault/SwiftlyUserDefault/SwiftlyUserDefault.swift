//
//  SwiftlyUserDefault.swift
//  SwiftlyUserDefault
//
//  Created by saenglin on 2019/12/27.
//  Copyright © 2019 linsaeng. All rights reserved.
//

import Foundation

public protocol SwiftlyUserDefaultable {
    var key: String { get }
}

public class SwiftlyUserDefault: NSObject {
    
    private static let db = UserDefaults.standard

    private override init() { super.init() }
    
    @discardableResult
    public static func setValue<T>(_ key: SwiftlyUserDefaultable, value: T) -> Bool {
        db.setValue(value, forKey: key.key)
        return db.synchronize()
    }
    
    public static func getValue<T>(_ key: SwiftlyUserDefaultable) -> T? {
        return db.value(forKey: key.key) as? T
    }
    
    @discardableResult
    public static func deleteValue(_ key: SwiftlyUserDefaultable) -> Bool {
        db.removeObject(forKey: key.key)
        return db.synchronize()
    }
    
    public static func deleteAllValue(_ keys: SwiftlyUserDefaultable...) {
        for key in keys {
            self.deleteValue(key)
        }
    }
}
