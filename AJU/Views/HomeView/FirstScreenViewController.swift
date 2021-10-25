//
//  FirstScreenViewController.swift
//  AJU
//
//  Created by Anand Yadav on 24/10/21.
//

import UIKit

class FirstScreenViewController: UIViewController {
    @IBOutlet weak var viewforTab: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        designableTabBar()
       
    }
    
    func designableTabBar() {
        viewforTab.layer.cornerRadius = viewforTab.frame.size.height / 2
    }

}
