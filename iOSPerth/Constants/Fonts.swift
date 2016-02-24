//
//  Fonts.swift
//  iOSPerth
//
//  Created by Olivier Halligon on 14/02/2016.
//  Copyright © 2016 AliSoftware. All rights reserved.
//

import UIKit

// ✍️ (1) Namespace your constants using structs
// ✍️ (2) You can create constants of any type
//        (unlike in ObjC, they don't have to be compile-time constants)

struct AppFonts {
  struct Gallery {
    static let Caption = UIFont.italicSystemFontOfSize(14)
    static let Author = UIFont.systemFontOfSize(12)
  }

  struct NewsArticle {
    static let Title = UIFont.boldSystemFontOfSize(16)
    static let Body = UIFont.systemFontOfSize(14)
    static let Footnote = UIFont.italicSystemFontOfSize(10)
  }
}


// label.font = AppFonts.Title
