import UIKit

class ViewController: UIViewController {
    
    enum MathFunction{
        case addition
        case subtraction
        case multiplication
        case division
        case notSet
        
    }
    var currentFunction:MathFunction = MathFunction.notSet
    var firstNumber: Int = 0
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func numberButtonTapped(_ sender: UIButton) {
        if let number = sender.titleLabel?.text{
            if let displayNumber = Int(label.text!){
                label.text = "\(displayNumber)" + number
                
            }
        }
    }
    @IBAction func mathFuntionTapped(_ sender: UIButton) {
        if let mathFunction = sender.titleLabel?.text{
            
            if mathFunction == "+"{
                currentFunction = MathFunction.addition
            }
            if mathFunction == "-"{
                currentFunction = MathFunction.subtraction
            }
            if mathFunction == "x"{
                currentFunction = MathFunction.multiplication
            }
            if mathFunction == "/"{
                currentFunction = MathFunction.division
            }
        }
        
        if let displayNumber = Int(label.text!){
            firstNumber = displayNumber
            
        }
        label.text = "0"
    }
    
    @IBAction func calculateValue(_ sender: Any) {
        if let secondNumber = Int(label.text!){
            var output = 0
            if currentFunction == .addition{
                output = firstNumber + secondNumber
            }
            if currentFunction == .subtraction{
                output = firstNumber - secondNumber
            }
            if currentFunction == .multiplication{
                output = firstNumber * secondNumber
            }
            if currentFunction == .division{
                output = firstNumber / secondNumber
            }

            label.text = "\(output)"
        }
    }
}

