//
//  ViewController.swift
//  selectPlan.emily
//
//  Created by 野崎絵未里 on 2019/10/11.
//  Copyright © 2019 emily.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var collection:[String] = []
    var text:String!
    var number:Int!
    
    @IBOutlet weak var textFirst: UITextField!
    @IBOutlet weak var textSecond: UITextField!
    @IBOutlet weak var textThird: UITextField!
    @IBOutlet weak var textForth: UITextField!
    @IBOutlet weak var textFifth: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        number = Int.random(in: 0...4)
    }
    
    @IBAction func go(_ sender: Any) {
        collection.removeAll()
        collection.append(textFirst.text!)
        collection.append(textSecond.text!)
        collection.append(textThird.text!)
        collection.append(textForth.text!)
        collection.append(textFifth.text!)
        
        if collection.count == 5 {
            
            let result = collection[number]
            print(result)
            
            text = result
            
            performSegue(withIdentifier: "next", sender: nil)
        }
        
    }
    override func prepare (for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "next" {
            let nextView = segue.destination as! resultViewController
            nextView.text = text
        }
    }
    
    
    
}

