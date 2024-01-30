//
//  APICaller.swift
//  CineMate
//
//  Created by Marco Puig on 10/27/23.
//

import OpenAISwift
import Foundation

final class APICaller {
    static let shared = APICaller()
    
    private init() {}
    
    static let key = "API-KEY-HERE"
    
    private var client: OpenAISwift?
    
    public func setup()
    {
        self.client = OpenAISwift(config: OpenAISwift.Config.makeDefaultOpenAI(apiKey: APICaller.key))
    }
    
    public func getResponce(input: String, completion: @escaping (Result<String, Error>) -> Void){
        client?.sendCompletion(with: input, maxTokens: 150, completionHandler: {result in 
            switch result {
            case .success(let model):
                let output = model.choices?.first?.text ?? ""
                completion(.success(output))
            case . failure(let error):
                completion(.failure(error))
        }})
    }
}
