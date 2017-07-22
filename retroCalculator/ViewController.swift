//
//  ViewController.swift
//  retroCalculator
//
//  Created by Huzaifa Asif on 2017-07-20.
//  Copyright © 2017 Huzaifa Asif. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    var btnSound:AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //define the path for audio file
        let path = Bundle.main.path(forResource: "btn", ofType: "wav")
       
        //compute the URL from the path
        let sounduRL = NSURL.fileURL(withPath: path!)
        
        do{
            //connecting btnSound to the path of audio file
            
            try btnSound = AVAudioPlayer(contentsOf: sounduRL)
            
            btnSound.prepareToPlay()
        }
        catch let err as NSError{
            print("%%%%%%===>>Error====")
            print(err.debugDescription)
        }
        
    }
    
    @IBAction func numberPressed(sender: UIButton){
        
        print("===BUTTON IS CALLED====\n\n")
        playSound()
    }
    
    func playSound(){
        if (btnSound.isPlaying){
            btnSound.stop()
        }
        
        btnSound.play()
    }
 
}

