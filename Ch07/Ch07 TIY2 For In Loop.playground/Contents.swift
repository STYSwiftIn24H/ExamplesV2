
// Try It Yourself section 2
let bears = ["Papa bear", "Mama bear", "Baby bear", "Yogi Bear"]
for bear in bears {
    switch bear {
    case "Papa bear":
        print("My porridge is too hot!")
    case "Mama bear":
        print("My porridge is too cold!")
    case "Baby bear":
        print("My porridge is just right!")
    default:
        print("Unrecognized bear. Intruder alert!")
    }
}
