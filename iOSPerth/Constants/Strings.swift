// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

import Foundation

enum L10n {
  /// iOS Perth Meetup Demo
  case AppTitle
  /// Right-o
  case OK
  /// ❌
  case Close
  /// G'day %@!
  case Greetings(String)
}

extension L10n: CustomStringConvertible {
  var description: String { return self.string }

  var string: String {
    switch self {
      case .AppTitle:
        return L10n.tr("AppTitle")
      case .OK:
        return L10n.tr("OK")
      case .Close:
        return L10n.tr("Close")
      case .Greetings(let p0):
        return L10n.tr("Greetings", p0)
    }
  }

  private static func tr(key: String, _ args: CVarArgType...) -> String {
    let format = NSLocalizedString(key, comment: "")
    return String(format: format, locale: NSLocale.currentLocale(), arguments: args)
  }
}

func tr(key: L10n) -> String {
  return key.string
}
