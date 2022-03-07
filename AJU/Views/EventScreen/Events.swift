import UIKit

class Events {
    
    var title = ""
    var eventDetails = ""
    var imageEvents : UIImage
    var color: UIColor
    
    
    
    init(title:String ,eventDetails: String, imageEvents :UIImage , color: UIColor  ) {
        
        self.title = title
        self.eventDetails = eventDetails
        self.imageEvents = imageEvents
        self.color = color
        
        
    }
    
    static func FetchEvents () -> [Events]{
        
        return [ Events(title: "The Art of Sketching ", eventDetails: "Find Out the best", imageEvents: UIImage(named: "First" )!, color: UIColor(red: 63/255.0, green: 71/255.0, blue: 80/255.0, alpha: 0.8)) ,
                 Events(title: " Watercolor Techniques", eventDetails: "life is all about Patients", imageEvents: UIImage(named: "2" )!, color: UIColor(red: 218/255.0, green: 246/255.0, blue: 196/255.0, alpha: 0.8)),
                 Events(title: "llustration Techniques ", eventDetails: "Don't Worry", imageEvents: UIImage(named: "3" )!, color: UIColor(red: 254/255.0, green: 245/255.0, blue: 240/255.0, alpha: 0.8)),
                 Events(title: " Digital Illustration ", eventDetails: "It goes onn", imageEvents: UIImage(named: "4" )!, color: UIColor(red: 150/255.0, green: 193/255.0, blue: 215/255.0, alpha: 0.8))
        ]
        
    }
}




