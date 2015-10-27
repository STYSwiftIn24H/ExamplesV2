class CubeANum {
    subscript(num: Int) -> Int {
        return num * num * num
    }
    subscript(num: Double) -> Double {
        return num * num * num
    }
}

let cubeANum = CubeANum()
let dblCube = cubeANum[2.5]
let intCube = cubeANum[2]

