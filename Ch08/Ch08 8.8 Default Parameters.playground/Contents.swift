
// Listing 8.8
func addExercise(exercise: String, withDuration duration: Int = 20) {
    print("You did \(exercise) for \(duration) minutes")
}

addExercise("walking")
addExercise("cycling", withDuration: 30)

