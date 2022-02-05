
//
//  AudioPalyer.swift
//  Quran
//
//  Created by Камиль on 06.08.2020.
//  Copyright © 2020 Kamil. All rights reserved.
//
import SwiftUI
import AVFoundation

struct AudioPlayer: View {
    let player = AVPlayer()
    var sound: String
    var showHUD: Bool
    @State var pause = false
    @State var hide = false
    
    var body: some View {
        HStack (spacing: 10){
            AudioPlayerControlsView(pause: $pause,
                                    hide: $hide,
                                    showHUD: showHUD,
                                    player: player,
                                    timeObserver: PlayerTimeObserver(player: player),
                                    durationObserver: PlayerDurationObserver(player: player),
                                    itemObserver: PlayerItemObserver(player: player))
            
            playButton
        }
        .onAppear{
            play()
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.00000001) {
                player.pause()
                hide = false
            }
        }
        .onDisappear {
            // When this View isn't being shown anymore stop the player
            self.player.replaceCurrentItem(with: nil)
        }
    }
    
    func play() {
        if !pause{
            let path = Bundle.main.path(forResource: sound, ofType: "mp3")
            do {
                try AVAudioSession.sharedInstance().setCategory(.playback)
                try AVAudioSession.sharedInstance().setCategory(.playback, options: [.mixWithOthers])
                try AVAudioSession.sharedInstance().setActive(true)
                let playerItem = AVPlayerItem(url: URL(fileURLWithPath: path!))
                player.replaceCurrentItem(with: playerItem)
               
            } catch {
                print(error)
            }
        }
        if  showHUD {
            hide = true
        }
        player.play()
        
    }
    
    var playButton: some View {
        ZStack{
            Button(action: {
                player.pause()
                pause = true
                hide.toggle()
                
            }, label: {
                Image(systemName: "pause")
                    .font(.title)
                    .foregroundColor(.primary)
            })
            .opacity(hide ? 1 : 0)
            
            Button(action: {
                play()
            }, label: {
                Image(systemName: "play")
                    .font(.title)
                    .foregroundColor(.primary)
            })
            .opacity(hide ? 0 : 1)
        }
        .padding(.trailing, 20)
    }
}

struct AudioPlayerControlsView: View {
    private enum PlaybackState: Int {
        case pause
        case playing
    }
    @Binding var pause: Bool
    @Binding var hide: Bool
    var showHUD: Bool
    let player: AVPlayer
    let timeObserver: PlayerTimeObserver
    let durationObserver: PlayerDurationObserver
    let itemObserver: PlayerItemObserver
    @State private var currentTime: TimeInterval = 0
    @State private var currentDuration: TimeInterval = 0
    @State private var state = PlaybackState.pause
   
    var body: some View {
        VStack {
            if showHUD {
                Slider(value: $currentTime,
                       in: 0...currentDuration,
                       onEditingChanged: sliderEditingChanged,
                       minimumValueLabel: Text("\(Utility.formatSecondsToHMS(currentTime))"),
                       maximumValueLabel: Text("\(Utility.formatSecondsToHMS(currentDuration))")) {
                    
                }
             
            }
        }
        .padding()
        // Listen out for the time observer publishing changes to the player's time
        .onReceive(timeObserver.publisher) { time in
            // Update the local var
            currentTime = time
            // And flag that we've started playback
            if time > 0 {
                state = .playing
            }
    
            if (Utility.formatSecondsToHMS(currentTime)) != "00:00" && String(format: "%.1f", currentTime) == String(format: "%.1f", currentDuration ) {
                player.pause()
                pause = false
                hide = false
            }
            
        }
        // Listen out for the duration observer publishing changes to the player's item duration
        .onReceive(durationObserver.publisher) { duration in
            // Update the local var
            self.currentDuration = duration
        }
        // Listen out for the item observer publishing a change to whether the player has an item
        .onReceive(itemObserver.publisher) { hasItem in
            state = .pause
            currentTime = 0
            currentDuration = 0
        }
    }
    
    // MARK: Private functions
    private func sliderEditingChanged(editingStarted: Bool) {
        if editingStarted {
            // Tell the PlayerTimeObserver to stop publishing updates while the user is interacting
            // with the slider (otherwise it would keep jumping from where they've moved it to, back
            // to where the player is currently at)
            timeObserver.pause(true)
        }
        else {
            // Editing finished, start the seek
            state = .pause
            let targetTime = CMTime(seconds: currentTime,
                                    preferredTimescale: 600)
            player.seek(to: targetTime) { _ in
                // Now the (async) seek is completed, resume normal operation
                timeObserver.pause(false)
                state = .playing
            }
        }
    }
}



import Combine
class PlayerTimeObserver {
    let publisher = PassthroughSubject<TimeInterval, Never>()
    private weak var player: AVPlayer?
    private var timeObservation: Any?
    private var paused = false
    
    init(player: AVPlayer) {
        self.player = player
        
        // Periodically observe the player's current time, whilst playing
        timeObservation = player.addPeriodicTimeObserver(forInterval: CMTime(seconds: 0.5, preferredTimescale: 600), queue: nil) { [weak self] time in
            guard let self = self else { return }
            // If we've not been told to pause our updates
            guard !self.paused else { return }
            // Publish the new player time
            self.publisher.send(time.seconds)
        }
    }
    
    deinit {
        if let player = player,
           let observer = timeObservation {
            player.removeTimeObserver(observer)
        }
    }
    
    func pause(_ pause: Bool) {
        paused = pause
    }
}

class PlayerItemObserver {
    let publisher = PassthroughSubject<Bool, Never>()
    private var itemObservation: NSKeyValueObservation?
    
    init(player: AVPlayer) {
        // Observe the current item changing
        itemObservation = player.observe(\.currentItem) { [weak self] player, change in
            guard let self = self else { return }
            // Publish whether the player has an item or not
            self.publisher.send(player.currentItem != nil)
        }
    }
    
    deinit {
        if let observer = itemObservation {
            observer.invalidate()
        }
    }
}

class PlayerDurationObserver {
    let publisher = PassthroughSubject<TimeInterval, Never>()
    private var cancellable: AnyCancellable?
    
    init(player: AVPlayer) {
        let durationKeyPath: KeyPath<AVPlayer, CMTime?> = \.currentItem?.duration
        cancellable = player.publisher(for: durationKeyPath).sink { duration in
            guard let duration = duration else { return }
            guard duration.isNumeric else { return }
            self.publisher.send(duration.seconds)
        }
    }
    
    deinit {
        cancellable?.cancel()
    }
}

class Utility: NSObject {
    
    private static var timeHMSFormatter: DateComponentsFormatter = {
        let formatter = DateComponentsFormatter()
        formatter.unitsStyle = .positional
        formatter.allowedUnits = [.minute, .second]
        formatter.zeroFormattingBehavior = [.pad]
        return formatter
    }()
    
    static func formatSecondsToHMS(_ seconds: Double) -> String {
        guard !seconds.isNaN,
              let text = timeHMSFormatter.string(from: seconds) else {
            return "00:00"
        }
        
        return text
    }
    
}
