import Foundation

public func solution(_ N : Int) -> Int {
    // write your code in Swift 3.0 (Linux)
    let binaryString = String(N, radix: 2)
    var result = 0
    var gapCount = 0
    var gapEdgeCount = 0
    
    for element in binaryString.unicodeScalars {
        if element == "1" {
            gapEdgeCount += 1
            
            if gapEdgeCount == 2 {
                gapEdgeCount = 1
                result = result > gapCount ? result : gapCount
                gapCount = 0
            }
        }
        else {
            gapCount += 1
        }
    }
    
    return result
}

solution(1041)
