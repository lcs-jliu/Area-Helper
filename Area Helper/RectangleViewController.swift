//
//  ViewController.swift
//  Area Helper
//
//  Created by Liu, Jason on 2019-10-16.
//  Copyright © 2019 Liu Jason. All rights reserved.
//

import UIKit

class RectangleViewController: UIViewController {
    
    
    @IBOutlet weak var lengthInput: UITextField!
    @IBOutlet weak var widthInput: UITextField!
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func areaOfRectangle(_ sender: Any) {
        guard let length = lengthInput.text else {
            result.text = "Please enter a value for length"
            return
        }
        guard let width = widthInput.text else {
            result.text = "Please enter a value for width"
            return
        }
        guard let lengthNumber = Double(length) else { return
            result.text = "Please enter a number for length"
        }
        
        guard let widthNumber = Double(width) else { return
             result.text = "Please enter a number for width"
        }
        
        let area = lengthNumber * widthNumber
        let stringArea = String(area)
        result.text = "The area is:\(stringArea)"
    
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
}
