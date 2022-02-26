

import UIKit

class Quotes  {
    
    var imageQuotes : UIImage
    
    init(imageQuotes: UIImage) {
        self.imageQuotes = imageQuotes
    }
    static func FetchQuotes () -> [Quotes]{
        
        return [Quotes(imageQuotes: UIImage(named: "1")!),
                Quotes(imageQuotes: UIImage(named: "2")!)
        ]
    }
}
