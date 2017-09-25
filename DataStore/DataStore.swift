//
//  DataStore.swift
//  DataStore
//
//  Created by Robert Bevilacqua on 25-09-17.
//  Copyright © 2017 Robert Bevilacqua. All rights reserved.
//

import Foundation

public enum DataStoreType {
    case UserDefaults
}

public class DataStore {
    private init() {}
    
    public static func save(data: AnyObject, forKey key: String, in store: DataStoreType) {
        switch store {
        case .UserDefaults:
            UserDefaults.standard.set(data, forKey: key)
        }
    }
    
    public static func read(forKey key: String, in store: DataStoreType) -> AnyObject? {
        switch store {
        case .UserDefaults:
            return UserDefaults.standard.object(forKey: key) as AnyObject
        }
    }
    
    public static func delete(forKey key: String, in store: DataStoreType) {
        switch store {
        case .UserDefaults:
            UserDefaults.standard.removeObject(forKey: key)
        }
    }
}
