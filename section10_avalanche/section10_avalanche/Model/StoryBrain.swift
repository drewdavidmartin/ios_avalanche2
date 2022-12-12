import Foundation

//Story Brain is where we will be implemeting our model for the app. Included in this will be:
// ---initializing the story structure, called "journey"
// ---including the different story options / journey optionsi
// ---tracking the story number, which is depth of the story
// ---function to update the story number
// ---fuction to get title text for UI
// ---function to get choice1 text for UI
// ---function to get choice2 text for UI
// ---function

//initializing the structure (class) "StoryBrain"
struct StoryBrain{
    let journey = [
        Story(
        title:"Are you ready to stay safe in avalanche terrain?",
        choice1:"Yes",
        choice1Destination: 1,
        choice2:"I am not going into avalanche terrain!",
        choice2Destination: 3
        ),
        Story(
        title:"Have you read the avi forecast?",
        choice1:"Yes I read it every day!",
        choice1Destination: 2,
        choice2:"No it never makes much sense to me.",
        choice2Destination: 2
        ),
        Story(
        title:"Do You have all the proper avi gear and knowledge?",
        choice1:"What is there to know, if I see an avalanche ill get out the way!",
        choice1Destination: 4,
        choice2:"Yes, I know the conditions, and I have my beacon, probe, and shovel and buddy",
        choice2Destination: 3
        ),
        Story(
        title:"Have a good day out there!",
        choice1:"The",
        choice1Destination: 0,
        choice2:"End",
        choice2Destination: 0
        ),
        Story(
        title:"As you start down your sweet line you feel the the ground star to move and you are swept off your feet and are burried under an avalanche :(",
        choice1:"The",
        choice1Destination: 0,
        choice2:"End",
        choice2Destination: 0
        )
    ]
    
    //int variable to track current story
    var storyNumber = 0
    
    //function to track the story number
    mutating func nextStory(_ userChoice: String) {
        if userChoice == journey[storyNumber].choice1{
            storyNumber = journey[storyNumber].choice1Destination
        } else if userChoice == journey[storyNumber].choice2 {
            storyNumber = journey[storyNumber].choice2Destination
        } else {
            storyNumber = 0
            print("Something went wrong, but I don't know what")
        }
    }
        
    //function to return the title text from the quiz brain
    func getTitleText() -> String {
        return journey[storyNumber].title
    }
    
    //function to return the choice1 text from the quiz brain
    func getChoice1Text() -> String {
        return journey[storyNumber].choice1
    }
    
    //function to return the choice2 text from the quiz brain
    func getChoice2Text() -> String {
        return journey[storyNumber].choice2
    }

       
}
