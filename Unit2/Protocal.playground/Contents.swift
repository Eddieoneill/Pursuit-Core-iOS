import UIKit

// Protocol: is a blueprint that list properties, methods or initializers that a (conforming type: could be an enum, a struct or a class) conforming type is required  to impliment

protocol SomeProtocol {
    var someString: String { get set }
    var someInt: Int { get }
    
    func someMethod()
    mutating func someMutatingMethod()
}

// conforming object, conforms to SomeProtocol
// conform: enter agreement whereby this type
//          WILL implement all listed required properties, methods and initiolizers
struct SomeStruct: SomeProtocol {
    var someString: String = ""
    
    var someInt: Int {
        return 10
    }
    
    func someMethod() {
        print("some method")
    }
    
    mutating func someMutatingMethod() {
        print("some mutating method")
    }
    
    
}









//====================================================================
//                          Delegation
//====================================================================

// AnyObject restricts the GameDelegate protocol to ONLY classes
protocol GameDelegate: AnyObject {
    func startGame()
    func endGame(score: Int)
}

class BlackJackGame {
    // weak break strong reference retain cycles
    // basically when two object has a strong reference to each other that creates a memory leak, more on that later
    weak var delegate: GameDelegate?
    
    func gameStatus() {
        delegate?.endGame(score: 21)
    }
}

class BlackJackViewController: UIViewController, GameDelegate {
    func startGame() {
        print("BlackJack game started.")
    }
    
    func endGame(score: Int) {
        let score = Int.random(in: 18...25)
        
        switch score {
        case 21:
            print("BlackJack")
        case ...20:
            print("Keep Playing \(score)")
        case 22...:
            print("Busted \(score)")
        default:
            print("score not available")
        }
    }
}

var blackJackGame = BlackJackGame()
var viewcontroller = BlackJackViewController()

// in order to get notifications from the BlackJackGame we need to set the delegate and assin=gn the conforming class
blackJackGame.delegate = viewcontroller

// viewcontroller instance is registered as a delegate of blackJackGame to listen for changes on the game
blackJackGame.gameStatus()















