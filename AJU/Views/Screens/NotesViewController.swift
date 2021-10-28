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
    @IBAction func addNotesButtonTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "addPdf")
        vc.modalPresentationStyle = .popover
        present(vc, animated: true)
    }
}
