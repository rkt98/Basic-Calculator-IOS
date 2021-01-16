//
//  ViewController.swift
//  Basic Calculator IOS
//
//  Created by Ryan Knut Tansey on 16/01/21.
//
// Simple Calculator app
// project created to teach myself how to use xcode and swift

import UIKit

class ViewController: UIViewController {
    
    //declare global variables first value, second value and selected operation
    var first = 0.0;
    var second = 0.0;
    // 0 - not selected, 1 = +, 2 = -, 3 = x and 4 = /
    var symbol = 0;
    
    //define the displayLabel used to show users entered value and results of operation
    @IBOutlet weak var displayLabel: UILabel!
    
    //clear function clears the display and resets the values and operation to default 0.0 and unselected
    @IBAction func clearButton(_ sender: Any)
    {
        displayLabel.text = "---"
        first = 0.0;
        second = 0.0;
        symbol = 0;
    }
    
    //TODO: possibly implement a ( ) function to allow multiple functions to be used at the same time. possibly using pattern matching and having the entire line of numbers and functions added to the display and then read and split to create an expression that can be handled
    
    @IBAction func leftPButton(_ sender: Any)
    {
        //ADD CODE
    }
    @IBAction func rightPButton(_ sender: Any)
    {
        //ADD CODE
    }
    
    /*
     * Define the function buttons + - / * and assign the first value to the
     * first variable and set the symbol value so it can be processed
     * correctly when = is pressed
     */
    @IBAction func multiplyButton(_ sender: Any)
    {
        symbol = 3
        first = getNum()
        displayLabel.text = ""
    }
    @IBAction func plusButton(_ sender: Any)
    {
        symbol = 1
        first = getNum()
        displayLabel.text = ""
    }
    @IBAction func divideButton(_ sender: Any)
    {
        symbol = 4
        first = getNum()
        displayLabel.text = ""
    }
    @IBAction func minusButton(_ sender: Any)
    {
        symbol = 2;
        first = getNum()
        displayLabel.text = ""
    }
    
    /*
     * Define = button which performs the operation selected earlier with the
     * first value retrieved when the operation was selected and the second
     * value retrieved when = is pressed. Result displays in the displayLabel
     */
    @IBAction func calculateButton(_ sender: Any)
    {
        // get and store second value from display
        second = getNum()
        
        //check value isnt zero if it is do nothing if it isnt continue
        if(symbol != 0)
        {
            //continue and calculate the value
                
            if(symbol == 1)
            {
                displayLabel.text = "\(first + second)"
            }
            else if(symbol == 2)
            {
                displayLabel.text = "\(first - second)"
            }
            else if(symbol == 3)
            {
                displayLabel.text = "\(first * second)"
            }
            else
            {
                displayLabel.text = "\(first / second)"
            }
        }
            
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
    
    func getNum() -> Double
    {
        if(displayLabel.text != "0.0" && displayLabel.text != "---")
        {
            return Double(displayLabel.text!)!
        }
        else
        {
            return 0.0
        }
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
        
        //TODO: Limit the size of numebers so they dont go past the view of the calculator. Or add a way of representing larger values maybe limiting the number of decimal places to two or three max and round up to avoid the need for huge run off decimals
    }
    
    
    
    
}

