//
//  ViewController.swift
//  PitchPerfect
//
//  Created by DeNuto, Robert on 11/17/16.
//  Copyright © 2016 rdenuto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordingButton.isEnabled=false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear called!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(_ sender: AnyObject) {
        recordingLabel.text="Recording in Progress"
        recordButton.isEnabled=false
        stopRecordingButton.isEnabled=true
        
        
    }

    @IBAction func stopRecording(_ sender: Any) {
        stopRecordingButton.isEnabled=false
        recordButton.isEnabled=true
        recordingLabel.text="Tap to Record"
    }
}

