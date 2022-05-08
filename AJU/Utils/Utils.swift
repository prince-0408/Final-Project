//
//  Utils.swift
//  AJU
//
//  Created by Anand Yadav on 09/05/22.
//

import Foundation

class Utils:NSObject {
    
    static let shared = Utils()
    
    func isUserRegistered(username:String) -> Bool {
        let isUserAvailable = UserDefaults.standard.object(forKey: username) as? [String:String]
        if isUserAvailable != nil {
            return true
        }
        return false
    }
}
