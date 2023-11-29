//
//  AudioView.swift
//  In-Class Activity Pro IPhone Ch12 Playing Audio and Video
//
//  Created by Student Account on 11/28/23.
//
// Audio source: I have had this audio in my files for so long I have forgotten
// where it came from originally. I think it was a YouTube video
import SwiftUI

struct AudioView: View {
    @State var playAudio = true
    var body: some View {
        VStack{
            VStack{
                Text("This is what a ")
                Text("chickadee sounds like:")
            }
            .font(.largeTitle)
            .padding()
            Button(action: {
                if playAudio {
                    playSound(sound: "Chickadee", type: "mp3")
                } else {
                    stopSound()
                }
                playAudio.toggle()
            }, label: {
                Image( systemName: playAudio ? "play.fill" : "stop")
            })
            .padding()
        }
    }
}

#Preview {
    AudioView()
}
