//
//  Routes.swift
//  iOSPerth
//
//  Created by Olivier Halligon on 14/02/2016.
//  Copyright © 2016 AliSoftware. All rights reserved.
//

import Foundation

enum Route {
  case UserInfo(userID: Int)
  case AddShoppingItem(cartID: Int, productID: Int)
  case Help
}

extension Route {
  var path: String {
    switch self {
    case .UserInfo(let userID):
      return "/user/\(userID)"
    case .AddShoppingItem(let cartID, let productID):
      return "/cart/\(cartID)/add/\(productID)/"
    case .Help:
      return "/help"
    }
  }
}


extension Route {
  static var baseURL: NSURL?
  static var session = NSURLSession.sharedSession()

  var request: NSURLRequest {
    let url = NSURL(string: self.path, relativeToURL: Route.baseURL)!
    return NSURLRequest(URL: url)
  }

  enum Response {
    case Success(data: NSData, response: NSHTTPURLResponse)
    case Error(ErrorType)
  }

  func fetch(completion: Response -> Void) {
    Route.session.dataTaskWithRequest(self.request) { (data: NSData?, response: NSURLResponse?, error: NSError?) -> Void in
      if let error = error {
        return completion(Response.Error(error))
      }
      guard let data = data, response = response as? NSHTTPURLResponse else {
        return completion(Response.Error(NSURLError.BadServerResponse))
      }
      completion(Response.Success(data: data, response: response))
    }.resume()
  }
}
