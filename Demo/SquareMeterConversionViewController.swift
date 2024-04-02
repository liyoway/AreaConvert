//
//  SquareMeterConversionViewController.swift
//  Demo
//
//  Created by yoway Li on 2024/4/1.
//
import Foundation
import UIKit

class SquareMeterConversionViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var square: UITextField!
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func calculate(_ sender: UIButton) {
        if let squareText = square.text, let squareValue = Double(squareText), squareValue > 0 {
            let formatter = NumberFormatter()
            formatter.maximumFractionDigits = 2
            let tsubo = squareValue / 3.3
            let tatami = squareValue / 1.65
            result.text = """
            計算結果は
            \(formatter.string(from: NSNumber(value: tsubo))!)坪、
            \(formatter.string(from: NSNumber(value: tatami))!)畳
            です！
            """
            square.resignFirstResponder()
        } else {
            result.text = "0より大きい数字を入力してください"
        }        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
