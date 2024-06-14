//
//  WelcomeView.swift
//  WeatherD
//
//  Created by Abdulrahman Saleh on 2/21/24.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        VStack{
            VStack(spacing: 20) {
                        
                Text("Welcome to the Weather app")
                        .font(.title)
                        .bold()
                        
                Text("Please Share your current location to get the weather in your area")
                        .padding()
                    }
                    .multilineTextAlignment(.center)
                    .padding()
                    
                    LocationButton(.shareCurrentLocation) {
                        locationManager.requestLocation()
                    }
                    .cornerRadius(30)
                    .symbolVariant(.fill)
                    .foregroundStyle(.white)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    WelcomeView()
}
