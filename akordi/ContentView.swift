import SwiftUI

let pitches: [PitchClass] = [.cSharp, .gSharp, .dSharp, .aSharp, .f, .c, .g, .d, .a, .e, .b, .fSharp]
let chordTypes: [ChordType] = [.major, .minor, .major7, .minor7, .dominant7, .minor7flat5, .diminished, .minormajor7, .major7sharp5]

struct ContentView: View {
    var conductor: Conductor
    
    let chords = pitches.map { pitch in
        chordTypes.map { chordType in
            Chord(
                chordType,
                at: Pitch(pitch, 3 + (pitch.rawValue > 7 ? 0 : 1))
            )
        }
    }
    
    var body: some View {
        HStack {
            ForEach(chords, id: \.self) { column in
                VStack {
                    ForEach(column, id: \.self) { chord in
                        Button("\(chord.title)") {}
                            .onLongPressGesture(
                                minimumDuration: .infinity,
                                maximumDistance: .infinity,
                                pressing: {
                                    toggleNotes(notes: chord.notes, state: $0)
                                },
                                perform: { }
                            )
                    }
                }
            }
        }
        .padding()
        .buttonStyle(ChordButton())
    }
    
    func toggleNotes(notes: [UInt8], state: Bool) {
        if state {
            conductor.playNotes(notes: notes, velocity: 100)
        } else {
            conductor.stopNotes(notes: notes)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(conductor: Conductor())
    }
}
