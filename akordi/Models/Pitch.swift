import Foundation

struct Pitch {
    let pitchClass: PitchClass
    let octave: UInt8
    let midiNote: UInt8
    
    init(_ pitchClass: PitchClass, _ octave: UInt8) {
        self.pitchClass = pitchClass
        self.octave = octave
        self.midiNote = pitchClass.rawValue + octave * 12
    }
}

extension Pitch: Equatable {
    static func == (lhs: Pitch, rhs: Pitch) -> Bool {
        lhs.midiNote == rhs.midiNote
    }
}
