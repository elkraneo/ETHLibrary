//
//  ContentView.swift
//  ETHLibrary
//
//  Created by Cristian Díaz on 21.12.23.
//

import SwiftUI
import RealityKit
import ETHAssets

struct GridModel3D: View {
  
  @State private var showImmersiveSpace = false
  @State private var immersiveSpaceIsShown = false
  
  @Environment(\.openImmersiveSpace) var openImmersiveSpace
  @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace
  
  @State private var isLightOn = false
  let layout = [
    GridItem(.adaptive(minimum: 300, maximum: 350)),
  ]
  
  var body: some View {
    NavigationStack {
      ScrollView {
        LazyVGrid(columns: layout, spacing: 32) {
          ForEach(ETHScenes.allCases, id: \.self) { scene in
            Button {
              //TODO: open volumetric window
            } label: {
              Model3D(named: scene.rawValue, bundle: eTHAssetsBundle) { model in
                let _ = print(model)
                model
              } placeholder: {
                ProgressView()
              }
              .padding()
              .frame(width: 200, height: 200)
              .accessibilityElement()
              .accessibilityLabel(scene.rawValue)
            }
            .buttonBorderShape(.circle)
          }
        }
        .padding()
      }
      .navigationTitle("Math Objects (Model3D)")
    }
  }
}

#Preview(windowStyle: .plain) {
  GridModel3D()
}
