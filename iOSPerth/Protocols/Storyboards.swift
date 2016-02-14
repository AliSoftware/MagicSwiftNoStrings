//
//  Storyboards.swift
//  iOSPerth
//
//  Created by Olivier Halligon on 14/02/2016.
//  Copyright © 2016 AliSoftware. All rights reserved.
//

import UIKit

protocol StoryboardBased {
  static var storyboard: UIStoryboard { get }
  static var sceneIdentifier: String? { get }
  static func instantiate() -> Self
}

extension StoryboardBased where Self: UIViewController {
  static var storyboard: UIStoryboard {
    return UIStoryboard(name: String(Self), bundle: NSBundle(forClass: Self.self))
  }
  static var sceneIdentifier: String? {
    return nil
  }
  static func instantiate() -> Self {
    if let identifier = sceneIdentifier {
      return storyboard.instantiateViewControllerWithIdentifier(identifier) as! Self
    } else {
      return storyboard.instantiateInitialViewController() as! Self
    }
  }
}
