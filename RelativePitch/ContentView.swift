//
//  ContentView.swift
//  RelativePitch
//
//  Created by 坂口諒 on 2022/10/14.
//

import SwiftUI

struct ContentView: View {
    
    let keyNotePlayer = KeyNotePlayer()
    let questionNotePlayer = QuestionNotePlayer()
    let noteChecker = NoteChecker()
    let soundEffectPlayer = SoundEffectPlayer()
    
    @State var toggleR = false
    @State var toggleF9 = false
    @State var toggle9 = false
    @State var toggleS9 = false
    @State var toggle3 = false
    @State var toggle4 = false
    @State var toggleS11 = false
    @State var toggle5 = false
    @State var toggleS5 = false
    @State var toggle6 = false
    @State var toggleF7 = false
    @State var toggle7 = false
    @State var toggleAllNote = false
    
    @State var intKeyNote = 0
    @State var intQuestionNote = 0
    
    @State var correctRelativePitch = 0
    @State var selectedRelativePitch = 0
    @State var degree = "R"
    
    @State var answerButtonColor: Color
    @State var answerButtonTitle = "ANSWER"
    @State var answerSwitch = false
    
    var body: some View {
        
        VStack {
            HStack {
                Button(
                    action: {
                        if answerSwitch == true {
                            answerButtonColor = .gray
                            answerButtonTitle = "ANSWER"
                            answerSwitch = false
                        }
                        
                        keyNotePlayer.musicPlayer() //ランダムなkeyNoteを生成して音を出す
                        noteChecker.keyNote = keyNotePlayer.randomNote //noteCheckerクラスのkeyNoteに生成した音を入れる
                        print("keyNoteは\(noteChecker.keyNote)")
                        noteChecker.changeKeyNoteToNumber() //音名を数字に変換
                        intKeyNote = noteChecker.intKeyNote //intKeyNoteに変換した数字を代入
                        print("keyNoteは\(intKeyNote)")
                    },
                    label: {
                        questionBottunView(Title: "Key Note")
                    }
                )
                .padding()
                
                Button(
                    action: {
                        questionNotePlayer.musicPlayer() //ランダムなquestionNoteを生成して音を出す
                        noteChecker.questionNote = questionNotePlayer.randomNote //noteCheckerクラスのquestionNoteに生成した音を入れる
                        print("questionNoteは\(noteChecker.questionNote)")
                        noteChecker.changeQuestionNoteToNumber() //音名を数字に変換
                        intQuestionNote = noteChecker.intQuestionNote //intQuestionNoteに変換した数字を代入
                        print("questionNoteは\(intQuestionNote)")
                    
                    },
                    label: {
                        questionBottunView(Title: "WHAT NOTE?")
                    }
                )
            }
            
            VStack {
                HStack {
                    Button(
                        action: {
                            if toggleR {
                                toggleR.toggle()
                            } else {
                                toggleAllNoteOff()
                                toggleR.toggle()
                            }
                            selectedRelativePitch = 0
                        },
                        label: {
                            NoteView(note: "R", buttonColor: toggleR ? Color.red : Color.blue)
                        }
                    )

                    Button(
                        action: {
                            if toggleF9 {
                                toggleF9.toggle()
                            } else {
                                toggleAllNoteOff()
                                toggleF9.toggle()
                            }
                            selectedRelativePitch = 1
                        },
                        label: {
                            NoteView(note: "♭9", buttonColor: toggleF9 ? Color.red : Color.blue)
                        }
                    )
                    
                    Button(
                        action: {
                            if toggle9 {
                                toggle9.toggle()
                            } else {
                                toggleAllNoteOff()
                                toggle9.toggle()
                            }
                            selectedRelativePitch = 2
                        },
                        label: {
                            NoteView(note: "9", buttonColor: toggle9 ? Color.red : Color.blue)
                        }
                    )
                }
                
                HStack {
                    Button(
                        action: {
                            if toggleS9 {
                                toggleS9.toggle()
                            } else {
                                toggleAllNoteOff()
                                toggleS9.toggle()
                            }
                            selectedRelativePitch = 3
                        },
                        label: {
                            NoteView(note: "♯9 / ♭3", buttonColor: toggleS9 ? Color.red : Color.blue)
                        }
                    )
                    
                    Button(
                        action: {
                            if toggle3 {
                                toggle3.toggle()
                            } else {
                                toggleAllNoteOff()
                                toggle3.toggle()
                            }
                            selectedRelativePitch = 4
                        },
                        label: {
                            NoteView(note: "3", buttonColor: toggle3 ? Color.red : Color.blue)
                        }
                    )
                    
                    Button(
                        action: {
                            if toggle4 {
                                toggle4.toggle()
                            } else {
                                toggleAllNoteOff()
                                toggle4.toggle()
                            }
                            selectedRelativePitch = 5
                        },
                        label: {
                            NoteView(note: "4", buttonColor: toggle4 ? Color.red : Color.blue)
                        }
                    )
                }
                
                HStack {
                    Button(
                        action: {
                            if toggleS11 {
                                toggleS11.toggle()
                            } else {
                                toggleAllNoteOff()
                                toggleS11.toggle()
                            }
                            selectedRelativePitch = 6
                        },
                        label: {
                            NoteView(note: "♯11 / ♭5", buttonColor: toggleS11 ? Color.red : Color.blue)
                        }
                    )
                    
                    Button(
                        action: {
                            if toggle5 {
                                toggle5.toggle()
                            } else {
                                toggleAllNoteOff()
                                toggle5.toggle()
                            }
                            selectedRelativePitch = 7
                        },
                        label: {
                            NoteView(note: "5", buttonColor: toggle5 ? Color.red : Color.blue)
                        }
                    )
                    
                    Button(
                        action: {
                            if toggleS5 {
                                toggleS5.toggle()
                            } else {
                                toggleAllNoteOff()
                                toggleS5.toggle()
                            }
                            selectedRelativePitch = 8
                        },
                        label: {
                            NoteView(note: "♯5 / ♭13", buttonColor: toggleS5 ? Color.red : Color.blue)
                        }
                    )
                }
                
                HStack {
                    Button(
                        action: {
                            if toggle6 {
                                toggle6.toggle()
                            } else {
                                toggleAllNoteOff()
                                toggle6.toggle()
                            }
                            selectedRelativePitch = 9
                        },
                        label: {
                            NoteView(note: "6", buttonColor: toggle6 ? Color.red : Color.blue)
                        }
                    )
                    
                    Button(
                        action: {
                            if toggleF7 {
                                toggleF7.toggle()
                            } else {
                                toggleAllNoteOff()
                                toggleF7.toggle()
                            }
                            selectedRelativePitch = 10
                        },
                        label: {
                            NoteView(note: "♭7", buttonColor: toggleF7 ? Color.red : Color.blue)
                        }
                    )
                    
                    Button(
                        action: {
                            if toggle7 {
                                toggle7.toggle()
                            } else {
                                toggleAllNoteOff()
                                toggle7.toggle()
                            }
                            selectedRelativePitch = 11
                        },
                        label: {
                            NoteView(note: "7", buttonColor: toggle7 ? Color.red : Color.blue)
                        }
                    )
                }
            }
            
            HStack {
                        Button(
                            action: {
                                toggleAllNoteOff() //全てのボタンの色を青に変更
                                
                                correctRelativePitch = intQuestionNote - intKeyNote //２つの音の相対度数を算出

                                
                                print("半音\(correctRelativePitch)つ分")
                                noteChecker.relativePitchNumber = correctRelativePitch  //noteCheckerクラスへ正しい度数を受け渡し
                                noteChecker.changeNumberToDegree()  //数字を度数へ変換
                                degree = noteChecker.degree  //変換した度数をdegreeへ代入

                                print("正解は\(degree)度")
                                
                                if correctRelativePitch < 0 {  //負の数の場合、正の数へ変換
                                    correctRelativePitch += 12
                                }
                                
                                
                                
                                print("選んだのは\(selectedRelativePitch)")
                                
                                if answerSwitch == false {
                                    if correctRelativePitch == selectedRelativePitch {
                                        answerButtonColor = .green
                                        answerButtonTitle = "RIGHT!!"
                                        soundEffectPlayer.successSoundPlayer()
                                    } else {
                                        answerButtonColor = .red
                                        answerButtonTitle = "WRONG!!\nCORRECT DEGREE IS \n\(degree)"
                                        soundEffectPlayer.failureSoundPlayer()
                                    }
                                }                    
                                
                                answerSwitch = true
                                
                                keyNotePlayer.counter = 0
                                questionNotePlayer.counter = 0

                            },
                            label: {
                                AnswerView(Title: answerButtonTitle, buttonColor: answerButtonColor)
                            }
                        )
                        .padding()
                    }
        }
    }
    
    func toggleAllNoteOff() {
        
        toggleR = false
        toggleF9 = false
        toggle9 = false
        toggleS9 = false
        toggle3 = false
        toggle4 = false
        toggleS11 = false
        toggle5 = false
        toggleS5 = false
        toggle6 = false
        toggleF7 = false
        toggle7 = false
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(answerButtonColor: .gray)
    }
}

struct NoteView: View {
    
    let note: String
    let buttonColor: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 100, height: 100)
            .foregroundColor(buttonColor)
            .shadow(radius: 10)
            .overlay(
                Text(note.uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
            )
    }
}

struct questionBottunView: View {
    
    let Title: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 120, height: 100)
            .foregroundColor(.green)
            .shadow(radius: 10)
            .overlay(
                Text(Title.uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
            )
    }
}

struct AnswerView: View {
    
    let Title: String
    var buttonColor: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 140, height: 100)
            .foregroundColor(buttonColor)
            .shadow(radius: 10)
            .overlay(
                Text(Title.uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
            )
    }
}
