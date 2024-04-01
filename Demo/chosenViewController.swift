//
//  chosenViewController.swift
//  Demo
//
//  Created by yoway Li on 2024/4/1.
//

import UIKit

class chosenViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.layer.cornerRadius = 20 // 圓角的大小，根據需要調整
        image.clipsToBounds = true //

        // Do any additional setup after loading the view.
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
