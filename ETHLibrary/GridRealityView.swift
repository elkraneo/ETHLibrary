//
//  ContentView.swift
//  ETHLibrary
//
//  Created by Cristian Díaz on 21.12.23.
//

import SwiftUI
import RealityKit
import ETHAssets

struct GridRealityView: View {
  
  @State private var showImmersiveSpace = false
  @State private var immersiveSpaceIsShown = false
  
  @Environment(\.openWindow) private var openWindow
  //@Environment(\.dismissWindow) private var dismissWindow
  
  @State private var isLightOn = false
  @State var intensity: Float = 0
  
  let layout = [
    GridItem(.adaptive(minimum: 250, maximum: 350)),
  ]
  
  var body: some View {
    ScrollView {
      LazyVGrid(columns: layout, spacing: 32) {
        ForEach(ETHScenes.allCases, id: \.self) { scene in
          Button {
            openWindow(id: scene.rawValue)
          } label: {
            RealityView { content in
              if let scene = try? await Entity(named:  scene.rawValue, in: eTHAssetsBundle) {
                content.add(scene)
              }
            } update: { content in
              if let scene = content.entities.first {
                scene.setLight(intensity: intensity, inheritsRotation: false)
              }
            } placeholder: {
              ProgressView()
            }
            .frame(width: 200, height: 200)
            .frame(depth: 200)
            .accessibilityElement()
            .accessibilityLabel(scene.rawValue)
          }
          .buttonBorderShape(.roundedRectangle)
          .padding3D()
        }
      }
      .navigationTitle("math models")
      .toolbar {
        ToolbarItem {
          Toggle("Light", systemImage: "lightbulb.led.fill", isOn: $isLightOn)
        }
      }
      .onChange(of: isLightOn) { _, isOn in
        self.intensity = isOn ? 2 : 0
      }
    }
  }
}

#Preview(windowStyle: .plain) {
  NavigationStack {
    GridRealityView()
  }
}
