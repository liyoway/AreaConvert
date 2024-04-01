//
//  TsuboConversionViewController.swift
//  Demo
//
//  Created by yoway Li on 2024/4/1.
//

import UIKit

class TsuboConversionViewController: UIViewController {
    @IBOutlet weak var tsubo: UITextField!
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calculate(_ sender: Any) {
        if let tsuboText = tsubo.text, let tsuboValue = Double(tsuboText), tsuboValue > 0 {
            let formatter = NumberFormatter()
            formatter.maximumFractionDigits = 2
            let tatami = tsuboValue * 2
            let square = tsuboValue * 3.306
            result.text = """
            計算結果は
            \(formatter.string(from: NSNumber(value: tatami))!)畳、
            \(formatter.string(from: NSNumber(value: square))!)m²
            です！
            """
            tsubo.resignFirstResponder()
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
