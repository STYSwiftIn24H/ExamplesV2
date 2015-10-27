
import UIKit





// Try It Yourself section
let odometerField = UITextField()
odometerField.frame = CGRect(x: 0, y: 0, width: 125, height: 44)
odometerField.text = "2564"
let lastOdometerField = UITextField()
lastOdometerField.frame = CGRect(x: 0, y: 44, width: 125, height: 44)
lastOdometerField.text = "2114"
let gallonsField = UITextField()
gallonsField.text = "16"
let avgMPGLabel = UILabel()
let milesDrivenLabel = UILabel()
var myView = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 320))
myView.backgroundColor = UIColor.lightGrayColor()
myView.addSubview(odometerField)
myView.addSubview(lastOdometerField)

let odometerReading = odometerField.text
let lastOdometerString = lastOdometerField.text
let gallonsString = gallonsField.text

var avgMilesPerGallon = 0.0
var distanceDouble = 0.0
var gallonsDouble = 0.0

if let reading = odometerReading, odometerInt = Int(reading) {
    distanceDouble = Double(odometerInt)
}

if let lastOdometer = lastOdometerString, lastOdometerInt = Int(lastOdometer) {
    distanceDouble -= Double(lastOdometerInt)
}

if let gallons = gallonsString, gallonsInt = Int(gallons) {
    gallonsDouble = Double(gallonsInt)
}

if gallonsDouble != 0.0 && distanceDouble != 0.0 {
    avgMilesPerGallon = distanceDouble / gallonsDouble
}


avgMPGLabel.text = "\(avgMilesPerGallon) MPG"
milesDrivenLabel.text = "\(distanceDouble) miles per fill-up"

print("\(avgMilesPerGallon) MPG")
print("\(distanceDouble) miles per fill-up")
