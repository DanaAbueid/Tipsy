//
//  CalculateViewController.swift
//  Tipsy
//
//  Created by Dana Sami Abu Eid on 08/11/2023.

//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var billTotalLabel: UILabel!
    @IBOutlet weak var billDetailsLabel: UILabel!
    
    var tip = 0
    var split = 2
    var result = "0.0"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad2")
        
        billTotalLabel.text = result
        billDetailsLabel.text = "Split between \(split) people, with \(tip)% tip."
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
         super.viewDidAppear(animated)
         print("viewDidAppear2")
     }
     override func viewIsAppearing(_ animated: Bool) {
         super.viewIsAppearing(animated)
         print("viewIsAppearing2")
     }
     
     override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(animated)
         print("viewWillAppear2")
     }
     override func viewDidDisappear(_ animated: Bool) {
         super.viewDidDisappear(animated)
         print("viewDidDisappear2")
     }
     override func viewWillDisappear(_ animated: Bool) {
         super.viewWillDisappear(animated)
         print("viewWillDisappear2")
     }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
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
