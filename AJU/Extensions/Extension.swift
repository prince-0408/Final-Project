

import UIKit

extension UserDefaults{

    enum UserDefaultsKeys : String {
        case isRegistered
        case userName
        case password
        case email
    }
    
    //MARK: Check Login
    func setRegistered(value: Bool) {
        set(value, forKey: UserDefaultsKeys.isRegistered.rawValue)
        //synchronize()
    }

    //MARK: Save User Data
    func setUserName(value: String){
        set(value, forKey: UserDefaultsKeys.userName.rawValue)
        //synchronize()
    }
    
    func setEmail(value: String){
        set(value, forKey: UserDefaultsKeys.email.rawValue)
        //synchronize()
    }
    
    func setPassword(value: String){
        set(value, forKey: UserDefaultsKeys.password.rawValue)
        //synchronize()
    }

    func isRegistered()-> Bool {
        return bool(forKey: UserDefaultsKeys.isRegistered.rawValue)
    }
    
    //MARK: Retrieve User Data
    func getUserName() -> String? {
        return string(forKey: UserDefaultsKeys.userName.rawValue)
    }
    
    func getPassword() -> String {
        return string(forKey: UserDefaultsKeys.password.rawValue)!
    }
    
    func getEmail() -> String {
        return string(forKey: UserDefaultsKeys.email.rawValue)!
    }
}
