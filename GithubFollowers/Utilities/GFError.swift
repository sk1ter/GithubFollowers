//
//  GFError.swift
//  GithubFollowers
//
//  Created by Javlonbek Sharipov on 06/03/24.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from server. Please try again."
    case invalidData = "The data received from server was invalid. Please try again."
}
