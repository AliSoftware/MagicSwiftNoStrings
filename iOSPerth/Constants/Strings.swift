//
//  Strings.swift
//  iOSPerth
//
//  Created by Olivier Halligon on 14/02/2016.
//  Copyright © 2016 AliSoftware. All rights reserved.
//

import Foundation

enum L10n {
  case AppTitle
  case OK
  case Close
  case Greetings(String)
}

extension L10n: CustomStringConvertible {

  var string: String {
    switch self {
    case .AppTitle:
      return tr("AppTitle")
    case .OK:
      return tr("OK")
    case .Close:
      return tr("Close")
    case .Greetings(let p0):
      return tr("Greetings", p0)
    }
  }

  var description: String {
    return self.string
  }

  func tr(key: String, _ args: CVarArgType...) -> String {
    let format = NSLocalizedString(key, comment: "")
    return args.isEmpty ? format : String(format: format, arguments: args)
  }
}

extension String {
  init(_ l10n: L10n) {
    self.init(l10n.description)
  }
}

//func bar(){
//  print(L10n.Greetings("iOS Perth"))
//}
