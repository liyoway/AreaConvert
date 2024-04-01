//
//  TatamiConversionViewController.swift
//  Demo
//
//  Created by yoway Li on 2024/4/1.
//

import UIKit

class TatamiConversionViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var tatami: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        if let tatamiText = tatami.text, let tatamiValue = Double(tatamiText), tatamiValue > 0 {
            let formatter = NumberFormatter()
            formatter.maximumFractionDigits = 2
            let tsubo = tatamiValue / 2
            let square = tatamiValue * 1.653
            result.text = """
            計算結果は
            \(formatter.string(from: NSNumber(value: tsubo))!)坪、
            \(formatter.string(from: NSNumber(value: square))!)m²
            です！
            """
            tatami.resignFirstResponder()
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
