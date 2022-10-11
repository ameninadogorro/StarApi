//
//  Api.swift
//  StarApi
//
//  Created by Ana Raiany Guimarães Gomes on 2022-10-11.
//

import Foundation

class API{
    public static func pegaTodosPeople() async -> [People] {
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = "swapi.dev"
        urlComponents.path = "/api/people/"
        let url: URL = urlComponents.url!
        var urlRequest = URLRequest(url:url)
        
        urlRequest.httpMethod = "GET"
        urlRequest.allHTTPHeaderFields = [   //Consiguracao do Header e o tipo de conteudo
            "Content-Type" : "application/json"
        ]
        do {
            let (data, _) = try await URLSession.shared.data(for: urlRequest)
            // Cria a sessao e faz a requisicao
            let response  = try JSONDecoder().decode(Response.self, from: data)
            let characters = response.results
            // descodifica os dados da requisicao
            return characters
        } catch {
            print(error)
            return []
        }
        
    }
    
}
