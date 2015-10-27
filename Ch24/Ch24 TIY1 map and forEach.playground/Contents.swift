
// Ch24 Try It Yourself #1 - map and forEach
import UIKit

let frame = CGRect(x: 0, y: 0, width: 175, height: 44)

let buttonAttributes = [
    (title: "Save", color: UIColor.blueColor()),
    (title: "Cancel", color: UIColor.redColor()),
    (title: "Dismiss", color: UIColor.grayColor())
]
let buttons = buttonAttributes.map { buttonAttribs -> UIButton in
    let button = UIButton(frame: frame)
    button.setTitle(buttonAttribs.title, forState: .Normal)
    button.backgroundColor = buttonAttribs.color
    return button
}

buttons.forEach { button in
    button.layer.cornerRadius = 15.0
    button.layer.borderColor = UIColor.darkGrayColor().CGColor
    button.layer.borderWidth = 2.0
    button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
}
let saveButton = buttons[0]
let cancelButton = buttons[1]
let dismissButton = buttons[2]

saveButton
cancelButton
dismissButton
