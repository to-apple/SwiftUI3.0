////
////  CarouselBodyView.swift
////  SwiftUI3.0
////
////  Created by Juhan Yoon on 1/14/22.
////
//
//import SwiftUI
//
//struct CarouselBodyView: View {
//    @State private var offset: CGFloat = 0.0
//    
//    var index: Int
//    
//    func getProgress() -> CGFloat {
//        let progress = -offset / UIScreen.main.bounds.width
//        
//        return progress
//    }
//    
//    var body: some View {
//        GeometryReader { geo in
//            let size = geo.size
//            
//            ZStack {
//                Image("p\(index)")
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(width: size.width - 8, height: size.height / 1.2)
//                    .cornerRadius(12.0)
//                
//                VStack {
//                    VStack(alignment: .leading, spacing: 10) {
//                        Text("Human Integration Supervisor")
//                            .font(.title2.bold())
//                            .kerning(1.5)
//                        
//                        Text("The world's largest collection of animal facts, pictures and more!")
//                            .kerning(1.2)
//                            .foregroundStyle(.secondary)
//                    }
//                    .foregroundStyle(.white)
//                    .padding(.top)
//                    
//                    Spacer(minLength: 0)
//                    
//                    VStack(alignment: .leading, spacing: 30) {
//                        HStack(spacing: 15) {
//                            Image("justine")
//                                .resizable()
//                                .aspectRatio(contentMode: .fill)
//                                .frame(width: 55, height: 55)
//                                .clipShape(Circle())
//                            
//                            VStack(alignment: .leading, spacing: 6) {
//                                Text("iJustine")
//                                    .font(.title2.bold())
//                                    
//                                Text("Apple Sheep")
//                                    .foregroundStyle(.secondary)
//                            }
//                            .foregroundStyle(.black)
//                        }
//                        
//                        HStack {
//                            VStack {
//                                Text("1303")
//                                    .font(.title2.bold())
//                                
//                                Text("Posts")
//                                    .foregroundStyle(.secondary)
//                            }
//                            .frame(maxWidth: .infinity)
//                            
//                            VStack {
//                                Text("3103")
//                                    .font(.title2.bold())
//                                
//                                Text("Followers")
//                                    .foregroundStyle(.secondary)
//                            }
//                            .frame(maxWidth: .infinity)
//                            
//                            VStack {
//                                Text("1503")
//                                    .font(.title2.bold())
//                                
//                                Text("Following")
//                                    .foregroundStyle(.secondary)
//                            }
//                            .frame(maxWidth: .infinity)
//                        }
//                        .foregroundStyle(.black)
//                    }
//                    .padding(20.0)
//                    .padding(.horizontal, 10)
//                    .background(.white, in: RoundedRectangle(cornerRadius: 12))
//                }
//                .padding(20.0)
//            }
//            .frame(width: size.width - 8, height: size.height / 1.2)
//            .frame(width: size.width, height: size.height)
//        }
//        .tag("p\(index)")
//        .rotation3DEffect(.init(degrees: getProgress() * 90), axis: (x: 0, y: 1, z: 0), anchor: offset > 0 ? .leading : .trailing, anchorZ: 0, perspective: 0.6)
//
//        .modifier(ScrollViewOffsetModifier(offset: $offset, anchorPoint: .leading))
//    }
//}
//
//struct CarouselBodyView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
