//
//  ViewController.swift
//  multipliers
//
//  Created by Mehmet Ragıp Altuncu on 27/12/15.
//  Copyright © 2015 MehmetAltuncu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var addByNumber = 0
    var totalNumber = 0
    

    @IBOutlet weak var titleImage: UIImageView!
    @IBOutlet weak var addLbl: UILabel!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var addByText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func gameStarted() {
        titleImage.hidden = true
        playButton.hidden = true
        addByText.hidden = true
        
        addButton.hidden = false
        addLbl.hidden = false
        
    }

    func gameEnds() {
        
        addByText.text = ""
        
        titleImage.hidden = false
        playButton.hidden = false
        addByText.hidden = false
        
        addButton.hidden = true
        addLbl.hidden = true
        
    }
    @IBAction func playButtonPressed(sender: UIButton) {
        
        gameStarted()
        addByNumber = Int(addByText.text!)!
    }
    
    @IBAction func addButtonPressed(sender: UIButton) {
        
        addLbl.text = "\(totalNumber) + \(addByNumber) = \(totalNumber + addByNumber)"
        totalNumber += addByNumber
        if totalNumber >= 20 * addByNumber {
            gameEnds()
        }
        
    }

}

