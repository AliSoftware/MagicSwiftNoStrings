//
//  Storyboards.swift
//  iOSPerth
//
//  Created by Olivier Halligon on 14/02/2016.
//  Copyright © 2016 AliSoftware. All rights reserved.
//

import UIKit

/**
 *  For ViewControllers being the initial Scene of a Storyboard
 */
protocol StoryboardBased {
  static var storyboard: UIStoryboard { get }
  static func instantiate() -> Self
}

// ✍️ (12) StoryboardBased is considered a "Mixin" as all the protocol's methods have a default implementation
extension StoryboardBased where Self: UIViewController {
  static var storyboard: UIStoryboard {
    return UIStoryboard(name: String(Self), bundle: NSBundle(forClass: Self.self))
  }
  static func instantiate() -> Self {
    return storyboard.instantiateInitialViewController() as! Self
  }
}


/**
 *  For ViewControllers being secondary Scenes of a Storyboard
 */
protocol StoryboardSceneBased {
  static var storyboard: UIStoryboard { get }
  static var sceneIdentifier: String { get }
  static func instantiate() -> Self
}

// ✍️ (17) StoryboardSceneBased expect us to provide the storyboard from which it originates
//         as it can't be guessed from the class name (no suitable default)
extension StoryboardSceneBased where Self: UIViewController {
  static var sceneIdentifier: String {
    return String(Self)
  }
  static func instantiate() -> Self {
    return storyboard.instantiateViewControllerWithIdentifier(sceneIdentifier) as! Self
  }
}
