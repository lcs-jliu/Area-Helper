//
//  ViewController.swift
//  Area Helper
//
//  Created by Liu, Jason on 2019-10-16.
//  Copyright © 2019 Liu Jason. All rights reserved.
//

import UIKit

class CircleViewController: UIViewController {
    
    @IBOutlet weak var radiusInput: UITextField!
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func areaOfCircle(_ sender: Any) {
        guard let radius = radiusInput.text else {
            return
        }
        guard let radiusNumber = Double(radius) else { return
            result.text = "Please enter a number for radius"
        }
        
        let area = pow(radiusNumber, 2) * Double.pi
        let stringArea = String(area)
        let message = """
        The area of the Cicle is:
        \(stringArea)
        Square Units
        """
        
        result.text = message
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
}

