import UIKit

extension Collection{
    func enumeratedMap<T>(idx: (Element) -> T, item: (Element) -> T) -> [T] {
        var result = [T]()

          for item in self {

              result.append(idx(item))

          }

          return result

         
    }
    
}







//TASK-3
func numberToDigit(_ num : Int) -> [Int]{
    let myString = String(num)
    var digits = myString.compactMap{$0.wholeNumberValue}
    if num<0 {
        digits[0] = digits[0] * -1
    }
    return digits
}

numberToDigit(-3457)
