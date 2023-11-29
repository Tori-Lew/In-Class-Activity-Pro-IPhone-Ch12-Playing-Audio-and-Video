//
//  ContentView.swift
//  In-Class Activity Pro IPhone Ch12 Playing Audio and Video
//
//  Created by Student Account on 11/28/23.
//

import SwiftUI

import AVFoundation
import AVKit

var audioPlayer: AVAudioPlayer?
func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(
                contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not find and play the sound file")
        }
    }
}
func stopSound() {
    audioPlayer?.stop()
}

struct ContentView: View {
    var body: some View {
        TabView(){
            AudioView()
                .tabItem{Label("Audio", systemImage: "speaker.wave.2.fill")}
                .toolbarBackground(.visible, for: .tabBar)
            
            VideoView()
                .tabItem{Label("Video", systemImage: "video.fill")}
                .toolbarBackground(.visible, for: .tabBar)
        }
    }
}

#Preview {
    ContentView()
}
