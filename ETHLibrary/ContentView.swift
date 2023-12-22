//
//  ContentView.swift
//  ETHLibrary
//
//  Created by Cristian Díaz on 22.12.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      NavigationStack {
        VStack {
          Image("ethz_logo_black")
            .accessibilityLabel("ETH zürich logo")
            .padding()
            .shadow(color: .white.opacity(0.3), radius: 10)
            .padding3D()
          
          NavigationLink {
            GridRealityView()
          } label: {
            Text("math models collection")
          }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
          Image(decorative: "medium_720_ETHZ_MATH_MOD_0029_01_e82520b6df")
            .resizable()
            .aspectRatio(contentMode: .fill)
        }
      }
    }
}

#Preview {
    ContentView()
}
