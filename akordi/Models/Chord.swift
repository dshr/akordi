import Foundation

struct Chord {
    let root: Pitch
    let chordType: ChordType
    let title: String
    let notes: [UInt8]
    
    init(_ chordType: ChordType, at root: Pitch) {
        self.chordType = chordType
        self.root = root
        self.title = "\(root.pitchClass.description)\(chordType.description)"
        self.notes = chordType.intervals.map { root.midiNote + $0 }
    }
}

extension Chord: Hashable {
    static func == (lhs: Chord, rhs: Chord) -> Bool {
        lhs.root == rhs.root && lhs.chordType == rhs.chordType
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.notes)
    }
}
