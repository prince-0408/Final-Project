//
//  MarksViewController.swift
//  AJU
//
//  Created by Anand on 03/03/22.
//

import UIKit
import Charts

class MarksViewController: UIViewController {
    @IBOutlet weak var pieView: PieChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupPieChart()
    }
    func setupPieChart() {
        pieView.chartDescription?.enabled = false
        pieView.drawHoleEnabled = true
        pieView.rotationAngle = 0
        pieView.rotationEnabled = true
        pieView.isUserInteractionEnabled = true
        
        
        var entries: [PieChartDataEntry] = Array()
        entries.append(PieChartDataEntry(value: 50.0, label: "TakeOut"))
        entries.append(PieChartDataEntry(value: 40.0, label: "findOut"))
        entries.append(PieChartDataEntry(value: 30.0, label: "Killout"))
        entries.append(PieChartDataEntry(value: 20.0, label: "Water"))
        entries.append(PieChartDataEntry(value: 10.0, label: "meals"))
    
        let dataSet = PieChartDataSet(entries: entries, label: "")
        
        let c1 = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
        let c2 = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        let c3 = #colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1)
        let c4 = #colorLiteral(red: 0.7466754317, green: 0.1948618889, blue: 0.3354617953, alpha: 1)
        let c5 = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        
        dataSet.colors = [c1, c2, c3, c4, c5]
        dataSet.drawValuesEnabled = false
        
        pieView.data = PieChartData(dataSet: dataSet)
        pieView.animate(xAxisDuration: 1.5)
    }
}
