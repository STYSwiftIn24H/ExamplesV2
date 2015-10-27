class Vehicle {
    var speed: Int
    var speedLimit: Int {
        willSet {
            print("willSet for Vehicle. Prepare to change speed to \(newValue) MPH")
        }
        didSet {
            print("didSet for Vehicle.")
            let changeSpeed: () -> () = (speed > speedLimit) ? slowDown : speedUp
            while speed != speedLimit {
                print("Increasing by 1")
                changeSpeed()
            }
            print("Now I'm driving \(speed) MPH because the speed limit changed to \(speedLimit) MPH from \(oldValue) MPH\n")
        }
    }
    init(speedLimit: Int, speed: Int) {
        self.speed = speed
        self.speedLimit = speedLimit
        print("Speed limit is \(speedLimit) MPH, I'm driving \(speed) MPH")
    }
    func speedUp() {
        print("Speeding up to \(++speed) MPH...")
    }
    func slowDown() {
        print("Slowing down to \(--speed) MPH...")
    }
}

class Porsche : Vehicle {
    override var speedLimit: Int {
        willSet {
            print("willSet for Porsche.")
        }
        didSet {
            print("didSet for Porsche.")
            let changeSpeed: () -> () = (speed > speedLimit) ? slowDown : speedUp
            let porscheSpeedLimit = speedLimit + 10
            while speed != porscheSpeedLimit {
                print("Increasing by 2 because Porsches are fast")
                changeSpeed()
                changeSpeed()
            }
            print("Porsches should always go faster than the speed limit.")
        }
    }
}

let porsche = Porsche(speedLimit: 65, speed: 65)
porsche.speedLimit = 70
porsche.speed
