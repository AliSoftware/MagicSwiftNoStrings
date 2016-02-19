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
  static func instantiate() -> Self
}

extension StoryboardBased where Self: UIViewController {
  static var storyboard: UIStoryboard {
    return UIStoryboard(name: String(Self), bundle: NSBundle(forClass: Self.self))
  }
  static func instantiate() -> Self {
    return storyboard.instantiateInitialViewController() as! Self
  }
}


protocol StoryboardSceneBased: StoryboardBased {
  static var sceneIdentifier: String { get }
}

extension StoryboardSceneBased where Self: UIViewController {
  static var sceneIdentifier: String {
    return String(Self)
  }
  static func instantiate() -> Self {
    return storyboard.instantiateViewControllerWithIdentifier(sceneIdentifier) as! Self
  }
}
