//
//  ContentView.swift
//  weather
//
//  Created by Anshuman Sharma on 31/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(content: {
            BackgroundView(colors: [Color.blue,Color.blue.opacity(0.7)])
            VStack(
                content:{
                    Text("Cupertino, CA")
                        .font(.system(size: 32, weight: .medium,design: .default))
                        .foregroundColor(.white).padding()
                    
                    VStack(spacing:0){
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 150)
                        Text("78°")
                            .font(.system(size: 70,weight: .semibold,design: .default))
                            .foregroundColor(.white)
                    }.padding(.bottom,40)
                    
                    
                    
                    HStack(spacing: 20){
                        
                        DayForecastView(day: "TUE", imageName: "sun.horizon", temperature: "24°")
                        DayForecastView(day: "WED", imageName: "moon.dust", temperature: "23°")
                        DayForecastView(day: "THU", imageName: "sun.dust", temperature: "25°")
                        DayForecastView(day: "FRI", imageName: "sun.rain", temperature: "29°")
                        DayForecastView(day: "SAT", imageName: "sparkles", temperature: "28°")
                    }
                    
                    
                    
                    
                    
                    Spacer()
                    
                    
                    
                    Button{
                        print("tapped")
                    }label: {
                        Text("Change Day Time")
                            .frame(width: 280,height: 50)
                            .background(Color.white)
                            .font(.system(size: 20,weight: .bold))
                            .cornerRadius(10)
                    }
                    Spacer()
                }
            )
            
            
            
        })
    }
}

struct DayForecastView: View {
    var day: String
    var imageName: String
    var temperature: String
    
    var body: some View {
        VStack {
            Text(day)
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .foregroundColor(.white)
            Text(temperature)
                .font(.system(size: 25, weight: .semibold, design: .default))
                .foregroundColor(.white)
        }
    }
}


struct ContentView_Previews:PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}

struct BackgroundView: View {
    
    var colors: [Color]
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(
                colors: colors
            ),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .edgesIgnoringSafeArea(
            /*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/
        )
    }
}
