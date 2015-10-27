class Vehicle {
    var speed: Int
    var speedLimit: Int {
        willSet {
            print("Prepare to change speed to \(newValue) MPH")
        }
        didSet {
            let changeSpeed: () -> () = (speed > speedLimit) ? slowDown : speedUp
            while speed != speedLimit {
                changeSpeed()
            }
            print("Now I'm driving \(speed) MPH because the speed limit changed to \(speedLimit) MPH from \(oldValue) MPH\n")
        }
    }
    
    init(speedLimit: Int, speed: Int) {
        self.speedLimit = speedLimit
        self.speed = speed
        print("Speed limit is \(speedLimit) MPH, I'm driving \(speed) MPH")
    }
    
    func speedUp() {
        print("Speeding up to \(++speed) MPH...")
    }
    
    func slowDown() {
        print("Slowing down to \(--speed) MPH...")
    }
}

let car = Vehicle(speedLimit: 65, speed: 65)
car.speedLimit = 55
car.speedLimit = 70
