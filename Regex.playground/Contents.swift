import Foundation

var str = "Hello, playground"
let pattern = " [a-z]+[A-Za-z0-9]*(?<![(try)(as)])![.,:)\n\t\r ]"
let regex = try! NSRegularExpression(pattern: pattern, options: [])
let searchInString = " hello! "
let results = regex.matches(in: searchInString, options: [], range: NSMakeRange(0, searchInString.count))
print(results.map({ (result) -> String in
    let range = result.range(at: 0)
    let string = searchInString as NSString
    return string.substring(with: range)
}))
