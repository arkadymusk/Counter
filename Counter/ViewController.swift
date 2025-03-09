//
//  ViewController.swift
//  Counter
//
//  Created by Аркадий Червонный on 09.03.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelCounter: UILabel!
    
    @IBOutlet weak var textViewChangeHistory: UITextView!
    
    private var counter: Int = 0
    
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        return formatter
    }
    private var dateString: String {
        let date = dateFormatter
        let dateString = date.string(from: Date())
        return dateString
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func buttonPlus(_ sender: Any) {
        counter += 1
        labelCounter.text = "Значение счетчика: \(counter)"
        textViewChangeHistory.text += " [\(dateString)]: значение изменено на +1\n"
    }
    
    @IBAction func buttonMinus(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            labelCounter.text = "Значение счетчика: \(counter)"
            textViewChangeHistory.text += " [\(dateString)]: значение изменено на -1\n"
        } else {
            textViewChangeHistory.text += " [\(dateString)]: попытка уменьшить значение счетчика ниже 0\n"
        }
        
    }
    
    @IBAction func buttonReset(_ sender: Any) {
        counter = 0
        labelCounter.text = "Значение счетчика: \(counter)"
        textViewChangeHistory.text += " [\(dateString)]: значение сброшено\n"
    }
}

