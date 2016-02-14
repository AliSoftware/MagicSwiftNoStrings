//
//  Reusable.swift
//  iOSPerth
//
//  Created by Olivier Halligon on 14/02/2016.
//  Copyright © 2016 AliSoftware. All rights reserved.
//

import UIKit

protocol Reusable {
  var reuseIdentifier: String { get }
}

extension Reusable {
  var reuseIdentifier: String {
    return String(Self)
  }
}
