//
//  ViewController.swift
//  Area Helper
//
//  Created by Liu, Jason on 2019-10-16.
//  Copyright © 2019 Liu Jason. All rights reserved.
//

import UIKit

class ParallelogramViewController: UIViewController {
    
    @IBOutlet weak var baseInput: UITextField!
    @IBOutlet weak var heightInput: UITextField!
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func areaOfParallelogram(_ sender: Any) {
        guard let base = baseInput.text else {
            return
        }
        guard let height = heightInput.text else {
            return
        }
        guard let baseNumber = Double(base) else { return
            result.text = "Please enter a number for base"
        }
        
        guard let heightNumber = Double(height) else { return
            result.text = "Please enter a number for height"
        }
        
        let area = baseNumber * heightNumber
        let stringArea = String(area)
        let message = """
        The area of the Parallelogram is:
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

