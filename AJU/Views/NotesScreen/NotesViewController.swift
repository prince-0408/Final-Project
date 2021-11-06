//
//  NotesViewController.swift
//  AJU
//
//  Created by Anand Yadav on 25/10/21.
//

import UIKit

class NotesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func showPdf(_ sender: Any) {
        
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(identifier: "showPdf")
            vc.modalPresentationStyle = .popover
            present(vc, animated: true)
    }
    @IBAction func UploadPdf(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "uploadNotes")
        vc.modalPresentationStyle = .popover
        present(vc, animated: true)
    }
    
    
    
    
}
