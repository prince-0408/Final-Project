//
//  QuotesCollectionViewCell.swift
//  AJU
//
//  Created by Anand on 17/02/22.
//

import UIKit

class QuotesCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var quotesImageView: UIImageView!
    
    var quote: Quotes! {
        didSet {
            self.updateUI()
        }
        
    }
    
    func updateUI(){
        if let quote = quote {
            quotesImageView.image = quote.imageQuotes
        } else {
            quotesImageView.image = nil
        }
        quotesImageView.layer.cornerRadius = 10.0
        quotesImageView.layer.masksToBounds = true
    }
}
