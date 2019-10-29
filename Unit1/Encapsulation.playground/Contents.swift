import UIKit

// encapsulation:

enum Category: String {
    case tech
    case art
    case health
    case fashion
}

struct Event {
    private var location: String
    private var startTime: String
    private var name: String
    private var category: Category
    
    init(location: String, startTime: String, name: String, category: Category) {
        self.location = location
        self.startTime = startTime
        self.name = name
        self.category = category
    }
    
    func info() {
        print("The \(name) event is going to be at \(startTime) in \(location)\nThe topic of this event will be about \(category)")
    }
    
    mutating func changeEvent(newEvent: Event) {
        self = newEvent
    }
}

var event = Event(location: "468 Broadway", startTime: "10:30 am", name: "Peer Labs", category: .tech)

// event.name = "Rey's Hour"
event.info()

let newEvent = Event(location: "23 Pronce St", startTime: "12pm", name: "Peer Labs", category: .tech)

event.changeEvent(newEvent: newEvent)
