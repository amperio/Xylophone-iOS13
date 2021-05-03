//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation // Framework which work with audiovisual assetes, control device cameras, PROCESS AUDIO, and configure system audio interactions

class ViewController: UIViewController {

    
    
    var player: AVAudioPlayer! // Store the audio player as a variable to retain while the sound is playing. For won't get destroyed straight away - if you don't, the sound will stop immediately. AVAudioPalyer is an object that plays audio data from a file or buffer.
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func KeyPressed(_ sender: UIButton) {
        
        // sender, info. del boton que ha sido seleccionado, pudiendo obtener sus carateristicas, como bakcground, color, etc...
        // ------ DOS FORMAS ------
        /*
        switch sender.tag {
        case 1:
            playSound(tagi: "C")
        case 2:
            playSound(tagi: "D")
        case 3:
            playSound(tagi: "E")
        case 4:
            playSound(tagi: "F")
        case 5:
            playSound(tagi: "G")
        case 6:
            playSound(tagi: "A")
        default:
            playSound(tagi: "B")
        }*/
        playSound(tagi: sender.currentTitle!)
        BossChallenge(sendi: sender)
    }
    
    func playSound(tagi: String){
        let url = Bundle.main.url(forResource: tagi, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    func BossChallenge(sendi: UIButton) {
        // Aplicando delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
            sendi.alpha = 1
        }
        sendi.alpha = 0.5
    }
}

