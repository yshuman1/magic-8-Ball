//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by yasin shuman on 2/25/19.
//  Copyright © 2019 yasin shuman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallNumber: Int = 0
    
    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    @IBOutlet weak var ImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    func newBallImage(){
        randomBallNumber = Int.random(in: 0...4)
        ImageView.image = UIImage(named: ballArray[randomBallNumber])
    }
}

