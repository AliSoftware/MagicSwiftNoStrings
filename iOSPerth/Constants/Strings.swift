// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

import Foundation

// ✍️ (8) Enums with associated values can also be handy to expect parameters associated with the constant
enum L10n {
  /// iOS Perth Meetup Demo
  case AppTitle
  /// Thanks Mate
  case OK
  /// ❌
  case Close
  /// G'day %@!
  case Greetings(String)
}

extension L10n: CustomStringConvertible {
  var description: String { return self.string }

  // ✍️ (9) Enums with associated values wan't have a rawValue too, so we have to switch
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

  // ✍️ (10) Little helper to call NSLocalizedString then use it as format when arguments are present
  private static func tr(key: String, _ args: CVarArgType...) -> String {
    let format = NSLocalizedString(key, comment: "")
    return String(format: format, locale: NSLocale.currentLocale(), arguments: args)
  }
}

func tr(key: L10n) -> String {
  return key.string
}

// ✍️ (11) All this allows multiple variants at the call site
//func test() {
//  let hi = L10n.Greetings("Perth").string
//  let title = tr(.AppTitle)
//  let hello = tr(.Greetings("You"))
//  print(L10n.Greetings("Mate"))
//}
