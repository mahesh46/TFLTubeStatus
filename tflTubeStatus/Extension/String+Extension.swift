//
//  String+Extension.swift
//  tflTubeStatus
//
//  Created by mahesh lad on 07/11/2023.
//


import SwiftUI

extension String {
    var getColor :  Color? {
        switch self {
        case "Bakerloo": return Color.bakerLooLine
        case "Central": return Color.centralLine
        case "Circle": return Color.circileLine
        case "District": return Color.districtLine
        case "Hammersmith & City": return Color.hammersmithCityLine
        case "Jubilee": return Color.jubileeLine
        case "Metropolitan": return Color.metropolitanLine
        case "Northern": return Color.northernLine
        case "Piccadilly": return Color.piccadillyLine
        case "Victortia": return Color.victoriaLine
        case "Waterloo & City": return Color.waterlooCityLine
        default: return nil
        }
    }
}


