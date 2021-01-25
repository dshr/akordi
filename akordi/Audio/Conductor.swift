import Foundation
import AudioKit
import Combine

class Conductor {
    let engine = AudioEngine()
    let synth = Synth(masterVolume: 0.5,
                        pitchBend: 0.0,
                        vibratoDepth: 0.0,
                        filterCutoff: 2.0,
                        filterStrength: 0.5,
                        filterResonance: 0.0,
                        attackDuration: 0.1,
                        decayDuration: 0.0,
                        sustainLevel: 1.0,
                        releaseDuration: 0.2,
                        filterEnable: true)
    var mixer = Mixer()

    init() {
        mixer.addInput(synth)
        engine.output = mixer
        Settings.playbackWhileMuted = true
        do {
            try engine.start()
        } catch {
            Log("AudioKit did not start!")
        }
    }
    
    func playNotes(notes: [UInt8], velocity: UInt8) {
        notes.forEach { note in
            synth.play(noteNumber: note, velocity: velocity)
        }
    }

    func stopNotes(notes: [UInt8]) {
        notes.forEach { note in
            synth.stop(noteNumber: note)
        }
    }
}
