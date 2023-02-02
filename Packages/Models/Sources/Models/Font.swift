//
//  Font.swift
//  
//
//  Created by Greg Gardner on 2/2/23.
//

import Foundation
import SwiftUI

public enum FontState: Int, CaseIterable {
  case system
  case systemRounded
  case systemSerif
  case systemMono
  case custom

  @MainActor
  public var title: LocalizedStringKey {
    switch self {
    case .system:
      return "settings.display.font.system"
    case .systemRounded:
      return "settings.display.font.system-rounded"
    case .systemSerif:
      return "settings.display.font.system-serif"
    case .systemMono:
      return "settings.display.font.system-mono"
    case .custom:
      return "settings.display.font.custom"
    }
  }
  
  public var design: Font.Design {
    switch self {
      case .systemRounded:
        return .rounded
      case .systemSerif:
        return .serif
      case .systemMono:
        return .monospaced
      default:
        return .default
    }
  }
}
