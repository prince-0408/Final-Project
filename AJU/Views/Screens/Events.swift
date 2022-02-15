import UIKit

class Events {
    
    var title = ""
    var imageEvents : UIImage
    var color: UIColor
    
    
    init(title:String , imageEvents :UIImage , color: UIColor  ) {
        self.title = title
        self.imageEvents = imageEvents
        self.color = color
        
    }
    
    static func FetchEvents () -> [Events]{
        
        return [ Events(title: "The Art of Sketching ", imageEvents: UIImage(named: "1" )!, color: UIColor(red: 63/255.0, green: 71/255.0, blue: 80/255.0, alpha: 0.8)) ,
                 Events(title: " Watercolor Techniques", imageEvents: UIImage(named: "2" )!, color: UIColor(red: 218/255.0, green: 246/255.0, blue: 196/255.0, alpha: 0.8)),
                 Events(title: "llustration Techniques ", imageEvents: UIImage(named: "3" )!, color: UIColor(red: 254/255.0, green: 245/255.0, blue: 240/255.0, alpha: 0.8)),
                 Events(title: " Digital Illustration ", imageEvents: UIImage(named: "4" )!, color: UIColor(red: 150/255.0, green: 193/255.0, blue: 215/255.0, alpha: 0.8))
        ]
        
    }
}




