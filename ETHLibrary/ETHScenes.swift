//
//  ETHScenes.swift
//  ETHLibrary
//
//  Created by Cristian Díaz on 21.12.23.
//

import Foundation

enum ETHScenes: String, CaseIterable {
  case dupinscheCyclide = "Dupinsche_Cyclide"
  case envelopeGeodeticLinesEllipsoid = "Envelope_geodetic_lines_on_ellipsoid"
  // case minimalSurfaceEnneper = "Minimal_Surface_of_Enneper" //FIXME: It looks like the model is too big.
  case polyhedronPenetration = "Polyhedron_Penetration"
  case sphericalProjectionFlatCurves1 = "Spherical_projection_of_flat_curves_1"
  case sphericalProjectionFlatCurves2 = "Spherical_projection_of_flat_curves_2"
  case sphericalProjectionFlatCurves3 = "Spherical_projection_of_flat_curves_3"
  case surfaceDegree4With4DoubleCircles = "Surface_of_Degree_4_with_4_Double_Circles"
  case torusGeodeticAsymptotiCurves = "Torus_with_geodetic_and_asymptotic_curves"
}
