//
//  ErrorMessage.swift
//  GitHub
//
//  Created by Даниил Статиев on 15.10.2020.
//

import Foundation

enum GFError: String, Error {
    
    case invalidUsername = "This username created an invalid reqest. Please try again."
    case unableToComplete = "Unable to complete your request. Please chek your internet connection."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data received from the server was invalid. Please try again."
    case unableToFavorite = "There was an error favoriting this user. Pleace try again."
    case alreadyInFavorites = "You'va already favorited this user. You must REALY like them!"

}
