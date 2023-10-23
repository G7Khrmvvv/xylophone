//
//  ViewController.swift
//  xylophone
//
//  Created by imac on 23.10.2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?

    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button1.layer.cornerRadius = button1.bounds.height / 2
        button2.layer.cornerRadius = button2.bounds.height / 2
        button3.layer.cornerRadius = button3.bounds.height / 2
        button4.layer.cornerRadius = button4.bounds.height / 2
        button5.layer.cornerRadius = button5.bounds.height / 2
        button6.layer.cornerRadius = button6.bounds.height / 2
        button7.layer.cornerRadius = button7.bounds.height / 2
    }

    @IBAction func soundTapped(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
    }
    
    @IBAction func soundName2(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
    }
    
    @IBAction func soundName3(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
    }
    
    @IBAction func soundName4(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
    }
    
    @IBAction func soundName5(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
    }
    
    @IBAction func soundName6(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
    }
    
    @IBAction func soundName7(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0)
        {
            self.player?.play()
        }
    }
}

