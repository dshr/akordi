enum PitchClass: UInt8 {
    case c
    case cSharp
    case d
    case dSharp
    case e
    case f
    case fSharp
    case g
    case gSharp
    case a
    case aSharp
    case b
}

extension PitchClass: CustomStringConvertible {
    var description: String {
        switch self {
        case .c:
            return "C"
        case .cSharp:
            return "C♯"
        case .d:
            return "D"
        case .dSharp:
            return "D♯"
        case .e:
            return "E"
        case .f:
            return "F"
        case .fSharp:
            return "F♯"
        case .g:
            return "G"
        case .gSharp:
            return "G♯"
        case .a:
            return "A"
        case .aSharp:
            return "A♯"
        case .b:
            return "B"
        }
    }
}
