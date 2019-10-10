
//
//  resultViewController.swift
//  selectPlan.emily
//
//  Created by 野崎絵未里 on 2019/10/11.
//  Copyright © 2019 emily.com. All rights reserved.
//

import UIKit

class resultViewController: UIViewController {
    
    var text:String!

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        label.text = text
    }
    @IBAction func back(_ sender: Any) {
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
