//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Serhii KAREV on 5/16/19.
//  Copyright © 2019 Serhii KAREV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballImageArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    @IBOutlet weak var ballImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    func newBallImage(){
        ballImage.image = UIImage(named: ballImageArray[Int(arc4random_uniform(5))])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
}

