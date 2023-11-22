// Copyright © Rouven Strauss. MIT license.

// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
// !!! AUTO-GENERATED FILE. DO NOT EDIT MANUALLY. !!!
// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

import Foundation

public extension SFSymbol {
  enum Category: String, CaseIterable, Hashable {
    case accessibility
    case all
    case arrows
    case automotive
    case cameraAndPhotos
    case commerce
    case communication
    case connectivity
    case devices
    case editing
    case fitness
    case gaming
    case health
    case home
    case human
    case indices
    case keyboard
    case maths
    case media
    case multicolour
    case nature
    case objectsAndTools
    case privacyAndSecurity
    case shapes
    case textFormatting
    case time
    case transport
    case variable
    case weather
  }

  static let categories: [Category] = Category.allCases
}

public extension SFSymbol.Category {
  var symbols: [SFSymbol] {
    switch self {
    case .accessibility:
      return SFSymbol.accessibilitySymbols
    case .all:
      return SFSymbol.allSymbols
    case .arrows:
      return SFSymbol.arrowsSymbols
    case .automotive:
      return SFSymbol.automotiveSymbols
    case .cameraAndPhotos:
      return SFSymbol.cameraAndPhotosSymbols
    case .commerce:
      return SFSymbol.commerceSymbols
    case .communication:
      return SFSymbol.communicationSymbols
    case .connectivity:
      return SFSymbol.connectivitySymbols
    case .devices:
      return SFSymbol.devicesSymbols
    case .editing:
      return SFSymbol.editingSymbols
    case .fitness:
      return SFSymbol.fitnessSymbols
    case .gaming:
      return SFSymbol.gamingSymbols
    case .health:
      return SFSymbol.healthSymbols
    case .home:
      return SFSymbol.homeSymbols
    case .human:
      return SFSymbol.humanSymbols
    case .indices:
      return SFSymbol.indicesSymbols
    case .keyboard:
      return SFSymbol.keyboardSymbols
    case .maths:
      return SFSymbol.mathsSymbols
    case .media:
      return SFSymbol.mediaSymbols
    case .multicolour:
      return SFSymbol.multicolourSymbols
    case .nature:
      return SFSymbol.natureSymbols
    case .objectsAndTools:
      return SFSymbol.objectsAndToolsSymbols
    case .privacyAndSecurity:
      return SFSymbol.privacyAndSecuritySymbols
    case .shapes:
      return SFSymbol.shapesSymbols
    case .textFormatting:
      return SFSymbol.textFormattingSymbols
    case .time:
      return SFSymbol.timeSymbols
    case .transport:
      return SFSymbol.transportSymbols
    case .variable:
      return SFSymbol.variableSymbols
    case .weather:
      return SFSymbol.weatherSymbols
    }
  }
}
