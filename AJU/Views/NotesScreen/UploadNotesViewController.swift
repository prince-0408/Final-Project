//
//  UploadNotesViewController.swift
//  AJU
//
//  Created by Anand Yadav on 05/11/21.
//

import UIKit

class UploadNotesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func backButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "TabBarView")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    


}
