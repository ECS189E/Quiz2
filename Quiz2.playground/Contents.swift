import UIKit

// Question 1
// In code, the absence of a value is typically written using the nil literal rather than the explicit .none enumeration case. (From developer Apple)
class StringArray {
    var elements: [String]
    
    init(input: [String]) {
        elements = input
    }
    
    func filterMap(_ translate: ((String) -> String?)) -> [String] {
        var results = [String]()
        for each in elements {
            // Omit if Optional.none
            if let result = translate(each) {
                // Otherwise, include the unwrapped value.
                results.append(result)
            }
        }
        return results
    }

}


// This func takes a string. Get a random Integer
// in range of 0 to the string length. And see if
// this integer is larger than string length divided
// by 3.

// As a result, this func has 2/3 possibility returning
// a string, and has 1/3 possibility returning a nil.
func translate(from: String) -> String? {
    let number = Int.random(in: 0 ..< from.count)
    var to: String? = nil
    if Float(number) > Float(from.count / 3) {
        to = from + " translated"
    } else {
        print("Omiting " + from)
    }
    return to
}

func Quiz2Test(strs: [String]) {
    let temp1 = StringArray(input: strs)
    print("Original strings:")
    print(strs)
    print("========= Translating... =========")
    let strleft1 = temp1.filterMap(translate)
    print("===== Translation Completed! =====")
    print("Strings Left:")
    print(strleft1)
    print()
}

print("Question 1 \n")
Quiz2Test(strs: ["Bob", "Annie", "Milo", "Cindy", "Nancy", "Jane", "Andy", "Lee"])
Quiz2Test(strs: [])

// Question 2
print("\n Question 2 \n")
let names = ["Bob", "Annie", "Milo"]
let namesWithPng = names.map({ $0 + ".png"})
print("Original strings:")
print(names)
print("After:")
print(namesWithPng)

