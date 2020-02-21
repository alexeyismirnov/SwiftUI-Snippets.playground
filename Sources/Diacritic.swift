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
    
    str = "běi"
    
    showScalars(s: str)
    print()
    
    showScalars(s: str.decomposedStringWithCanonicalMapping)
    print()
    
}


