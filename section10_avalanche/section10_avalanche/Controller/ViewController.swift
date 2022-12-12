import UIKit

class ViewController: UIViewController {
    
    //Creating the button outlets for the app
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    
    @IBAction func choiceMade(_ sender: UIButton) {
        print(sender.titleLabel!.text!) // remove after debugging
        
        let userChoice = sender.titleLabel!.text! //string which is the choice1 or choice2 result string
        
        storyBrain.nextStory(userChoice)
        updateUI()
    }
    
    
    //updateUI function to
    func updateUI(){
        storyLabel.text = storyBrain.getTitleText()
        choice1Button.setTitle(storyBrain.getChoice1Text(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2Text(), for: .normal)
    }
    

}

