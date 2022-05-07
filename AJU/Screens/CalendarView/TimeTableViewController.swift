
import UIKit
import SwiftUI

var selectedDate = Date()

class TimeTableViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDelegate, UITableViewDataSource, GetEventDetailsDelegate {
    @IBOutlet weak var monthLable: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!

    var totalSquares = [Date]()
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        setCellsView()
        setMonthView()
    }
    
    func setCellsView(){
        let width = (collectionView.frame.size.width - 2) / 8
        let height = (collectionView.frame.size.height - 2)
        
        let flowLayout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        flowLayout.itemSize = CGSize(width: width, height: height)
    }
    
    func setMonthView(){
        totalSquares.removeAll()
        
        var current = CalendarHelper().sundayForDate(date: selectedDate)
        let nextSunday = CalendarHelper().addDays(date: current, days: 7)
        
        while (current < nextSunday){
            totalSquares.append(current)
            current = CalendarHelper().addDays(date: current, days: 1)
        }
        monthLable.text = CalendarHelper().monthString(date: selectedDate)
            + " " + CalendarHelper().yearString(date: selectedDate)
        collectionView.reloadData()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        totalSquares.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "calCell", for: indexPath) as! CalendarCell
        
        let date = totalSquares[indexPath.item]
        cell.dayOfMonth.text = String(CalendarHelper().dayOfMonth(date: totalSquares[indexPath.item]))
        
        if (date == selectedDate){
            cell.backgroundColor = UIColor(red: 21/255, green: 128/255, blue: 123/255, alpha: 0.5)
        }
        else {
            cell.backgroundColor = UIColor.white
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        selectedDate = totalSquares[indexPath.item]
        collectionView.reloadData()
    }
    
    @IBAction func previousWeek(_ sender: Any){
        selectedDate = CalendarHelper().addDays(date: selectedDate, days: -7)
        setMonthView()
    }
    //MARK: - Week Button
    @IBAction func nextWeek(_ sender: Any){
        selectedDate = CalendarHelper().addDays(date: selectedDate, days: 7)
        setMonthView()
    }
    
    override open var shouldAutorotate: Bool{
        return false
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return Event().eventsForDate(date: selectedDate).count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID") as! EventCell
        let event = Event().eventsForDate(date: selectedDate)[indexPath.row]
        cell.eventLabel.text = event.name + " " + CalendarHelper().timeString(date: event.date) + " to " + CalendarHelper().timeString(date: event.date)
        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }
    //MARK: - Add Event Button
    @IBAction func addEventBtn(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let myAlert = storyboard.instantiateViewController(withIdentifier: "alert") as! AlertViewController
        myAlert.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        myAlert.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        myAlert.getEventDetailsDelegate = self
        self.present(myAlert, animated: true, completion: nil)
    }
    func sendEventDataToTimeTableVC(event: Event?) {
        tableView.reloadData()
    }
}
