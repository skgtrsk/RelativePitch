//
//  SoundPlayer3.swift
//  RelativePitch
//
//  Created by 坂口諒 on 2023/01/11.
//

import UIKit
import AVFoundation
import SwiftUI

class QuestionNotePlayer: NSObject {

    var counter = 0
    var randomNote = "A"
    var music_player: AVAudioPlayer!
    
    func musicPlayer(){
        do{
            let noteArray: [String] = ["A", "A#", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#"]
            
            func makerandomNote() {
                if counter < 1 {    //最初に実行された時のみランダムな音が出る
                    if let value = noteArray.randomElement(){
                        randomNote = value  //randomNoteにランダムな音名を入れる
                    } else {
                        print("make randome question note error")
                    }
                }
                counter += 1
            }

            makerandomNote()
            
            if let safeNote = NSDataAsset(name: "\(randomNote)")?.data {
                music_player = try AVAudioPlayer(data: safeNote)   // 音楽を指定
                music_player.play()   // 音楽再生
            } else {
                print("question note player error")
            }
            
        } catch {
            print("エラー発生.音を流せません")
        }
    }
}

