enum ChordType {
    case major
    case minor
    case major7
    case minor7
    case dominant7
    case minor7flat5
    case diminished
    case minormajor7
    case major7sharp5
}

extension ChordType {
    var intervals: [UInt8] {
        switch self {
        case .major:
            return [0, 4, 7]
        case .minor:
            return [0, 3, 7]
        case .major7:
            return [0, 4, 7, 11]
        case .minor7:
            return [0, 3, 7, 10]
        case .dominant7:
            return [0, 4, 7, 10]
        case .minor7flat5:
            return [0, 3, 6, 10]
        case .diminished:
            return [0, 3, 6, 9]
        case .minormajor7:
            return [0, 3, 7, 11]
        case .major7sharp5:
            return [0, 4, 8, 11]
        }
    }
}

extension ChordType: CustomStringConvertible {
    var description: String {
        switch self {
        case .major:
            return "M"
        case .minor:
            return "m"
        case .major7:
            return "M7"
        case .minor7:
            return "m7"
        case .dominant7:
            return "7"
        case .minor7flat5:
            return "m7♭5"
        case .diminished:
            return "Ø"
        case .minormajor7:
            return "mΔ7"
        case .major7sharp5:
            return "+Δ7"
        }
    }
}
