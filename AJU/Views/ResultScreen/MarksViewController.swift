//
//  MarksViewController.swift
//  AJU
//
//  Created by Anand on 03/03/22.
//

import UIKit
import Charts


class MarksViewController: UIViewController, ChartViewDelegate {
    
    @IBOutlet weak var pieView: PieChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
    }
    
    func setupPieChart() {
        pieView.chartDescription?.enabled = false
        pieView.drawHoleEnabled = false
        pieView.rotationAngle = 90
        pieView.rotationEnabled = false
        pieView.isUserInteractionEnabled = false
        
        func setData() {
            let set1 = PieChartDataSet(entries: entries, label: "Hello")
            let data = PieChartData(dataSet: set1)
            pieView.data = data
        }
        
        
        var entries: [PieChartDataEntry] = Array()
        entries.append(PieChartDataEntry(value: 50.0, label: "TakeHome"))
        entries.append(PieChartDataEntry(value: 40.0, label: "TakeHome"))
        entries.append(PieChartDataEntry(value: 30.0, label: "TakeHome"))
        entries.append(PieChartDataEntry(value: 20.0, label: "TakeHome"))
        entries.append(PieChartDataEntry(value: 10.0, label: "TakeHome"))
    
        
    
    }
}
