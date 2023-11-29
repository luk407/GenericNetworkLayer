//
//  NetworkError.swift
//  
//
//  Created by Luka Gazdeliani on 29.11.23.
//

import Foundation

public enum NetworkError: Error {
    case data
    case response
    case status(code: Int, data: Data)
    case error(error: Error)
    case parse
    case decode(error: Error)
}
