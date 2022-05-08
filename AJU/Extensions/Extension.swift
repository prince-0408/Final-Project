

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
    
    func setUserData(value: [String:String], username:String){
        set(value, forKey: username)
        var usersArray = UserDefaults.standard.object(forKey: "users") as? [String] ?? []
        if !usersArray.contains(username) {
            usersArray.append(username)
            UserDefaults.standard.set(usersArray, forKey: "users")
        }
    }
    func getUserDetails(value:String) -> [String:String] {
        let userDetails = UserDefaults.standard.object(forKey: value) as? [String:String] ?? [:]
        return userDetails
    }
    
    func isUsersAvailable() -> [String]{
        let users: [String] = UserDefaults.standard.object(forKey: "users") as? [String] ?? []
        return users
    }
}


extension UIViewController {
    func showAlert(message: String, title: String = "") {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion: nil)
    }
}

