//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Rafael Nicolett on 03/03/15.
//  Copyright (c) 2015 Code Behind SA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingInProgress: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func recordAudio(sender: UIButton) {
        recordingInProgress.hidden = false
        stopButton.hidden = false
        recordButton.enabled = false
    }

    @IBAction func stopRecordAudio(sender: UIButton) {
        recordingInProgress.hidden = true
        recordButton.enabled = true
    }
    
    override func viewWillAppear(animated: Bool) {
        recordButton.enabled = true
        stopButton.hidden = true
    }
}

