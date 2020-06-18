
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func playSound(whichButton: String) {
           let url = Bundle.main.url(forResource: whichButton, withExtension: "wav")
           player = try! AVAudioPlayer(contentsOf: url!)
           player.play()
                   
       }

    @IBAction func keyPressed(_ sender: UIButton) {
        let buttonPressed = sender.currentTitle!
        
        playSound(whichButton: buttonPressed)
        
    }
    
   
}
