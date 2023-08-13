//
//  MainView.swift
//  testapp
//
//  Created by Вячеслав on 8/13/23.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                headerDesign()
                
                ScrollView(.vertical, showsIndicators: true) {
                    
                    LazyVStack {
                        
                        horizontalHistoriesDesign()
                        
                        salesDesign()
                        
                        recomsDesign()
                    }
                    .padding(.vertical)
                }
            }
            .padding(.top)
        }
    }
    
    @ViewBuilder
    func recomsDesign() -> some View {
        
        ForEach(viewModel.recommendations) { index in
            
            VStack(alignment: .leading, content: {
                
                Text(index.headerTitle)
                    .foregroundColor(.black)
                    .font(.system(size: 18, weight: .semibold))
                    .multilineTextAlignment(.leading)
                    .padding([.horizontal, .top])
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack {
                        
                        ForEach(index.items) { item in
                            
                            VStack(spacing: 10, content: {
                                
                                Text(item.title)
                                    .foregroundColor(.black)
                                    .font(.system(size: 15, weight: .medium))
                                
                                Spacer()
                                
                                HStack {
                                    
                                    Text(item.price)
                                        .foregroundColor(.black)
                                        .font(.system(size: 13, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Button(action: {}, label: {
                                        
                                        Image(systemName: "plus")
                                            .foregroundColor(.white)
                                            .font(.system(size: 13, weight: .medium))
                                            .padding(10)
                                            .background(Circle().fill(Color("primary")))
                                    })
                                }
                            })
                            .padding()
                            .frame(height: 160)
                            .background(RoundedRectangle(cornerRadius: 10).fill(.white))
                        }
                    }
                    .padding(.horizontal)
                }
            })
        }
    }
    
    @ViewBuilder
    func salesDesign() -> some View {
        
        TabView(content: {
            
            ForEach([Color("primary"), Color.red, Color.green], id: \.self) { index in
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(index)
                    .frame(width: UIScreen.main.bounds.width - 30, height: 250)
            }
        })
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .frame(height: 250)
    }
    
    @ViewBuilder
    func horizontalHistoriesDesign() -> some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack(spacing: 15) {
                
                ForEach(1...5, id: \.self) { index in
                    
                    VStack(spacing: 10, content: {
                        
                        Circle()
                            .fill(.white)
                            .frame(width: 40, height: 40)
                            .overlay (
                            
                                Circle()
                                    .stroke(Color("primary"), lineWidth: 2)
                                    .frame(width: 47, height: 47)
                            )
                        
                        Text("Text about of \(index)")
                            .foregroundColor(.black)
                            .font(.system(size: 13, weight: .medium))
                            .frame(width: 70)
                            .multilineTextAlignment(.center)
                            .lineLimit(2)
                    })
                }
            }
            .padding()
        }
    }
    
    @ViewBuilder
    func headerDesign() -> some View {
        
        HStack {
            
            HStack {
                
                Image(systemName: "pin")
                    .foregroundColor(.red)
                    .font(.system(size: 16, weight: .regular))
                
                Text("Москва, Моксва и Московская область")
                    .foregroundColor(.black)
                    .font(.system(size: 14, weight: .medium))
                
                Spacer()
            }
            .padding()
            .frame(height: 50)
            .background(RoundedRectangle(cornerRadius: 10).fill(.white))
            
            Spacer()
            
            Button(action: {}, label: {
                
                Image(systemName: "person.crop.square.fill")
                    .foregroundColor(Color("primary"))
                    .font(.system(size: 30, weight: .medium))
                    .frame(width: 50, height: 50)
            })
        }
        .padding(.horizontal)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
