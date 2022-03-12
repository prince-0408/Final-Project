

import UIKit
import Charts

class Quotes  {
    
    let imageQuotes : UIImage
    
    init(imageQuotes: UIImage) {
        self.imageQuotes = imageQuotes
    }
    static func FetchQuotes () -> [Quotes]{
        
        return [Quotes(imageQuotes: #imageLiteral(resourceName: "chart")),
                Quotes(imageQuotes: #imageLiteral(resourceName: "logo"))
        ]
    }
}
