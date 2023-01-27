//
//  ViewController.swift
//  Xylophone_storyboard
//
//  Created by Лилия Феодотова on 25.01.2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(keySound: (sender.titleLabel?.text!)!)
    }
    
    func playSound(keySound: String) {
       let url = Bundle.main.url(forResource: keySound, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }

    


}

