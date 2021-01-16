//
//  ViewController.swift
//  Basic Calculator IOS
//
//  Created by Ryan Knut Tansey on 16/01/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    var first = 0.0;
    var second = 0.0;
    // 0 - not selected, 1 = +, 2 = -, 3 = x and 4 = /
    var symbol = 0;
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func clearButton(_ sender: Any)
    {
        displayLabel.text = "---"
        first = 0.0;
        second = 0.0;
        symbol = 0;
    }
    
    //not sure If I will implement these
    @IBAction func leftPButton(_ sender: Any)
    {
    
    }
    @IBAction func rightPButton(_ sender: Any)
    {
    
    }
    
    @IBAction func multiplyButton(_ sender: Any)
    {
    
    }
    
    @IBAction func plusButton(_ sender: Any)
    {
        
    }
    
    @IBAction func divideButton(_ sender: Any)
    {
        
    }
    
    @IBAction func minusButton(_ sender: Any)
    {
    
    }
    
    @IBAction func calculateButton(_ sender: Any)
    {
    
    }
    
    @IBAction func decimalButton(_ sender: Any)
    {
        //check if display contains a . if it does button does nothing if it doesnt it adds one to display
        
        if(displayLabel.text!.contains(".") == false)
        {
            displayLabel.text = displayLabel.text! + "."
        }
    }
    
    //Fun Feature that randomly changes the colour of the text
    //and buttons
    
    @IBAction func randomiserButton(_ sender: Any)
    {
    
    }
    
    //
    
    @IBAction func zeroButton(_ sender: Any)
    {
        addDigit(value: 0)
    }
    
    @IBAction func oneButton(_ sender: Any)
    {
        addDigit(value: 1)    }
    
    @IBAction func twoButton(_ sender: Any)
    {
        addDigit(value: 2)
    }
    
    @IBAction func threeButton(_ sender: Any)
    {
        addDigit(value: 3)
    }
    
    @IBAction func fourButton(_ sender: Any)
    {
        addDigit(value: 4)
    }
    
    @IBAction func fiveButton(_ sender: Any)
    {
        addDigit(value: 5)
    }
    
    @IBAction func sixButton(_ sender: Any)
    {
        addDigit(value: 6)
    }
    
    @IBAction func sevenButton(_ sender: Any)
    {
        addDigit(value: 7)
    }
    
    @IBAction func eightButton(_ sender: Any)
    {
        addDigit(value: 8)
    }
    
    @IBAction func nineButton(_ sender: Any)
    {
        addDigit(value: 9)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set display to default when app starts
        displayLabel.text = "---"
    }
    
    func getSecond() -> Double
    {
        return 0.0
    }
    
    func getFirst() -> Double
    {
        return 0.0
    }
    
    //checks the value in the display if it is 0.0 then
    //the value hasnt been set bool represents set (true) or not set(false)
    func checkValue(value: Int) -> Bool
    {
        if(displayLabel.text == "---")
        {
            return false
        }
        else
        {
            return true
        }
        
        //NOTE: have to add check for number with a decimal and nothing after it eg 123. this can cause issues needs to be 123.0
        //also need to make sure .123123 isnt possible has to be 0.123123
    }
    
    
    func addDigit(value: Int)
    {
        if(checkValue(value: value) == false)
        {
            displayLabel.text = "\(value)"
        }
        else
        {
            displayLabel.text = displayLabel.text! + "\(value)"
        }
        
        //may need to limit the size of numbers to fit on the display and or figure out different ways to represent values that are too large to show on the display
    }
    
    
}

