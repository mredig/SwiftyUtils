//
//  Created by Tom Baranes on 24/04/16.
//  Copyright © 2016 Tom Baranes. All rights reserved.
//

import Foundation

// MARK: - Subscript

public extension UserDefaults {

    public subscript(key: String) -> Any? {
        get {
            return object(forKey: key)
        }
        set {
            set(newValue, forKey: key)
        }
    }

}

// MARK: - Misc

public extension UserDefaults {

    public static func has(key: String) -> Bool {
        return self.standard.has(key: key)
    }

    public func has(key: String) -> Bool {
        return self.dictionaryRepresentation().keys.contains(key)
    }

}

// MARK: - Remove

public extension UserDefaults {

    public func removeAll() {
        for (key, _) in dictionaryRepresentation() {
            removeObject(forKey: key)
        }
    }

}
