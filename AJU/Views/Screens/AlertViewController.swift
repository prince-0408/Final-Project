
import UIKit
extension String {
        //Converts String to Int
        public func toInt() -> Int? {
            if let num = NumberFormatter().number(from: self) {
                return num.intValue
            } else {
                return nil
            }
        }

        //Converts String to Double
        public func toDouble() -> Double? {
            if let num = NumberFormatter().number(from: self) {
                return num.doubleValue
            } else {
                return nil
            }
        }

        /// EZSE: Converts String to Float
        public func toFloat() -> Float? {
            if let num = NumberFormatter().number(from: self) {
                return num.floatValue
            } else {
                return nil
            }
        }

        //Converts String to Bool
        public func toBool() -> Bool? {
            return (self as NSString).boolValue
        }
    }
protocol GetEventDetailsDelegate: AnyObject {
        func sendEventDataToTimeTableVC(event: Event?)
    }

class AlertViewController: UIViewController {

    @IBOutlet weak var subNameTF: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var datePicker2: UIDatePicker!
    @IBOutlet weak var roomNumberTF: UITextField!
    
    weak var getEventDetailsDelegate: GetEventDetailsDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.date = selectedDate
    }
    
    @IBAction func saveBtn(_ sender: Any) {
        let newEvent = Event()
        newEvent.id = roomNumberTF.text?.toInt()
        newEvent.name = subNameTF.text
        newEvent.date = datePicker.date
        newEvent.date = datePicker2.date

        eventsList.append(newEvent)
        getEventDetailsDelegate?.sendEventDataToTimeTableVC(event: newEvent)

        navigationController?.popViewController(animated: true)
        self.dismiss(animated: true, completion: nil)

    }
    
    
}
