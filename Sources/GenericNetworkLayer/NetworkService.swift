//
//  NetworkService.swift
//  
//
//  Created by Luka Gazdeliani on 29.11.23.
//

import Foundation

public protocol NetworkService {
    typealias Response<T> = (response: HTTPURLResponse, data: T)
    
    func request<T: Decodable>(with request: URL, handler: @escaping (Result<T, Error>) -> Void)
    
    func request(with request: URL, handler: @escaping (Result<Response<Data>, Error>) -> Void)
}
