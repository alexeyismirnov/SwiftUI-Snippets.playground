import Foundation

// https://stackoverflow.com/a/37934294/995049

func showScalars(s: String) {
    s.unicodeScalars.forEach {
        let hex = String(format:"%X",$0.value)
        print(hex, terminator: " ")
    }
}

public func diacritic() {
    let diacritic = UnicodeScalar(0x30C)
    var str = "e"
    
    str.append(Character(diacritic!))
    
    showScalars(s: str)
    print()
    
    showScalars(s: str.precomposedStringWithCanonicalMapping)
    print()
    
    str = "nü"
    
    showScalars(s: str)
    print()
    
    showScalars(s: str.decomposedStringWithCanonicalMapping)
    print()
    
}

public func getTone() {
    let string = "Duì5"
    print(string.components(separatedBy: CharacterSet.decimalDigits).joined())

    let s2 = string.components(separatedBy: CharacterSet.decimalDigits.inverted).filter { $0.count > 0 }.first
    print(Int(s2 ?? "0"))


    let str = "de"

    let last = str.suffix(3)
    print(last)

    let pattern = "(.*)([aoeiu])(.*)"
    let regex = try! NSRegularExpression(pattern: pattern)

    let text2 = NSMutableString(string: "dui")


    regex.replaceMatches(in: text2,
                         options: .reportProgress,
                         range: NSRange(location: 0,length: text2.length),
                         withTemplate: "$1$2"  + "\u{030C}" + "$3")

    print(text2)

}

