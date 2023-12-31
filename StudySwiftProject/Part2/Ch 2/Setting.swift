//
//  Setting.swift
//  StudySwiftProject
//
//  Created by 심관혁 on 11/30/23.
//  Part 2. Ch 2. 04. 간단한 리스트를 이용한 앱

import SwiftUI

struct SettingInfo: Hashable{
    let title: String
    let systemName: String
    let backgroundColor: Color
    let foregroundColor: Color
}

struct Setting: View {
    
    let data: [[SettingInfo]] = [
        [
        SettingInfo(title: "스크린 타임", systemName: "hourglass", backgroundColor: .purple, foregroundColor: .white)
        ],
        [
        SettingInfo(title: "일반", systemName: "gear", backgroundColor: .gray, foregroundColor: .white),
        SettingInfo(title: "손쉬운 사용", systemName: "accessibility", backgroundColor: .blue, foregroundColor: .white),
        SettingInfo(title: "개인정보 보호 및 보안", systemName: "hand.raised.fill", backgroundColor: .blue, foregroundColor: .white)
        ],
        [
        SettingInfo(title: "암호", systemName: "key.fill", backgroundColor: .gray, foregroundColor: .white)
        ]
    ]
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(data, id: \.self){ section in
                    Section{
                        ForEach(section, id: \.self){ item in
                            Label(title: {
                                Text(item.title)
                            }, icon: {
                                Image(systemName: item.systemName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20,height: 20)
                                    .padding(.all, 7)
                                    .background(item.backgroundColor)
                                    .foregroundColor(item.foregroundColor)
                                    .cornerRadius(6)
                            })
                        }
                    }
                }
                
//                Section {
//                    Label(
//                        title: {
//                            Text("스크린 타임")
//                        },
//                        icon: {
//                            Image(systemName: "hourglass")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 20,height: 20)
//                                .padding(.all, 7)
//                                .background(.purple)
//                                .foregroundColor(.white)
//                                .cornerRadius(6)
//                        }
//                    )
//                }
//                Section{
//                    Label(
//                        title: { Text("일반")},
//                        icon: { 
//                            Image(systemName: "gear")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 20,height: 20)
//                                .padding(.all, 7)
//                                .background(.gray)
//                                .foregroundColor(.white)
//                                .cornerRadius(6)}
//                    )
//                    Label(
//                        title: { Text("손쉬운 사용")},
//                        icon: { 
//                            Image(systemName: "accessibility").resizable()
//                                .scaledToFit()
//                                .frame(width: 20,height: 20)
//                                .padding(.all, 7)
//                                .background(.blue)
//                                .foregroundColor(.white)
//                                .cornerRadius(6)
//                        }
//                    )
//                    Label(
//                        title: { Text("개인정보 보호 및 보안")},
//                        icon: { 
//                            Image(systemName: "hand.raised.fill")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 20,height: 20)
//                                .padding(.all, 7)
//                                .background(.blue)
//                                .foregroundColor(.white)
//                                .cornerRadius(6)}
//                    )
//                }
//                Section{
//                    Label(
//                        title: { Text("암호")},
//                        icon: { 
//                            Image(systemName: "key.fill")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 20,height: 20)
//                                .padding(.all, 7)
//                                .background(.gray)
//                                .foregroundColor(.white)
//                                .cornerRadius(6)}
//                    )
//                }
                
                
                
            }
            .navigationTitle("설정")
        }
    }
}

#Preview {
    Setting()
}
