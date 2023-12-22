//
//  ETHLibraryApp.swift
//  ETHLibrary
//
//  Created by Cristian Díaz on 21.12.23.
//

import ETHAssets
import RealityKit
import SwiftUI

@main
struct ETHLibraryApp: App {
  var body: some SwiftUI.Scene {
    WindowGroup {
      ContentView()
    }
    
    WindowGroup(id: ETHScenes.dupinscheCyclide.rawValue) {
      Model3D(named: ETHScenes.dupinscheCyclide.rawValue, bundle: eTHAssetsBundle)
        .scaleEffect(x: 5, y: 5, z: 5, anchor: .back)
    }
    .windowStyle(.volumetric)
    .defaultSize(width: 0.6, height: 0.3, depth: 0.6, in: .meters)
    
    WindowGroup(id: ETHScenes.envelopeGeodeticLinesEllipsoid.rawValue) {
      Model3D(named: ETHScenes.envelopeGeodeticLinesEllipsoid.rawValue, bundle: eTHAssetsBundle)
        .scaleEffect(x: 5, y: 5, z: 5, anchor: .back)
    }
    .windowStyle(.volumetric)
    .defaultSize(width: 0.9, height: 0.6, depth: 0.8, in: .meters)
    
    // WindowGroup(id: ETHScenes.minimalSurfaceEnneper.rawValue) {
    //   Model3D(named: ETHScenes.minimalSurfaceEnneper.rawValue, bundle: eTHAssetsBundle)
    // }
    // .defaultSize(width: 0.1, height: 0.1, depth: 0.1, in: .meters)
    // .windowStyle(.volumetric)
    
    WindowGroup(id: ETHScenes.polyhedronPenetration.rawValue) {
      Model3D(named: ETHScenes.polyhedronPenetration.rawValue, bundle: eTHAssetsBundle)
        .scaleEffect(x: 5, y: 5, z: 5, anchor: .back)
    }
    .windowStyle(.volumetric)
    .defaultSize(width: 0.6, height: 0.5, depth: 0.6, in: .meters)
    
    WindowGroup(id: ETHScenes.sphericalProjectionFlatCurves1.rawValue) {
      Model3D(named: ETHScenes.sphericalProjectionFlatCurves1.rawValue, bundle: eTHAssetsBundle)
        .scaleEffect(x: 5, y: 5, z: 5, anchor: .back)
    }
    .windowStyle(.volumetric)
    .defaultSize(width: 0.5, height: 0.5, depth: 0.5, in: .meters)
    
    WindowGroup(id: ETHScenes.sphericalProjectionFlatCurves2.rawValue) {
      Model3D(named: ETHScenes.sphericalProjectionFlatCurves2.rawValue, bundle: eTHAssetsBundle)
        .scaleEffect(x: 5, y: 5, z: 5, anchor: .back)
    }
    .windowStyle(.volumetric)
    .defaultSize(width: 0.6, height: 0.6, depth: 0.6, in: .meters)
    
    WindowGroup(id: ETHScenes.sphericalProjectionFlatCurves3.rawValue) {
      Model3D(named: ETHScenes.sphericalProjectionFlatCurves3.rawValue, bundle: eTHAssetsBundle)
        .scaleEffect(x: 5, y: 5, z: 5, anchor: .back)
    }
    .windowStyle(.volumetric)
    .defaultSize(width: 0.55, height: 0.55, depth: 0.55, in: .meters)
    
    WindowGroup(id: ETHScenes.surfaceDegree4With4DoubleCircles.rawValue) {
      Model3D(named: ETHScenes.surfaceDegree4With4DoubleCircles.rawValue, bundle: eTHAssetsBundle)
        .scaleEffect(x: 5, y: 5, z: 5, anchor: .back)
    }
    .windowStyle(.volumetric)
    .defaultSize(width: 0.55, height: 0.55, depth: 0.55, in: .meters)
    
    WindowGroup(id: ETHScenes.torusGeodeticAsymptotiCurves.rawValue) {
      ZStack {
        Model3D(named: ETHScenes.torusGeodeticAsymptotiCurves.rawValue, bundle: eTHAssetsBundle)
          .scaleEffect(x: 5, y: 5, z: 5, anchor: .back)
        
        Text(ETHScenes.torusGeodeticAsymptotiCurves.rawValue)
          .padding(16)
          .glassBackgroundEffect(in: .capsule)
        // .alignmentGuide(.labelGuide) { context in
        //   context[HorizontalAlignment.center]
        // }
          .offset(z: 1000)
          .offset(y: 100)
      }
    }
    .windowStyle(.volumetric)
    .defaultSize(width: 1, height: 0.4, depth: 1, in: .meters)
  }
}


// extension HorizontalAlignment {
//     /// A custom alignment to center the control panel under the globe.
//     private struct LabelAlignment: AlignmentID {
//         static func defaultValue(in context: ViewDimensions) -> CGFloat {
//             context[HorizontalAlignment.center]
//         }
//     }
//
//     /// A custom alignment guide to center the control panel under the globe.
//     static let labelGuide = HorizontalAlignment(
//         LabelAlignment.self
//     )
// }
